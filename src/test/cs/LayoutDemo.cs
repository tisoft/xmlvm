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
 * mcs LayoutDemo.cs -r:System.Windows.Forms.dll -r:System.Drawing.dll
 */

using System;
using System.Drawing;
using System.Windows.Forms;



class LayoutDemo : System.Windows.Forms.Form {	

    private Button     buttonDump;
    private Button     buttonClear;
    private Button     buttonExit;
    private TextBox    inputBox;
    private TextBox    textBox;
    private PictureBox logo;
    private ListBox    listBox;



    public LayoutDemo()
    {
        InitializeComponent();
    }



    private void InitializeComponent()
    {
        Text = "LayoutDemo";
        AutoScaleBaseSize = new Size(5, 13);
        MinimumSize = new Size(280, 305);
        ClientSize = new Size(392, 342);

        inputBox = new TextBox();
        inputBox.Location = new Point(16, 24);
        inputBox.Text = "Windows Forms Layout Demo";
        inputBox.TabIndex = 0;
        inputBox.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
        inputBox.Size = new Size(360, 20);
        Controls.Add(inputBox);

        listBox = new ListBox();
        listBox.Location = new Point(16, 60);
        listBox.Size = new Size(250, 100);
        listBox.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right;
        listBox.BeginUpdate();
        for (int i = 1; i <= 20; i++) {
            listBox.Items.Add("Item " + i.ToString());
        }
        listBox.EndUpdate();
        listBox.SelectedIndex = 0;
        Controls.Add(listBox);
        
        logo = new PictureBox();
        logo.Image = Image.FromFile("xml11_tiny.jpg");
        logo.Location = new Point(282, 60);
        logo.Anchor = AnchorStyles.Top | AnchorStyles.Right;
        Controls.Add(logo);

        textBox = new TextBox();
        textBox.Location = new Point(16, 174);
        textBox.Multiline = true;
        textBox.ScrollBars = ScrollBars.Vertical;
        textBox.Anchor = AnchorStyles.Top | AnchorStyles.Left | AnchorStyles.Right | AnchorStyles.Bottom;
        textBox.Size = new Size(360, 100);
        Controls.Add(textBox);

        buttonDump = new Button();
        buttonDump.Size = new Size(60, 30);
        buttonDump.TabIndex = 1;
        buttonDump.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
        buttonDump.Location = new Point(164, 296);
        buttonDump.Text = "Dump";
        buttonDump.Click += new EventHandler(ClickDump);
        Controls.Add(buttonDump);

        buttonClear = new Button();
        buttonClear.Size = new Size(60, 30);
        buttonClear.TabIndex = 1;
        buttonClear.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
        buttonClear.Location = new Point(240, 296);
        buttonClear.Text = "Clear";
        buttonClear.Click += new EventHandler(ClickClear);
        Controls.Add(buttonClear);

        buttonExit = new Button();
        buttonExit.Size = new Size(60, 30);
        buttonExit.TabIndex = 1;
        buttonExit.Anchor = AnchorStyles.Bottom | AnchorStyles.Right;
        buttonExit.Location = new Point(316, 296);
        buttonExit.Text = "Exit";
        buttonExit.Click += new EventHandler(ClickExit);
        Controls.Add(buttonExit);
    }



    public void ClickDump(Object sender, System.EventArgs e)
    {
        textBox.AppendText("========== " + DateTime.Now.ToString("MM/dd/yyyy, HH:mm:ss") + " ==========\n");
        textBox.AppendText("Input: " + inputBox.Text + "\n");
        textBox.AppendText("Selected: " + listBox.SelectedItem.ToString() + "\n");
        textBox.AppendText("========== " + DateTime.Now.ToString("MM/dd/yyyy, HH:mm:ss") + " ==========\n\n");
    }



    public void ClickClear(Object sender, System.EventArgs e)
    {
        textBox.Text = "";
    }



    public void ClickExit(Object sender, System.EventArgs e)
    {
    }



    public static void Main()
    {
        Application.Run(new LayoutDemo());
    }
}

