
package org.xmlvm.client;

import java.awt.event.ActionListener;
import java.util.ArrayList;
import java.util.List;



public class Timer
    extends Thread
{

    private List<ActionListener> listeners = new ArrayList<ActionListener>();
    private int                  millis;
    private boolean              repeating = true;



    public void run()
    {
        while (repeating && !isInterrupted()) {
            try {
                sleep(millis);
            }
            catch (InterruptedException e) {
                this.interrupt();
            }
            for (ActionListener listener : listeners) {
                listener.actionPerformed(null);
            }
        }
    }



    public void addActionListener(ActionListener listener)
    {
        this.listeners.add(listener);
    }



    public void runOnce(int millis)
    {
        this.millis = millis;
        repeating = false;
        start();
    }



    public void runRepeating(int millis)
    {
        this.millis = millis;
        repeating = true;
        start();
    }
}
