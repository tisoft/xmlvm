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

import java.awt.*;
import java.awt.event.*;

public class AbsoluteCalculator implements ActionListener {
  public static int COLUMN_ONE = 10;
  public static int COLUMN_TWO = 42;
  public static int COLUMN_THREE = 74;
  public static int COLUMN_FOUR = 106;
  public static int COLUMN_FIVE = 138;

  public static int ROW_ONE = 80;
  public static int ROW_TWO = 107;
  public static int ROW_THREE = 134;
  public static int ROW_FOUR = 161;
  public static int ROW_FIVE = 188;

  TextField display;
  int maxLength = 20;
  String output = "0";
  boolean decimal = false;
  float result = 0.0f;
  String operation = "";
  boolean newNumber = true;
  boolean finished = false;
  boolean memory = false;
  float memoryValue = 0.0f;
  
  private Frame window;

  public AbsoluteCalculator() {
    window = new Frame();

    window.setTitle("XMLVM Absolute Calculator");
    window.setLayout(null);
    window.setBackground(Color.white);
    window.setSize(180, 230);

    display = new TextField(maxLength + 1);
    display.setEditable(false);
    display.setBackground(Color.white);
    display.setBounds(10, 40, 160, 25);

    window.add(addButton("+/-", COLUMN_ONE, ROW_ONE));
    window.add(addButton("", COLUMN_TWO, ROW_ONE));
    window.add(addButton("", COLUMN_THREE, ROW_ONE));
    window.add(addButton("", COLUMN_FOUR, ROW_ONE));
    window.add(addButton("AC", COLUMN_FIVE, ROW_ONE));

    window.add(addButton("M+", COLUMN_ONE, ROW_TWO));
    window.add(addButton("7", COLUMN_TWO, ROW_TWO));
    window.add(addButton("8", COLUMN_THREE, ROW_TWO));
    window.add(addButton("9", COLUMN_FOUR, ROW_TWO));
    window.add(addButton("/", COLUMN_FIVE, ROW_TWO));

    window.add(addButton("M-", COLUMN_ONE, ROW_THREE));
    window.add(addButton("4", COLUMN_TWO, ROW_THREE));
    window.add(addButton("5", COLUMN_THREE, ROW_THREE));
    window.add(addButton("6", COLUMN_FOUR, ROW_THREE));
    window.add(addButton("x", COLUMN_FIVE, ROW_THREE));

    window.add(addButton("MR", COLUMN_ONE, ROW_FOUR));
    window.add(addButton("1", COLUMN_TWO, ROW_FOUR));
    window.add(addButton("2", COLUMN_THREE, ROW_FOUR));
    window.add(addButton("3", COLUMN_FOUR, ROW_FOUR));
    window.add(addButton("-", COLUMN_FIVE, ROW_FOUR));

    window.add(addButton("MC", COLUMN_ONE, ROW_FIVE));
    window.add(addButton("0", COLUMN_TWO, ROW_FIVE));
    window.add(addButton(".", COLUMN_THREE, ROW_FIVE));
    window.add(addButton("=", COLUMN_FOUR, ROW_FIVE));
    window.add(addButton("+", COLUMN_FIVE, ROW_FIVE));

    window.add(display);
    updateDisplay();
    window.setVisible(true);
  }
  
  public void setLocation(int x, int y) {
    window.setLocation(x, y);
  }

  private Button addButton(String label, int x, int y) {
    Button btn = new Button(label);
    btn.addActionListener(this);
    btn.setBounds(x, y, 30, 25);
    return btn;
  }

  public void updateDisplay() {
    String output_right = "";
    for (int i = 1; i <= (maxLength - output.length()); i++) {
      if ((i == 1) && (memory))
        output_right = output_right + "M";
      else
        output_right = output_right + "_";
    }

    output_right = output_right + output;
    display.setText(output_right);
  }

  public void appendDigit(String new_d) {
    if (output == "0")
      output = "";

    if (output.length() < maxLength) {
      if (newNumber) {
        output = new_d;
        newNumber = false;
      } else
        output = output + new_d;
      updateDisplay();
    }

    if (finished || operation == "") {
      result = Float.valueOf(output).floatValue();
      finished = false;
      operation = "";
    }
  }

  public void key_equals() {
    evaluate();

    operation = "";
    newNumber = true;
    decimal = false;
    finished = true;
  }

  public void evaluate() {
    if (operation.equals("plus"))
      result += Float.valueOf(output).floatValue();
    else if (operation.equals("minus"))
      result -= Float.valueOf(output).floatValue();
    else if (operation.equals("times"))
      result *= Float.valueOf(output).floatValue();
    else if (operation.equals("div"))
      result /= Float.valueOf(output).floatValue();
    else
      result = Float.valueOf(output).floatValue();

    if (finished == true)
      finished = false;

    output = Float.toString(result);
    updateDisplay();

    newNumber = true;
    decimal = false;
  }

  public void actionPerformed(ActionEvent evt) {
    String cmd = evt.getActionCommand();

    if (cmd.equals("AC")) {
      result = 0;
      output = Float.toString(result);

      operation = "";
      newNumber = true;
      decimal = false;
      finished = true;

      updateDisplay();
    }

    if (cmd.equals("+/-")) {
      float val = Float.valueOf(output).floatValue();
      val *= -1;
      output = Float.toString(val);
      updateDisplay();
    }

    if (cmd.equals("1"))
      appendDigit("1");
    if (cmd.equals("2"))
      appendDigit("2");
    if (cmd.equals("3"))
      appendDigit("3");
    if (cmd.equals("4"))
      appendDigit("4");
    if (cmd.equals("5"))
      appendDigit("5");
    if (cmd.equals("6"))
      appendDigit("6");
    if (cmd.equals("7"))
      appendDigit("7");
    if (cmd.equals("8"))
      appendDigit("8");
    if (cmd.equals("9"))
      appendDigit("9");
    if (cmd.equals("0"))
      if (output.length() != 0)
        appendDigit("0");

    if (cmd.equals("."))
      if (output.length() < maxLength)
        if (!decimal) {
          decimal = true;
          if (output.length() == 0 || newNumber) {
            output = "0.";
            newNumber = false;
          } else
            output = output + ".";

          updateDisplay();
        }

    if (cmd.equals("="))
      key_equals();

    if (cmd.equals("+")) {
      evaluate();
      operation = "plus";
    }

    if (cmd.equals("-")) {
      evaluate();
      operation = "minus";
    }

    if (cmd.equals("x")) {
      evaluate();
      operation = "times";
    }

    if (cmd.equals("/")) {
      evaluate();
      operation = "div";
    }

    if (cmd.equals("M+")) {
      memory = true;
      key_equals();
      memoryValue += Float.valueOf(output).floatValue();
      updateDisplay();
    }

    if (cmd.equals("M-")) {
      memory = true;
      key_equals();
      memoryValue -= Float.valueOf(output).floatValue();
      updateDisplay();
    }

    if (cmd.equals("MR")) {
      if (memory) {
        output = Float.toString(memoryValue);
        updateDisplay();
      }
    }

    if (cmd.equals("MC")) {
      memory = false;
      memoryValue = 0.0f;
      updateDisplay();
    }

    if (output.equals(""))
      output = "0";
  }

  static public void main(String[] args) {
    new AbsoluteCalculator();
  }
}