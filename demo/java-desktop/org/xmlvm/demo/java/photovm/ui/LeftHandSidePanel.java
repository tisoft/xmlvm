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

import org.xmlvm.demo.java.photovm.event.UpdatePhotosListener;

import java.awt.BorderLayout;
import java.awt.Dimension;
import java.awt.Panel;

/**
 * Combines the username panel and the album list to the left-hand side of the
 * application.
 * 
 */
public class LeftHandSidePanel extends Panel {
  private AlbumListPanel albumListPanel;
  private EnterUsernamePanel enterUserNamePanel;

  public LeftHandSidePanel(UpdatePhotosListener listener) {

    setLayout(new BorderLayout());
    setPreferredSize(new Dimension(200, 800));
    albumListPanel = new AlbumListPanel(listener);
    enterUserNamePanel = new EnterUsernamePanel(albumListPanel);
    add(albumListPanel, BorderLayout.CENTER);
    add(enterUserNamePanel, BorderLayout.NORTH);
  }
}
