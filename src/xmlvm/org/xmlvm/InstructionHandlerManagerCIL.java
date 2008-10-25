
package org.xmlvm;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

//import org.apache.bcel.generic.BranchInstruction;
import edu.arizona.cs.mbel.instructions.BranchInstruction;
//import org.apache.bcel.generic.GOTO;
import edu.arizona.cs.mbel.instructions.JMP;
//import org.apache.bcel.generic.Instruction;
import edu.arizona.cs.mbel.instructions.Instruction;
//import org.apache.bcel.generic.InstructionHandle;
import edu.arizona.cs.mbel.instructions.InstructionHandle;
//import org.apache.bcel.generic.InstructionList;
import edu.arizona.cs.mbel.instructions.InstructionList;


public class InstructionHandlerManagerCIL
{

    private InstructionList                       il;
    private int                                   currentID;
    private Map<Integer, InstructionHandle>       mapID2InstructionHandle;
    private Map<Integer, List<BranchInstruction>> mapID2BranchInstructions;



    public InstructionHandlerManagerCIL(InstructionList il)
    {
        this.il = il;
        currentID = -1;
        mapID2InstructionHandle = new HashMap<Integer, InstructionHandle>();
        mapID2BranchInstructions = new HashMap<Integer, List<BranchInstruction>>();
    }



    public void setLabelID(int id)
        throws IllegalXMLVMException
    {
        if (currentID != -1)
            throw new IllegalXMLVMException("setLabelID: " + id);
        currentID = id;
    }



    public void registerInstructionHandle(InstructionHandle ih)
    {
        if (currentID == -1)
            return;
        mapID2InstructionHandle.put(currentID, ih);
        List<BranchInstruction> l = mapID2BranchInstructions.get(currentID);
        if (l != null) {
            // We encountered some branch instructions earlier before we
            // registered this instruction handle
            for (BranchInstruction bi : l) {
                bi.setTargetHandle(ih);
            }
            mapID2BranchInstructions.remove(currentID);
        }
        currentID = -1;
    }



    public void registerBranchInstruction(BranchInstruction g, int id)
    {
        InstructionHandle ih = mapID2InstructionHandle.get(id);
        if (ih != null) {
            // Instruction handle was registered before
            g.setTargetHandle(ih);
            return;
        }
        // We haven't seen the instruction handle yet. Remember this branch
        // instruction
        List<BranchInstruction> l = mapID2BranchInstructions.get(id);
        if (l == null)
            l = new ArrayList<BranchInstruction>();
        l.add(g);
        mapID2BranchInstructions.put(id, l);
    }



    public void checkConsistency()
    {
        // At the end of processing the byte code of a method,
        // mapID2BranchInstructions
        // should be empty.
        if (mapID2BranchInstructions.size() != 0) {
            System.err.println("Following label IDs could not be resolved: "
                    + mapID2BranchInstructions.keySet());;
            System.exit(-1);
        }
    }
}
