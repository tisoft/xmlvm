package org.xmlvm.util.analytics;

/**
 * A simple pair implementation.
 * 
 * @param <T1>
 *            type of the first element
 * @param <T2>
 *            type of the second element
 */
public class Pair<T1, T2> {
    public final T1 first;
    public final T2 second;


    public Pair(T1 first, T2 second) {
        this.first = first;
        this.second = second;
    }
}
