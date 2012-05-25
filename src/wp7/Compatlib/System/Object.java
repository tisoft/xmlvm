package Compatlib.System;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class Object {

    public String ToString() {
        return new String(this.toString());
    }

    /**
     * @param string
     * @return
     */
    public boolean Equals(Object obj) {
        // TODO Auto-generated method stub
        return false;
    }

}