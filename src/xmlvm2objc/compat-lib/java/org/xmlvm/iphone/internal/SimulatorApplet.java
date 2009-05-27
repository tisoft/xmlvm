package org.xmlvm.iphone.internal;

import java.awt.Color;

import javax.swing.JPanel;
import javax.swing.JApplet;

/**
 * The SimulatorApplet is an applet that uses our Simuator to run iPhone
 * applications.
 */
public class SimulatorApplet extends JApplet {

    private JPanel jContentPane = null;
    private Thread applThread;

    public SimulatorApplet() {
        super();
        Simulator.initialized = true;
    }

    @Override
    public void init() {
        this.setSize(580, 750);
        this.setBackground(Color.WHITE);
        this.setLayout(null);
        this.setContentPane(getJContentPane());
    }

    @Override
    public void start() {
        String appl = getParameter("appl");
        String androidClassName = getParameter("androidClassName");
        applThread = new Thread(new Application(appl, androidClassName));
        applThread.start();
    }

    /**
     * Returns the jContentPane singleton that is used by the simulator to draw
     * the UI.
     */
    private JPanel getJContentPane() {
        if (jContentPane == null) {
            jContentPane = new SimulatorGUI(this, new ImageLoader());
        }
        return jContentPane;
    }

}
