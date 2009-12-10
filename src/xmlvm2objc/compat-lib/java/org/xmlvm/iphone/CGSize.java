package org.xmlvm.iphone;

public class CGSize {

    public float width;
    public float height;

    public CGSize(CGSize size) {
        width = size.width;
        height = size.height;
    }

    public CGSize(float width, float height) {
        this.width = width;
        this.height = height;
    }

    public String toString() {
        return "[" + width + "," + height + "]";
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof CGSize)) {
            return false;
        }

        CGSize size = (CGSize) obj;
        return size.width == this.width && size.height == this.height;
    }
}
