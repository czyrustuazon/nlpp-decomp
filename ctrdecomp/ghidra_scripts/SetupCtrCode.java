// Headless pre-script for a raw 3DS code.bin imported at base 0 (file offsets).
// Splits the image into .text / .rodata / .data blocks from the exheader layout, marks only
// .text executable, and enables ARM's aggressive instruction finder so more functions are found.
// usage (analyzeHeadless ... -import code.bin -preScript SetupCtrCode.java <rodata_off_hex> <data_off_hex>)
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.Address;
import ghidra.program.model.mem.Memory;
import ghidra.program.model.mem.MemoryBlock;

public class SetupCtrCode extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        long rodata = Long.parseLong(args[0], 16);
        long data = Long.parseLong(args[1], 16);
        Memory mem = currentProgram.getMemory();
        MemoryBlock all = mem.getBlocks()[0];
        mem.split(all, toAddr(rodata));
        MemoryBlock ro = mem.getBlock(toAddr(rodata));
        mem.split(ro, toAddr(data));
        MemoryBlock text = mem.getBlock(toAddr(0));
        MemoryBlock rw = mem.getBlock(toAddr(data));
        ro = mem.getBlock(toAddr(rodata));
        text.setName(".text");  text.setExecute(true);  text.setWrite(false);
        ro.setName(".rodata");  ro.setExecute(false);   ro.setWrite(false);
        rw.setName(".data");    rw.setExecute(false);   rw.setWrite(true);
        setAnalysisOption(currentProgram, "ARM Aggressive Instruction Finder", "true");
        println("SetupCtrCode: .text 0-" + Long.toHexString(rodata) + ", .rodata, .data at " + Long.toHexString(data));
    }
}
