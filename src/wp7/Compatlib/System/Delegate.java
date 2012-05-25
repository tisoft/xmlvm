package Compatlib.System;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class Delegate

{
    @XMLVMIgnore
    public static Delegate Combine(Delegate a, Delegate b) throws Exception {
        if (a == null) {
            if (b == null)
                return null;
            return b;
        } else if (b == null)
            return a;

        return a.CombineImpl(b);
    }

    @XMLVMIgnore
    public static Delegate Remove(Delegate a, Delegate b) throws Exception {
        if (a == null) {
            if (b == null)
                return null;
            return b;
        } else if (b == null)
            return a;

        return a.RemoveImpl(b);
    }

    @XMLVMIgnore
    protected Delegate RemoveImpl(Delegate d) throws Exception {
        throw new Exception("Not implemented");
    }

    @XMLVMIgnore
    protected Delegate CombineImpl(Delegate d) throws Exception {
        throw new Exception("Not implemented");
    }
}
