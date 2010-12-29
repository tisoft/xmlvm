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

package org.xmlvm.demo.java.photovm.ui;

import java.awt.Component;
import java.awt.Dimension;
import java.awt.Panel;
import java.awt.Rectangle;
import java.net.URL;

import javax.swing.ImageIcon;
import javax.swing.JLabel;

public class ImagePanel extends Panel {
  private JLabel backgroundLabel = new JLabel("...");

  public ImagePanel(final URL url, int width, int height) {
    add(backgroundLabel, 0);
    backgroundLabel.setSize(width, height);
    setSize(width, height);
    setPreferredSize(new Dimension(width, height));
    Runnable r = new Runnable() {
      public void run() {
        init(new ImageIcon(url));
      }
    };
    (new Thread(r)).start();
  }

  public ImagePanel(String fileName) {
    init(new ImageIcon(fileName));
  }

  private void init(ImageIcon backgroundIcon) {
    removeAll();
    backgroundLabel = new JLabel(backgroundIcon);
    backgroundLabel.setBounds(0, 0, backgroundIcon.getIconWidth(),
        backgroundIcon.getIconHeight());
    this.add(backgroundLabel, 0);
    validate();
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
