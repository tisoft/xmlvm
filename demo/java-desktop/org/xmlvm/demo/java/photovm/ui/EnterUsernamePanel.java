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

import org.xmlvm.demo.java.photovm.event.UpdateAlbumsListener;
import org.xmlvm.demo.java.photovm.net.PicasaRequest;

import java.awt.Button;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Label;
import java.awt.Panel;
import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyAdapter;
import java.awt.event.KeyEvent;

/**
 * A panel containing the logo of the application, and a text field where a
 * Picasa username can be entered.
 * 
 * @author haeberling@google.com (Sascha Haeberling)
 */
public class EnterUsernamePanel extends Panel {
  private final ImagePanel logo =
      new ImagePanel("doc/photovm/photovm_logo.png");
  private final Label lblEnterUsername = new Label("Enter Picasa Username:");
  private final TextField txtUsername = new TextField();
  private final Button btnLoadAlbums = new Button("Load Albums");

  public EnterUsernamePanel(final UpdateAlbumsListener listener) {
    setPreferredSize(new Dimension(200, 150));
    setLayout(new FlowLayout());
    lblEnterUsername.setForeground(Color.WHITE);
    txtUsername.setPreferredSize(new Dimension(200, 20));

    btnLoadAlbums.addActionListener(new ActionListener() {
      public void actionPerformed(ActionEvent e) {
        listener.updateAlbums(PicasaRequest
            .requestAlbums(txtUsername.getText()));
      }
    });

    txtUsername.addKeyListener(new KeyAdapter() {
      @Override
      public void keyPressed(KeyEvent e) {
        if (e.getKeyCode() == KeyEvent.VK_ENTER) {
          listener.updateAlbums(PicasaRequest.requestAlbums(txtUsername
              .getText()));
        }
      }
    });
    add(logo);
    add(lblEnterUsername);
    add(txtUsername);
    add(btnLoadAlbums);
  }
}
