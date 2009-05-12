package org.xmlvm.asokoban;

/**
 * Classes implementing this interface can be called when something closes.
 */
public interface OnCloseHandler {
    /**
     * Something closed.
     */
    public void onClose();
}
