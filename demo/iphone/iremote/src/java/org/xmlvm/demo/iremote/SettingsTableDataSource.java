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

package org.xmlvm.demo.iremote;

import org.xmlvm.iphone.*;

public class SettingsTableDataSource extends UITableViewDataSource {

    private static final float kTextFieldWidth  = 150.0f;
    private static final float kTextFieldHeight = 30.0f;

    public UITextField         ipAddress;
    public UISwitch            accelerometer;


    @Override
    public UITableViewCell cellForRowAtIndexPath(UITableView table, NSIndexPath idx) {
        SettingTableCell cell = new SettingTableCell();
        if (idx.getRow() == 0) {
            cell.setLabelText("IP Address");
            ipAddress = new UITextField(new CGRect(0, 0, kTextFieldWidth, kTextFieldHeight));
            ipAddress.setBorderStyle(UITextBorderStyle.Bezel);
            cell.setView(ipAddress);
        } else {
            cell.setLabelText("Accelerometer");
            accelerometer = new UISwitch(new CGRect(0, 0, 0, 0));
            cell.setView(accelerometer);
        }
        return cell;
    }

    @Override
    public int numberOfSectionsInTableView(UITableView table) {
        return 1;
    }

    @Override
    public int numberOfRowsInSection(UITableView table, int section) {
        return 2;
    }

    @Override
    public String titleForHeaderInSection(UITableView table, int section) {
        return "iRemote";
    }
}
