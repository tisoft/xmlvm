
package org.xmlvm.iphone;


abstract public class UIPreferencesTableDataSource
{

    abstract public int numberOfGroupsInPreferencesTable(
            UIPreferencesTable aTable);



    abstract public int numberOfRowsInGroup(UIPreferencesTable aTable, int group);



    abstract public UIPreferencesTableCell cellForGroup(
            UIPreferencesTable aTable, int group);



    abstract public float heightForRow(UIPreferencesTable aTable, int row,
            int group, float proposedHeight);



    abstract public boolean isLabelGroup(UIPreferencesTable aTable, int group);



    abstract public UIPreferencesTableCell cellForRow(
            UIPreferencesTable aTable, int row, int group);

}
