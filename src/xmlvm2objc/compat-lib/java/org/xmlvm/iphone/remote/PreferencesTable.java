
package org.xmlvm.iphone.remote;

import org.xmlvm.iphone.*;



public class PreferencesTable
    extends UIPreferencesTable
{

    private Settings settings;



    public PreferencesTable(CGRect rect)
    {
        super(rect);
        settings = new Settings();
        setDataSource(settings);
        reloadData();
    }



    public Settings getSettings()
    {
        return settings;
    }
}
