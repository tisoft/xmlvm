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
/*
 * Compile with:
 * mcs Calculator.cs -r:System.Windows.Forms.dll -r:System.Drawing.dll
 */

using System;
using System.Drawing;
using System.Windows.Forms;

class Calculator : System.Windows.Forms.Form {	

    private Label display;
    private int gridSizeX = 30;
    private int gridSizeY = 30;
    
    private int buttonCount;

    int       maxLength   = 20;
    String    output      = "0";
    bool      dec         = false;
    double    result      = 0.0d;
    String    operation   = "";
    bool      newNumber   = true;
    bool      finished    = false;
    bool      memory      = false;
    double    memoryValue = 0.0d;

    
    public Calculator()
    {
        Text = "Calculator";
        ClientSize = new System.Drawing.Size (gridSizeX * 5, gridSizeY * 6);

        display = new Label();
        display.Location = new Point(0, 0);
        display.Size = new Size(gridSizeX * 5, gridSizeY);
        display.Text = "0";
        Controls.Add(display);

		buttonCount = 0;
        addButton("+/-");
        addButton("");
        addButton("");
        addButton("");
        addButton("AC");

        addButton("M+");
        addButton("7");
        addButton("8");
        addButton("9");
        addButton("/");

        addButton("M-");
        addButton("4");
        addButton("5");
        addButton("6");
        addButton("x");

        addButton("MR");
        addButton("1");
        addButton("2");
        addButton("3");
        addButton("-");

        addButton("MC");
        addButton("0");
        addButton(".");
        addButton("=");
        addButton("+");
        
        updateDisplay();
    }
    
    private void addButton(String label)
    {
    	Button button = new Button();
    	button.Text = label;
    	button.Size = new Size(gridSizeX, gridSizeY);
    	int x = buttonCount % 5 * gridSizeX;
    	int y = buttonCount / 5 * gridSizeY + gridSizeY;
    	button.Location = new Point(x, y);
        button.Click += new EventHandler(HandleClick);
    	Controls.Add(button);
    	buttonCount++;
    }



    public void HandleClick(Object sender, EventArgs e)
    {
        String cmd = ((Button) sender).Text;

        if (cmd == "AC") {
            result = 0;
            output = Convert.ToString(result);

            operation = "";
            newNumber = true;
            dec = false;
            finished = true;

            updateDisplay();
        }

        if (cmd == "+/-") {
            double val = Convert.ToDouble(output);
            val *= -1;
            output = Convert.ToString(val);
            updateDisplay();
        }

        if (cmd == "1")
            appendDigit("1");
        if (cmd == "2")
            appendDigit("2");
        if (cmd == "3")
            appendDigit("3");
        if (cmd == "4")
            appendDigit("4");
        if (cmd == "5")
            appendDigit("5");
        if (cmd == "6")
            appendDigit("6");
        if (cmd == "7")
            appendDigit("7");
        if (cmd == "8")
            appendDigit("8");
        if (cmd == "9")
            appendDigit("9");
        if (cmd == "0")
            if (output.Length != 0)
                appendDigit("0");

        if (cmd == ".")
            if (output.Length < maxLength)
                if (!dec) {
                    dec = true;
                    if (output.Length == 0 || newNumber) {
                        output = "0.";
                        newNumber = false;
                    }
                    else
                        output = output + ".";

                    updateDisplay();
                }

        if (cmd == "=")
            key_equals();

        if (cmd == "+") {
            evaluate();
            operation = "plus";
        }

        if (cmd == "-") {
            evaluate();
            operation = "minus";
        }

        if (cmd == "x") {
            evaluate();
            operation = "times";
        }

        if (cmd == "/") {
            evaluate();
            operation = "div";
        }

        if (cmd == "M+") {
            memory = true;
            key_equals();
            memoryValue += Convert.ToDouble(output);
            updateDisplay();
        }

        if (cmd == "M-") {
            memory = true;
            key_equals();
            memoryValue -= Convert.ToDouble(output);
            updateDisplay();
        }

        if (cmd == "MR") {
            if (memory) {
                output = Convert.ToString(memoryValue);
                updateDisplay();
            }
        }

        if (cmd == "MC") {
            memory = false;
            memoryValue = 0.0d;
            updateDisplay();
        }

        if (output == "")
            output = "0";
    }



    public void updateDisplay()
    {
        String output_right = "";
        for (int i = 1; i <= (maxLength - output.Length); i++) {
            if ((i == 1) && (memory))
                output_right = output_right + "M";
            else
                output_right = output_right + "_";
        }
        output_right = output_right + output;
        display.Text = output_right;
    }



    public void appendDigit(String new_d)
    {
        if (output == "0")
            output = "";

        if (output.Length < maxLength) {
            if (newNumber) {
                output = new_d;
                newNumber = false;
            }
            else
                output = output + new_d;
            updateDisplay();
        }

        if (finished || operation == "") {
            result = Convert.ToDouble(output);
            finished = false;
            operation = "";
        }
    }



    public void key_equals()
    {
        evaluate();

        operation = "";
        newNumber = true;
        dec = false;
        finished = true;
    }



    public void evaluate()
    {
        if (operation == "plus")
            result += Convert.ToDouble(output);
        else if (operation == "minus")
            result -= Convert.ToDouble(output);
        else if (operation == "times")
            result *= Convert.ToDouble(output);
        else if (operation == "div")
            result /= Convert.ToDouble(output);
        else
            result = Convert.ToDouble(output);

        if (finished == true)
            finished = false;

        output = Convert.ToString(result);
        updateDisplay();

        newNumber = true;
        dec = false;
    }



    public static void Main()
    {
        Application.Run(new Calculator());
    }
}
