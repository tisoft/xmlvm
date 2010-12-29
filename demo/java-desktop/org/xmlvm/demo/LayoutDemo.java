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

package org.xmlvm.demo;

import java.awt.BorderLayout;
import java.awt.Button;
import java.awt.Color;
import java.awt.FlowLayout;
import java.awt.Frame;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.Insets;
import java.awt.Label;
import java.awt.List;
import java.awt.Panel;
import java.awt.TextArea;
import java.awt.TextField;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Testing Layouts
 * 
 */
public class LayoutDemo implements ActionListener {

  private static final String GREETING = "This is a simple application "
      + "demonstrating XML11's layouting\ncapabilities. "
      + "'Dump' writes all text input to the textarea "
      + "at the\nbottom of this windows. 'Clear' removes "
      + "all text from this\ntextarea.";

  private Frame _frmMain = null;
  private Panel _pnlContent = null;
  private Panel _pnlButtons1 = null;
  private Panel _pnlButtons2 = null;
  private Button _btnDump = null;
  private Button _btnClear = null;
  private Button _btnExit = null;
  private Panel _pnlInput = null;
  private TextArea _txtaGreeting = null;
  private Label _lblLine1 = null;
  private Label _lblLine2 = null;
  private TextField _txtLine1 = null;
  private TextField _txtLine21 = null;
  private TextField _txtLine22 = null;
  private TextField _txtLine23 = null;
  private List _lstItems = null;
  private ImagePanel _pnlImage = null;
  private TextArea _txtaDump = null;

  private Frame getFrmMain() {
    if (_frmMain == null) {
      _frmMain = new Frame();
      _frmMain.setTitle("Layout Demo");
      _frmMain.setBounds(100, 50, 400, 500);
      _frmMain.setLayout(new BorderLayout());

      _frmMain.add(getPnlContent(), BorderLayout.CENTER);
    }

    return _frmMain;
  }

  private Panel getPnlContent() {
    if (_pnlContent == null) {
      _pnlContent = new Panel();
      _pnlContent.setLayout(new BorderLayout());
      _pnlContent.add(getPnlInput(), BorderLayout.CENTER);
      _pnlContent.add(getPnlButtons1(), BorderLayout.SOUTH);
    }

    return _pnlContent;
  }

  private Panel getPnlButtons1() {
    FlowLayout layout;

    if (_pnlButtons1 == null) {
      layout = new FlowLayout();
      layout.setAlignment(FlowLayout.RIGHT);
      layout.setHgap(10);
      layout.setVgap(10);

      _pnlButtons1 = new Panel();
      _pnlButtons1.setLayout(layout);
      _pnlButtons1.add(getPnlButtons2());
    }

    return _pnlButtons1;
  }

  private Panel getPnlButtons2() {
    GridLayout layout;
    if (_pnlButtons2 == null) {
      layout = new GridLayout();
      layout.setRows(1);
      layout.setHgap(10);

      _pnlButtons2 = new Panel();
      _pnlButtons2.setLayout(layout);
      _pnlButtons2.add(getBtnDump(), null);
      _pnlButtons2.add(getBtnClear(), null);
      _pnlButtons2.add(getBtnExit(), null);
    }

    return _pnlButtons2;
  }

  private Button getBtnDump() {
    if (_btnDump == null) {
      _btnDump = new Button();
      _btnDump.setLabel("Dump");
      _btnDump.addActionListener(this);
    }

    return _btnDump;
  }

  private Button getBtnClear() {
    if (_btnClear == null) {
      _btnClear = new Button();
      _btnClear.setLabel("Clear");
      _btnClear.addActionListener(this);
    }

    return _btnClear;
  }

  private Button getBtnExit() {
    if (_btnExit == null) {
      _btnExit = new Button();
      _btnExit.setLabel("Exit");
      _btnExit.addActionListener(this);
    }

    return _btnExit;
  }

