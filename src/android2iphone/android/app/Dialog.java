package android.app;

import android.internal.Assert;
import android.os.Message;

public class Dialog {
    public void show() {
        // TODO Implement.
    }

    public void dismiss() {
        // TODO Implement
    }
    
    public boolean isShowing() {
        Assert.NOT_IMPLEMENTED();
        return false;
    }
    
    public void setCancelMessage(Message msg) {
        Assert.NOT_IMPLEMENTED();
    }
}
