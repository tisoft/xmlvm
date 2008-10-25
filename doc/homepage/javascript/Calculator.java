
package org.xmlvm.demo;

import java.awt.*;
import java.awt.event.*;



public class Calculator
    implements ActionListener
{

    TextField display;
    Panel     keys;
    int       maxLength   = 20;
    String    output      = "0";
    boolean   decimal     = false;
    float     result      = 0.0f;
    String    operation   = "";
    boolean   newNumber   = true;
    boolean   finished    = false;
    boolean   memory      = false;
    float     memoryValue = 0.0f;



    public void init()
    {
        Frame window = new Frame();

        window.setTitle("XML11 Calculator");
        window.setLayout(new FlowLayout());
        window.setFont(new Font("Helvetica", Font.PLAIN, 12));
        window.setBackground(Color.white);

        Panel panel = new Panel();

        panel.setLayout(new BorderLayout());
        panel.setFont(new Font("Helvetica", Font.PLAIN, 12));
        panel.setBackground(Color.lightGray);

        display = new TextField(maxLength + 1);
        display.setEditable(false);
        display.setFont(new Font("Helvetica", Font.PLAIN, 12));
        display.setBackground(Color.white);

        keys = new Panel();
        keys.setLayout(new GridLayout(5, 5));
        keys.setFont(new Font("Helvetica", Font.PLAIN, 12));
        keys.setBackground(Color.lightGray);

        keys.add(addButton("+/-"));
        keys.add(addButton(""));
        keys.add(addButton(""));
        keys.add(addButton(""));
        keys.add(addButton("AC"));

        keys.add(addButton("M+"));
        keys.add(addButton("7"));
        keys.add(addButton("8"));
        keys.add(addButton("9"));
        keys.add(addButton("/"));

        keys.add(addButton("M-"));
        keys.add(addButton("4"));
        keys.add(addButton("5"));
        keys.add(addButton("6"));
        keys.add(addButton("x"));

        keys.add(addButton("MR"));
        keys.add(addButton("1"));
        keys.add(addButton("2"));
        keys.add(addButton("3"));
        keys.add(addButton("-"));

        keys.add(addButton("MC"));
        keys.add(addButton("0"));
        keys.add(addButton("."));
        keys.add(addButton("="));
        keys.add(addButton("+"));

        panel.add("North", display);
        panel.add("Center", new Label(""));
        panel.add("South", keys);

        updateDisplay();

        window.add(panel);
        window.pack();
        window.setVisible(true);
    }



    private Button addButton(String label)
    {
        Button btn = new Button(label);
        btn.addActionListener(this);
        return btn;
    }



    public void updateDisplay()
    {
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



    public void appendDigit(String new_d)
    {
        if (output == "0")
            output = "";

        if (output.length() < maxLength) {
            if (newNumber) {
                output = new_d;
                newNumber = false;
            }
            else
                output = output + new_d;
            updateDisplay();
        }

        if (finished || operation == "") {
            result = Float.valueOf(output).floatValue();
            finished = false;
            operation = "";
        }
    }



    public void key_equals()
    {
        evaluate();

        operation = "";
        newNumber = true;
        decimal = false;
        finished = true;
    }



    public void evaluate()
    {
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



    public void actionPerformed(ActionEvent evt)
    {
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
                    }
                    else
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



    static public void main(String[] args)
    {
        new Calculator().init();
    }
}