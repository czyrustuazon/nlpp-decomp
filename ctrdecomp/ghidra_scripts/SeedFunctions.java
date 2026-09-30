// Headless: create functions Ghidra's auto-analysis missed in a raw 3DS code.bin (base 0).
//  1. Pointers: every aligned word in the non-executable blocks whose value is a .text VA
//     (vtables, callback tables). Odd values are Thumb entries.
//  2. Prologues: ARM `push {..., lr}` (0xE92D4xxx) at a word boundary not inside a function.
// Each seed is disassembled and turned into a function; seeds inside existing functions are skipped.
// usage (analyzeHeadless ... -process -postScript SeedFunctions.java <load_base_hex> <text_end_hex>)
import ghidra.app.cmd.disassemble.DisassembleCommand;
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.address.AddressSet;
import ghidra.program.model.lang.Register;
import ghidra.program.model.listing.*;
import ghidra.program.model.mem.*;
import java.math.BigInteger;
import java.util.TreeMap;

public class SeedFunctions extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        long base = Long.parseLong(args[0], 16);
        long textEnd = Long.parseLong(args[1], 16);
        Memory mem = currentProgram.getMemory();
        Listing listing = currentProgram.getListing();
        Register tmode = currentProgram.getRegister("TMode");

        TreeMap<Long, Boolean> seeds = new TreeMap<>();   // offset -> thumb
        for (MemoryBlock b : mem.getBlocks()) {
            if (b.isExecute()) continue;
            long start = b.getStart().getOffset(), end = b.getEnd().getOffset();
            for (long o = (start + 3) & ~3; o + 4 <= end + 1; o += 4) {
                long v = mem.getInt(toAddr(o)) & 0xFFFFFFFFL;
                long t = v - base;
                if (v < base || t >= textEnd) continue;
                boolean thumb = (t & 1) == 1;
                if (!thumb && (t & 3) != 0) continue;
                seeds.put(t & ~1L, thumb);
            }
        }
        int ptrSeeds = seeds.size();
        for (long o = 0; o + 4 <= textEnd; o += 4) {
            Address a = toAddr(o);
            if (listing.getFunctionContaining(a) != null) continue;
            int w = mem.getInt(a);
            if ((w & 0xFFFF4000) == 0xE92D4000) seeds.putIfAbsent(o, false);
        }
        println("SeedFunctions: " + ptrSeeds + " pointer seeds, " + (seeds.size() - ptrSeeds) + " prologue seeds");

        int created = 0, skipped = 0, failed = 0, conflicts = 0;
        for (var e : seeds.entrySet()) {
            if (monitor.isCancelled()) break;
            Address a = toAddr(e.getKey());
            if (listing.getFunctionContaining(a) != null) { skipped++; continue; }
            Instruction ins = listing.getInstructionAt(a);
            if (ins == null) {
                if (listing.getDefinedDataContaining(a) != null) { skipped++; continue; }
                if (tmode != null) {
                    try {
                        currentProgram.getProgramContext().setValue(tmode, a, a,
                            e.getValue() ? BigInteger.ONE : BigInteger.ZERO);
                    } catch (ContextChangeException x) {
                        conflicts++;   // overlaps instructions already decoded in the other mode
                        continue;
                    }
                }
                DisassembleCommand cmd = new DisassembleCommand(a, null, true);
                if (!cmd.applyTo(currentProgram, monitor) || listing.getInstructionAt(a) == null) { failed++; continue; }
            }
            if (createFunction(a, null) != null) created++; else failed++;
        }
        println("SeedFunctions: created " + created + ", skipped " + skipped + ", failed " + failed
            + ", mode conflicts " + conflicts);
    }
}
