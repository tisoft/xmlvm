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
