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

package org.xmlvm.acl.wp7.adapter;

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.acl.common.adapter.AlertDialogAdapter;

import Compatlib.System.Object;
import Compatlib.System.Windows.HorizontalAlignment;
import Compatlib.System.Windows.RoutedEventArgs;
import Compatlib.System.Windows.RoutedEventHandler;
import Compatlib.System.Windows.Thickness;
import Compatlib.System.Windows.Controls.Button;
import Compatlib.System.Windows.Controls.StackPanel;
import Compatlib.System.Windows.Controls.TextBlock;
import Compatlib.System.Windows.Controls.Primitives.Popup;
import Compatlib.System.Windows.Media.Colors;
import Compatlib.System.Windows.Media.SolidColorBrush;
import android.app.AlertDialog;

/**
 *
 */
public class WP7AlertDialogAdapter extends Object implements AlertDialogAdapter {
    
    private Popup popup;
    private TextBlock textblock1;
    private TextBlock textblock2;
    private List<Button> buttons = new ArrayList<Button>();
    private StackPanel panel2;
    private AlertDialog alertDialog;
    
    public WP7AlertDialogAdapter(String title, String message, AlertDialog alertDialog,
            String cancelButtonTitle) {
        this.alertDialog = alertDialog;
        
        popup = new Popup();
        popup.setMinWidth(800);
        popup.setHorizontalAlignment(HorizontalAlignment.Stretch);
        
        StackPanel panel1 = new StackPanel();
        panel1.setHorizontalAlignment(HorizontalAlignment.Stretch);
        panel1.setBackground(new SolidColorBrush(Colors.Black));
        panel1.setMinWidth(800);
        
        panel2 = new StackPanel();
        panel2.setHorizontalAlignment(HorizontalAlignment.Left);
        
        
        textblock1 = new TextBlock();
        setTitle(title);
        textblock1.setMargin(new Thickness(5.0));
        textblock1.setFontSize(20);
        textblock1.setForeground(new SolidColorBrush(Colors.White));
        panel2.getChildren().Add(textblock1);
        
        textblock2 = new TextBlock();
        setMessage(message);
        textblock2.setMargin(new Thickness(5.0));
        textblock2.setFontSize(20);
        textblock2.setForeground(new SolidColorBrush(Colors.White));
        panel2.getChildren().Add(textblock2);
        
        if (cancelButtonTitle != null)
            addButtonWithTitle(cancelButtonTitle);
        
        panel1.getChildren().Add(panel2);
        
        popup.setChild(panel1);
    }

    @Override
    public void setTitle(String title) {
        textblock1.setText(new Compatlib.System.String(title));
    }

    @Override
    public void setMessage(String message) {
        textblock2.setText(new Compatlib.System.String(message));
    }

    @Override
    public void addButtonWithTitle(String string) {
        Button button1 = new Button();
        button1.setName(new Compatlib.System.String(""+(buttons.size())));
        button1.setContent(new Compatlib.System.String(string));
        button1.setMargin(new Thickness(5.0));
        button1.Click.__add(new RoutedEventHandler(this, new Compatlib.System.String("dialog_Click")));
        panel2.getChildren().Add(button1);
        buttons.add(button1);
    }
    
    public void dialog_Click(Object sender, RoutedEventArgs e)
    {
        alertDialog.clickedButtonAtIndex(Integer.parseInt(((Button)e.getOriginalSource()).getName().value));

        // Close the popup.
        popup.setIsOpen(false);
    }

    @Override
    public void show() {
        this.popup.setIsOpen(true);
    }

}
