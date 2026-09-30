// Headless: write every function as CSV  name,start_hex,size_hex,mode,ranges,end_hex
// size = the contiguous address range that holds the entry point; ranges > 1 means Ghidra
// gave the function a split body: usually code continuing after a mid-function literal pool,
// sometimes a shared tail. end = one past the highest body address.
// Addresses are in the program's own space (image base as loaded). Skips external/thunk entries.
// usage (analyzeHeadless ... -postScript ExportFunctions.java <out.csv>)
import ghidra.app.script.GhidraScript;
import ghidra.program.model.address.AddressRange;
import ghidra.program.model.address.AddressSetView;
import ghidra.program.model.lang.Register;
import ghidra.program.model.listing.*;
import java.io.*;
import java.math.BigInteger;

public class ExportFunctions extends GhidraScript {
    @Override
    public void run() throws Exception {
        PrintWriter out = new PrintWriter(new FileWriter(getScriptArgs()[0]));
        Register tmode = currentProgram.getRegister("TMode");
        out.println("name,start,size,mode,ranges,end");
        for (Function f : currentProgram.getFunctionManager().getFunctions(true)) {
            if (f.isExternal() || f.isThunk()) continue;
            AddressSetView body = f.getBody();
            long start = f.getEntryPoint().getOffset();
            AddressRange r = body.getRangeContaining(f.getEntryPoint());
            long size = r == null ? 0 : r.getMaxAddress().getOffset() - start + 1;
            BigInteger t = tmode == null ? null
                : currentProgram.getProgramContext().getValue(tmode, f.getEntryPoint(), false);
            out.printf("%s,%x,%x,%s,%d,%x%n", f.getName(), start, size,
                t != null && t.intValue() == 1 ? "THUMB" : "ARM", body.getNumAddressRanges(),
                body.getMaxAddress().getOffset() + 1);
        }
        out.close();
    }
}
