
package org.xmlvm.iphone.internal;

import java.awt.Color;
import java.awt.Container;

import javax.swing.JFrame;
import javax.swing.WindowConstants;



public class SimulatorDesktop
{

    private JFrame    window;
    private Container contentPane;



    public SimulatorDesktop()
    {
        Simulator.initialized = true;
        MicroHTTPServer.start();
        window = new JFrame("iPhone Simulator");
        window.setDefaultCloseOperation(WindowConstants.EXIT_ON_CLOSE);
        window.setSize(580, 750);
        window.setResizable(false);
        window.setBackground(Color.WHITE);
        window.setLayout(null);
        contentPane = window.getContentPane();
        contentPane.setLayout(null);
        contentPane.setSize(580, 750);
        SimulatorGUI gui = new SimulatorGUI(window, new ImageLoader());
        contentPane.add(gui);
        window.setVisible(true);
    }
}
