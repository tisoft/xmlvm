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
 * mcs CelsiusConverter.cs -r:System.Windows.Forms.dll -r:System.Drawing.dll
 */

using System;
using System.Drawing;
using System.Windows.Forms;

class CelsiusConverter : System.Windows.Forms.Form {	

    private Button button;
    private TextBox textBox;
    private Label label;

    public CelsiusConverter()
    {
        Text = "Celsius Converter";
        ClientSize = new System.Drawing.Size (200, 40);

        textBox = new TextBox();
        textBox.Location = new Point(0, 0);
        textBox.Size = new Size(100, 20);
        textBox.Text = "0";
        Controls.Add(textBox);

        label = new Label();
        label.Location = new Point(100, 0);
        label.Size = new Size(100, 20);
        label.Text = "Celsius";
        Controls.Add(label);

        button = new Button();
        button.Text = "Convert...";
        button.Location = new Point(0, 20);
        button.Size = new Size(100, 20);
        Controls.Add(button);
        button.Click += new EventHandler(HandleClick);

        label = new Label();
        label.Location = new Point(100, 20);
        label.Size = new Size(100, 20);
        label.Text = "-";
        Controls.Add(label);
    }

    public void HandleClick(Object sender, EventArgs e)
    {
        double c = Convert.ToDouble(textBox.Text);
        double f = c * 1.8 + 32;
        label.Text = Convert.ToString(f) + " Fahrenheit";
    }

    public static void Main()
    {
        Application.Run(new CelsiusConverter());
    }
}
