package android.view;

/**
 * <i>(XMLVM Compatibility Class)</i>
 * <p>
 * Object used to report movement (mouse, pen, finger, trackball) events. This
 * class may hold either absolute or relative movements, depending on what it is
 * being used for.
 */
public class MotionEvent {
    public static final int ACTION_DOWN   = 0;
    public static final int ACTION_UP     = 1;
    public static final int ACTION_MOVE   = 2;
    public static final int ACTION_CANCEL = 3;

    private int             action;
    private float           x;
    private float           y;

    public MotionEvent(int action, int x, int y) {
        this.action = action;
    }

    /**
     * Return the kind of action being performed.
     */
    public final int getAction() {
        return action;
    }

    /**
     * Returns the X coordinate of this event. Whole numbers are pixels; the
     * value may have a fraction for input devices that are sub-pixel precise.
     */
    public final float getX() {
        return x;
    }

    /**
     * Returns the Y coordinate of this event. Whole numbers are pixels; the
     * value may have a fraction for input devices that are sub-pixel precise.
     */
    public final float getY() {
        return y;
    }
}
