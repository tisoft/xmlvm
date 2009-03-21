
package org.xmlvm.iphone.remote;

import org.xmlvm.iphone.*;



public class Settings
    extends UIPreferencesTableDataSource
{

    private UIPreferencesTableCell     settingsGroup;
    private UIPreferencesTextTableCell ipAddressCell;
    private UIPreferencesTableCell     useAccelerometerCell;
    private UISwitch            useAccelerometerControl;



    public Settings()
    {
        settingsGroup = new UIPreferencesTableCell();
        settingsGroup.setTitle("Settings");

        ipAddressCell = new UIPreferencesTextTableCell();
        ipAddressCell.setTitle("IP Address");
        ipAddressCell.setEnabled(true);

        useAccelerometerCell = new UIPreferencesTableCell();
        useAccelerometerCell.setTitle("Accelerometer");
        useAccelerometerCell.setEnabled(true);
        useAccelerometerControl = new UISwitch(new CGRect(170, 5, 120,
                                                                 30));
        useAccelerometerControl.setOn(false);
        useAccelerometerCell.addSubview(useAccelerometerControl);
    }



    public String getIPAddress()
    {
        return ipAddressCell.getValue();
    }



    public void setIPAddress(String ip)
    {
        ipAddressCell.setValue(ip);
    }



    public float getAccelerometerSetting()
    {
        return useAccelerometerControl.isOn() ? 1 : 0;
    }



    @Override
    public UIPreferencesTableCell cellForGroup(UIPreferencesTable aTable,
            int group)
    {
        return settingsGroup;
    }



    @Override
    public UIPreferencesTableCell cellForRow(UIPreferencesTable aTable,
            int row, int group)
    {
        if (row == 0)
            return ipAddressCell;
        return useAccelerometerCell;
    }



    @Override
    public float heightForRow(UIPreferencesTable aTable, int row, int group,
            float proposedHeight)
    {
        if (row == -1)
            return 40;
        return proposedHeight;
    }



    @Override
    public boolean isLabelGroup(UIPreferencesTable aTable, int group)
    {
        return false;
    }



    @Override
    public int numberOfGroupsInPreferencesTable(UIPreferencesTable aTable)
    {
        return 1;
    }



    @Override
    public int numberOfRowsInGroup(UIPreferencesTable aTable, int group)
    {
        return 2;
    }
}
