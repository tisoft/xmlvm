package android.content;

public interface DialogInterface {
    
    public static final int BUTTON1 = -1;
    public static final int BUTTON2 = -2;
    public static final int BUTTON3 = -3;

    public interface OnClickListener {
        public abstract void onClick(DialogInterface dialog, int which);
    }
}
