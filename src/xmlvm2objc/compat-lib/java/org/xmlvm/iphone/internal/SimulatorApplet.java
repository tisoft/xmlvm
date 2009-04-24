
package org.xmlvm.iphone.internal;

import java.awt.Color;

import javax.swing.JPanel;
import javax.swing.JApplet;



public class SimulatorApplet
    extends JApplet
{

    private JPanel jContentPane = null;
    private Thread applThread;  //  @jve:decl-index=0:



    /**
     * This is the xxx default constructor
     */
    public SimulatorApplet()
    {
        super();
        Simulator.initialized = true;
    }



    /**
     * This method initializes this
     * 
     * @return void
     */
    public void init()
    {
        this.setSize(580, 750);
        this.setBackground(Color.WHITE);
        this.setLayout(null);
        this.setContentPane(getJContentPane());
    }


    public void start()
    {
        String appl = getParameter("appl");
        String androidClassName = getParameter("androidClassName");
        applThread = new Thread(new Application(appl,androidClassName));
        applThread.start();
    }

    /**
     * This method initializes jContentPane
     * 
     * @return javax.swing.JPanel
     */
    private JPanel getJContentPane()
    {
        if (jContentPane == null) {
            jContentPane = new SimulatorGUI(new ImageLoader());
        }
        return jContentPane;
    }

}
