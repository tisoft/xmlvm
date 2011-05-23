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

import javax.swing.JApplet;
import javax.swing.JPanel;

import org.xmlvm.XMLVMIgnore;

/**
 * The SimulatorApplet is an applet that uses our Simulator to run iPhone
 * applications.
 */
@XMLVMIgnore
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