  private Panel getPnlInput() {
    GridBagConstraints constraints;

    if (_pnlInput == null) {
      _pnlInput = new Panel();
      _pnlInput.setLayout(new GridBagLayout());

      constraints = new GridBagConstraints();
      constraints.gridx = 0;
      constraints.gridy = 0;
      constraints.gridwidth = 4;
      constraints.gridheight = 1;
      constraints.anchor = GridBagConstraints.CENTER;
      constraints.fill = GridBagConstraints.BOTH;
      constraints.weightx = 1.0;
      constraints.weighty = 0.0;
      constraints.insets = new Insets(10, 10, 10, 10);
      _pnlInput.add(getTxtaGreeting(), constraints);

      constraints.gridx = 0;
      constraints.gridy = 1;
      constraints.gridwidth = 1;
      constraints.anchor = GridBagConstraints.WEST;
      constraints.fill = GridBagConstraints.NONE;
      constraints.weightx = 0.0;
      constraints.weighty = 0.0;
      constraints.insets = new Insets(5, 10, 5, 10);
      _pnlInput.add(getLblLine1(), constraints);

      constraints.gridy = 2;
      _pnlInput.add(getLblLine2(), constraints);

      constraints.gridx = 1;
      constraints.gridy = 1;
      constraints.gridwidth = 3;
      constraints.fill = GridBagConstraints.HORIZONTAL;
      constraints.weightx = 1.0;
      _pnlInput.add(getTxtLine1(), constraints);

      constraints.gridy = 2;
      constraints.gridwidth = 1;
      constraints.weightx = 0.33;
      constraints.insets = new Insets(5, 10, 5, 5);
      _pnlInput.add(getTxtLine21(), constraints);

      constraints.gridx = 2;
      constraints.insets = new Insets(5, 5, 5, 5);
      _pnlInput.add(getTxtLine22(), constraints);

      constraints.gridx = 3;
      constraints.insets = new Insets(5, 5, 5, 10);
      _pnlInput.add(getTxtLine23(), constraints);

      constraints.gridx = 0;
      constraints.gridy = 3;
      constraints.gridwidth = 2;
      constraints.gridheight = 3;
      constraints.weightx = 0.66;
      constraints.weighty = 0.5;
      constraints.anchor = GridBagConstraints.CENTER;
      constraints.fill = GridBagConstraints.BOTH;
      constraints.insets = new Insets(10, 10, 10, 10);
      _pnlInput.add(getLstItems(), constraints);
      // _pnlInput.add(getPnlImage(), constraints);

      constraints.gridx = 2;
      constraints.gridy = 3;
      constraints.gridwidth = 2;
      constraints.gridheight = 3;
      constraints.weightx = 0.66;
      constraints.weighty = 0.5;
      constraints.anchor = GridBagConstraints.CENTER;
      constraints.fill = GridBagConstraints.BOTH;
      constraints.insets = new Insets(5, 5, 5, 10);
      // _pnlInput.add(getLstItems(), constraints);
      _pnlInput.add(getPnlImage(), constraints);

      constraints.gridx = 0;
      constraints.gridy = 6;
      constraints.gridwidth = 4;
      constraints.gridheight = 1;
      constraints.weightx = 1.0;
      constraints.weighty = 0.0;
      constraints.anchor = GridBagConstraints.WEST;
      constraints.fill = GridBagConstraints.BOTH;
      constraints.insets = new Insets(5, 10, 10, 10);
      _pnlInput.add(getTxtaDump(), constraints);

    }

    return _pnlInput;
  }

  private TextArea getTxtaGreeting() {
    if (_txtaGreeting == null) {
      _txtaGreeting = new TextArea(5, 50);
      _txtaGreeting.setText(GREETING);
      _txtaGreeting.setEditable(false);
      _txtaGreeting.setBackground(Color.WHITE);
      _txtaGreeting.setFocusable(false);
    }

    return _txtaGreeting;
  }

  private Label getLblLine1() {
    if (_lblLine1 == null) {
      _lblLine1 = new Label();
      _lblLine1.setText("Line1: ");
    }

    return _lblLine1;
  }

  private Label getLblLine2() {
    if (_lblLine2 == null) {
      _lblLine2 = new Label();
      _lblLine2.setText("Line2: ");
    }

    return _lblLine2;
  }

  private TextField getTxtLine1() {
    if (_txtLine1 == null) {
      _txtLine1 = new TextField();
    }

    return _txtLine1;
  }

  private TextField getTxtLine21() {
    if (_txtLine21 == null) {
      _txtLine21 = new TextField();
    }

    return _txtLine21;
  }

  private TextField getTxtLine22() {
    if (_txtLine22 == null) {
      _txtLine22 = new TextField();
    }

    return _txtLine22;
  }

  private TextField getTxtLine23() {
    if (_txtLine23 == null) {
      _txtLine23 = new TextField();
    }

    return _txtLine23;
  }

  private List getLstItems() {
    if (_lstItems == null) {
      _lstItems = new List();
      for (int i = 0; i < 5; i++) {
        _lstItems.add("Item " + i);
      }
    }

    return _lstItems;
  }

  private ImagePanel getPnlImage() {
    if (_pnlImage == null) {
      _pnlImage = new ImagePanel("doc/xml11_tiny.png");
    }

    return _pnlImage;
  }

  private TextArea getTxtaDump() {
    if (_txtaDump == null) {
      _txtaDump = new TextArea(5, 50);
      _txtaDump.setEditable(false);
      _txtaDump.setBackground(Color.WHITE);
      _txtaDump.setFocusable(false);
    }

    return _txtaDump;
  }

  private void dumpTextFields() {
    SimpleDateFormat formatter;

    formatter = new SimpleDateFormat("MM/dd/yyyy, HH:mm:ss");

    _txtaDump.append("========== " + formatter.format(new Date())
        + " ==========\n");
    _txtaDump.append("Line1: " + _txtLine1.getText() + "\n");
    _txtaDump.append("Line2: " + _txtLine21.getText() + "/"
        + _txtLine22.getText() + "/" + _txtLine23.getText() + "\n");
    _txtaDump.append("Selected: " + _lstItems.getSelectedItem() + "\n");
    // _txtaDump.append("Line3: " + _txtLine3.getText() + "\n");
    // _txtaDump.append("Line4: " + _txtLine4.getText() + "\n");
    _txtaDump.append("========== " + formatter.format(new Date())
        + " ==========\n\n");
  }

  /*
   * (non-Javadoc)
   * 
   * @see
   * java.awt.event.ActionListener#actionPerformed(java.awt.event.ActionEvent)
   */
  public void actionPerformed(ActionEvent e) {
    if (e.getSource() == _btnDump)
      // Dump
      dumpTextFields();
    if (e.getSource() == _btnClear)
      // Clear
      _txtaDump.setText("");
    if (e.getSource() == _btnExit)
      // Exit
      System.exit(0);
  }

  private void runApp() {
    getFrmMain().setVisible(true);
  }

  public static void main(String[] args) {
    new LayoutDemo().runApp();
  }
}
