/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.iphone.internal;

import java.awt.Color;
import java.awt.Container;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

import javax.swing.JFrame;
import javax.swing.WindowConstants;

public class SimulatorDesktop {

    private JFrame    window;
    private Container contentPane;


    public SimulatorDesktop() {
        Simulator.initialized = true;
        MicroHTTPServer.start();
        window = new JFrame("iPhone Simulator");
        window.addWindowListener(new WindowAdapter() {

            @Override
            public void windowClosed(WindowEvent e) {
                try {
                    if (org.lwjgl.opengl.Display.isCreated()) {
                        org.lwjgl.opengl.Display.destroy();
                    }
                } catch (Throwable t) {
                    // Ignore
                }
                System.exit(0);
            }

            @Override
            public void windowClosing(WindowEvent e) {
                try {
                    if (org.lwjgl.opengl.Display.isCreated()) {
                        org.lwjgl.opengl.Display.destroy();
                    }
                } catch (Throwable t) {
                    // Ignore
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
