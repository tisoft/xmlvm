
package org.xmlvm.iphone;

/**
 * 
 * @author teras
 */
public class UIControlEvent {

    public static final int TouchDown           = 1 << 0;
    public static final int TouchDownRepeat     = 1 << 1;
    public static final int TouchDragInside     = 1 << 2;
    public static final int TouchDragOutside    = 1 << 3;
    public static final int TouchDragEnter      = 1 << 4;
    public static final int TouchDragExit       = 1 << 5;
    public static final int TouchUpInside       = 1 << 6;
    public static final int TouchUpOutside      = 1 << 7;
    public static final int TouchCancel         = 1 << 8;
    public static final int ValueChanged        = 1 << 12;
    public static final int EditingDidBegin     = 1 << 16;
    public static final int EditingChanged      = 1 << 17;
    public static final int EditingDidEnd       = 1 << 18;
    public static final int EditingDidEndOnExit = 1 << 19;
    public static final int AllTouchEvents      = 0x00000FFF;
    public static final int AllEditingEvents    = 0x000F0000;
    public static final int ApplicationReserved = 0x0F000000;
    public static final int SystemReserved      = 0xF0000000;
    public static final int AllEvents           = 0xFFFFFFFF;
}
