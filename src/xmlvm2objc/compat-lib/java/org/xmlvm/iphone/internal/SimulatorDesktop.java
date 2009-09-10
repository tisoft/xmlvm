
package org.xmlvm.iphone.internal;

import java.awt.Color;
import java.awt.Container;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

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
        window.addWindowListener(new WindowAdapter() {

			@Override
			public void windowClosed(WindowEvent e) {
				if (org.lwjgl.opengl.Display.isCreated()) {
					org.lwjgl.opengl.Display.destroy();
				}
				System.exit(0);
			}

			@Override
			public void windowClosing(WindowEvent e) {
				if (org.lwjgl.opengl.Display.isCreated()) {
					org.lwjgl.opengl.Display.destroy();
				}
				System.exit(0);
			}
        });
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
