package android.content;

public interface DialogInterface {

    public interface OnClickListener {
        public abstract void onClick(DialogInterface dialog, int which);
    }
}
