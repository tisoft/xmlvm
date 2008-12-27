/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package org.xmlvm.demo.java.photovm;

import org.xmlvm.demo.java.photovm.ui.MainPanel;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Frame;
import java.awt.event.WindowAdapter;
import java.awt.event.WindowEvent;

/**
 * Main class of the application with some basic wiring.
 * 
 * @author haeberling@google.com (Sascha Haeberling)
 * 
 */
public class PhotoVM extends Frame {
  private static final long serialVersionUID = 1L;

  public static void main(String[] args) {
    new PhotoVM();
  }

  public PhotoVM() {
    setTitle("PhotoVM");
    setBackground(Color.BLACK);
    setSize(1000, 600);
    setLayout(new BorderLayout());
    add(new MainPanel(), BorderLayout.CENTER);
    this.addWindowListener(new WindowAdapter() {
      @Override
      public void windowClosing(WindowEvent e) {
        System.exit(0);
      }
    });
    this.setVisible(true);
  }
}
