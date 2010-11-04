/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

package android.widget;

import org.xmlvm.iphone.UISegmentedControl;

import android.content.Context;
import android.internal.Assert;
import android.util.AttributeSet;
import android.util.Log;

/**
 * 
 * RadioButton implementation which is mapped to a segment of a
 * UISegmentedControl. The RadioButton itself does not need a view to be mapped
 * to. Though we create a view since usually there is a view backing up a
 * widgets and a lot of calls would fail implementing it without a view. The
 * view created is not linked into the view hierarchy.
 * 
 */

public class RadioButton extends CompoundButton {

    /**
     * 
     * Creates a new RadioButton within a given context.
     * 
     * @param context
     *            The contect used to create the RadioButton.
     * 
     */

    public RadioButton(Context context) {
        super(context);
    }

    /**
     * 
     * Creates a new RadioButton within a given context. Additionally attributes
     * are retrieved from the provided AttributeSet. Since RadioButtons are
     * actually not widgets on its on (in this implementation) most attributes
     * are ignored because they are not supported. Especially layout attributes
     * do not affect layouting an individual RadioButton.
     * 
     * @param context
     *            The contect used to create the RadioButton.
     * 
     * @param attrs
     *            The AttributeSet to get attributes from.
     * 
     */

    public RadioButton(Context c, AttributeSet attrs) {
        super(c, attrs);
    }

    /**
     * 
     * Implementation of this method seems not to be required.
     * 
     */

    @Override
    protected void xmlvmUpdateUIView(boolean checked) {
        Log.w("xmlvm", "RadioButton.xmlvmUpdateUIView() not implemented");
    }

    /**
     * 
     * Tests whether this RadioButton is checked by checking the
     * UISegmentedControl's selected index. In case the selected index is
     * associated with this RadioButton it is considered to be checked.
     * 
     * @return true if the RadioButton is selected, false otherwise.
     * 
     */

    @Override
    public boolean isChecked() {
        RadioGroup parent = (RadioGroup) getParent();
        return parent.getSelectedRadioButton() == this;
    }

    /**
     * 
     * Checks/unchecks this RadioButton by setting the UISegmentedControl's
     * selected index. Unselecting is implemented setting the index to -1.
     * 
     * @param checked
     *            Determines whether to check (true) or uncheck (false) the
     *            RadioButton.
     * 
     */

    @Override
    public void setChecked(boolean checked) {
        if (checked) {
            ((RadioGroup) getParent()).setChecked(this);
        } else {
            RadioGroup parent = (RadioGroup) getParent();
            ((UISegmentedControl) parent.xmlvmGetViewHandler().getContentView())
                    .setSelectedSegmentIndex(-1);
        }
    }

    /**
     * 
     * Sets an OnCheckedChangeListener for this RadioButton.
     * 
     * @param listener
     *            The listener to be registered.
     * 
     */

    @Override
    public void setOnCheckedChangeListener(OnCheckedChangeListener listener) {
        // TODO Auto-generated method stub
        Assert.NOT_IMPLEMENTED();
    }

    /**
     * 
     * Toggles the checked state of this RadioButton.
     * 
     */

    @Override
    public void toggle() {
        setChecked(!isChecked());
    }

    /**
     * 
     * Calls this RadioButton's OnClickListener if one is set.
     * 
     */

    void callOnClickListener() {
        if (getOnClickListener() != null) {
            getOnClickListener().onClick(this);
        }
    }

    @Override
    public String getText() {
        return text;
    }

    @Override
    public void setText(String text) {
        this.text = text;
        requestLayout();
    }

}
