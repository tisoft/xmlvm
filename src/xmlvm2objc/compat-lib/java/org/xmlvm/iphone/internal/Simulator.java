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

import java.awt.Component;
import java.awt.Dimension;
import java.awt.geom.AffineTransform;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.iphone.UIInterfaceOrientation;
import org.xmlvm.iphone.UIView;

@XMLVMIgnore
public class Simulator {

    static public boolean       initialized = false;
    static private SimulatorGUI simulatorGUI;
    static private Component    rootWindow;


    private Simulator() {
    }

    static public void setGUI(SimulatorGUI gui) {
        simulatorGUI = gui;
    }

    static public SimulatorGUI getGUI() {
        return simulatorGUI;
    }

    static public ImageLoader getImageLoader() {
        return simulatorGUI.getImageLoader();
    }

    static public void redrawDisplay() {
        simulatorGUI.redrawDisplay();
    }

    public static void redrawDisplay(int x, int y, int width, int height) {
        simulatorGUI.redrawDisplay(x, y, width, height);
    }

    static public void addGestureListener(GestureListener listener) {
        simulatorGUI.addGestureListener(listener);
    }

    static public void addKeyListener(UIView listener) {
        simulatorGUI.addKeyListener(listener);
    }

    static public float getStatusBarHeight() {
        return simulatorGUI.getStatusBarHeight();
    }

    static public void setStatusBarHidden(boolean flag) {
        simulatorGUI.getStatusBar().setHidden(flag);
    }

    public static Display getDisplay() {
        return simulatorGUI.getDisplay();
    }

    static public void setAccelerated(double x, double y, double z) {
        simulatorGUI.setAccelerated(x, y, z);
    }

    public static void setStatusBarOrientation(int orientation) {
        simulatorGUI.getStatusBar().setStatusBarOrientation(orientation);
        Dimension frameSize = null;
        AffineTransform deviceTransform = new AffineTransform();

        switch (orientation) {
        case UIInterfaceOrientation.Portrait:
            frameSize = new Dimension(580, 750);
            break;

        case UIInterfaceOrientation.LandscapeRight:
            frameSize = new Dimension(883, 455);
            deviceTransform.rotate((float) ((Math.PI / 180) * 90), 580 / 2, 750 / 2);
            deviceTransform.translate(-80, -34);
            break;

        case UIInterfaceOrientation.LandscapeLeft:
            frameSize = new Dimension(883, 455);
            deviceTransform.rotate((float) ((Math.PI / 180) * -90), 580 / 2, 750 / 2);
            deviceTransform.translate(270, 90);
            break;

        case UIInterfaceOrientation.PortraitUpsideDown:
            frameSize = new Dimension(580, 750);
            frameSize = new Dimension(580, 750);
            deviceTransform.rotate((float) ((Math.PI / 180) * 180), 580 / 2, 750 / 2);
            deviceTransform.translate(190, 55);
            break;
        }

        rootWindow.setSize(frameSize);
        simulatorGUI.updateSize(frameSize, deviceTransform);
    }

    public static int getStatusBarOrientation() {
        return simulatorGUI.getStatusBar().getStatusBarOrientation();
    }

    public static Component getRootWindow() {
        return rootWindow;
    }

    public static void setRootWindow(Component rootWindow) {
        Simulator.rootWindow = rootWindow;
    }
}
