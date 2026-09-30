// Headless: print name, bounds, ARM/Thumb, and decompiled C for each address in the script args.
// usage (analyzeHeadless ... -postScript DecompAt.java <out file> <addr hex> [<addr hex> ...])
import ghidra.app.script.GhidraScript;
import ghidra.app.decompiler.*;
import ghidra.program.model.address.*;
import ghidra.program.model.listing.*;
import ghidra.program.model.lang.Register;
import java.io.*;
import java.math.BigInteger;

public class DecompAt extends GhidraScript {
    @Override
    public void run() throws Exception {
        String[] args = getScriptArgs();
        PrintWriter out = new PrintWriter(new FileWriter(args[0]));
        DecompInterface di = new DecompInterface();
        di.openProgram(currentProgram);
        Register tmode = currentProgram.getRegister("TMode");
        for (int i = 1; i < args.length; i++) {
            Address a = toAddr(Long.parseLong(args[i], 16));
            Function f = getFunctionContaining(a);
            if (f == null) { out.println("// no function at " + a); continue; }
            BigInteger t = tmode == null ? null : currentProgram.getProgramContext().getValue(tmode, f.getEntryPoint(), false);
            AddressSetView body = f.getBody();
            out.printf("// %s @ %s..%s  %s  callers=%d%n", f.getName(), body.getMinAddress(), body.getMaxAddress(),
                t != null && t.intValue() == 1 ? "THUMB" : "ARM", f.getSymbol().getReferenceCount());
            for (Function c : f.getCalledFunctions(monitor)) out.println("//   calls " + c.getName() + " @ " + c.getEntryPoint());
            DecompileResults r = di.decompileFunction(f, 60, monitor);
            out.println(r.decompileCompleted() ? r.getDecompiledFunction().getC() : "// decompile failed: " + r.getErrorMessage());
        }
        out.close();
    }
}
