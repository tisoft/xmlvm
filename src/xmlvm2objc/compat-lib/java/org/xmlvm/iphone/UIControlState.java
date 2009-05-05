package org.xmlvm.iphone;

public class UIControlState {
    public static final int UIControlStateNormal              = 0;
    public static final int UIControlStateHighlighted         = 1 << 0;
    public static final int UIControlStateDisabled            = 1 << 1;
    public static final int UIControlStateSelected            = 1 << 2;
    public static final int UIControlStateApplicationReserved = 0x00FF0000;
    public static final int UIControlStateReserved            = 0xFF000000;
}
