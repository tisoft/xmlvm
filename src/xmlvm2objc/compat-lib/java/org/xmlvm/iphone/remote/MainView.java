
package org.xmlvm.iphone.remote;

import org.xmlvm.iphone.*;



public class MainView
    extends UIView
{

    private PreferencesTable prefs;



    public MainView(CGRect rect)
    {
        super(rect);
        prefs = new PreferencesTable(rect);
        addSubview(prefs);
    }



    public Settings getSettings()
    {
        return prefs.getSettings();
    }
}
