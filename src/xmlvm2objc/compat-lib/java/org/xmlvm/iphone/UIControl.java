package org.xmlvm.iphone;

public class UIControl extends UIView {

    public static final int UIControlEventTouchDown           = 1 << 0;
    public static final int UIControlEventTouchDownRepeat     = 1 << 1;
    public static final int UIControlEventTouchDragInside     = 1 << 2;
    public static final int UIControlEventTouchDragOutside    = 1 << 3;
    public static final int UIControlEventTouchDragEnter      = 1 << 4;
    public static final int UIControlEventTouchDragExit       = 1 << 5;
    public static final int UIControlEventTouchUpInside       = 1 << 6;
    public static final int UIControlEventTouchUpOutside      = 1 << 7;
    public static final int UIControlEventTouchCancel         = 1 << 8;

    public static final int UIControlEventValueChanged        = 1 << 12;

    public static final int UIControlEventEditingDidBegin     = 1 << 16;
    public static final int UIControlEventEditingChanged      = 1 << 17;
    public static final int UIControlEventEditingDidEnd       = 1 << 18;
    public static final int UIControlEventEditingDidEndOnExit = 1 << 19;

    public static final int UIControlEventAllTouchEvents      = 0x00000FFF;
    public static final int UIControlEventAllEditingEvents    = 0x000F0000;
    public static final int UIControlEventApplicationReserved = 0x0F000000;
    public static final int UIControlEventSystemReserved      = 0xF0000000;
    public static final int UIControlEventAllEvents           = 0xFFFFFFFF;

    public UIControl() {
        super(new CGRect(0, 0, 0, 0));
    }

    public UIControl(CGRect rect) {
        super(rect);
    }

    public void addTarget(UIControlDelegate delegate, int controlEvents) {

    }
}
