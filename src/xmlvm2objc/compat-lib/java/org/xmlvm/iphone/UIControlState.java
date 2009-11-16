package org.xmlvm.iphone;

public class UIControlState {
    public static final int Normal              = 0;
    public static final int Highlighted         = 1 << 0;
    public static final int Disabled            = 1 << 1;
    public static final int Selected            = 1 << 2;
    public static final int ApplicationReserved = 0x00FF0000;
    public static final int Reserved            = 0xFF000000;
}
