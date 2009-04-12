package org.xmlvm.iphone;

public class CGAffineTransform {

    public static final int  ROTATE    = 0;
    public static final int  TRANSLATE = 1;

    public int               type;
    public float             alpha;
    public float             tx;
    public float             ty;

    public CGAffineTransform next;
    public CGAffineTransform tail;

    private CGAffineTransform() {
        next = null;
        tail = this;
    }

    public static CGAffineTransform makeRotation(float alpha) {
        CGAffineTransform trans = new CGAffineTransform();
        trans.type = ROTATE;
        trans.alpha = alpha;
        return trans;
    }

    public void translate(float x, float y) {
        CGAffineTransform n = new CGAffineTransform();
        n.type = TRANSLATE;
        n.tx = x;
        n.ty = y;
        this.tail.next = n;
        this.tail = n;
    }

}
