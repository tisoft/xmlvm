package org.xmlvm.ios;

public class Reference<T> {

    private Object[] reference;

    public Reference() {
        this(1);
    }

    public Reference(int size) {
        this.reference = new Object[size];
    }

    public Reference(T... reference) {
        this.reference = reference;
    }

    @SuppressWarnings("unchecked")
    public T get() {
        return (T) reference[0];
    }

    public void set(T reference) {
        this.reference[0] = reference;
    }

    @SuppressWarnings("unchecked")
    public T get(int index) {
        return (T) reference[index];
    }

    public void set(int index, T reference) {
        this.reference[index] = reference;
    }

    public int length() {
        return reference.length;
    }
}
