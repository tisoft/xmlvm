/*
 * XML11 --- An Abstract Windowing Protocol Copyright (c) 2004-2005 by The XML11
 * Team
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
 * For more information, visit the XML11 Home Page at http://www.xml11.org/
 */

package org.xmlvm.demo.java.photovm.ui;

import java.awt.Component;
import java.awt.Panel;
import java.awt.Rectangle;
import java.net.URL;

import javax.swing.ImageIcon;
import javax.swing.JLabel;

public class ImagePanel extends Panel {
  private JLabel backgroundLabel;

  public ImagePanel(URL url) {
    init(new ImageIcon(url));
  }

  public ImagePanel(String fileName) {
    init(new ImageIcon(fileName));
  }

  private void init(ImageIcon backgroundIcon) {
    backgroundLabel = new JLabel(backgroundIcon);
    backgroundLabel.setBounds(0, 0, backgroundIcon.getIconWidth(),
        backgroundIcon.getIconHeight());
    this.add(backgroundLabel, 0);
  }

  @Override
  public Component add(Component comp) {
    return super.add(comp, 1);
  }

  @Override
  public void setBounds(int x, int y, int width, int height) {
    backgroundLabel.setBounds(0, 0, width, height);
    super.setBounds(x, y, width, height);
  }

  @Override
  public void setBounds(Rectangle r) {
    setBounds(r.x, r.y, r.width, r.height);
  }
}