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

package android.widget;

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.acl.common.adapter.RadioGroupAdapter;
import org.xmlvm.acl.common.objects.CommonFont;
import org.xmlvm.acl.common.objects.CommonView;

import android.content.Context;
import android.graphics.RectF;
import android.internal.Assert;
import android.internal.CommonDeviceAPIFinder;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;

/**
 * 
 * Maps Android's RadioGroup to iPhone's UISegmentedControl. The capabilities of
 * this mapping are limited compared to Android's RadioGroup. Especially special
 * layouting features and adding widgets other than RadioButtons to a RadioGroup
 * is not supported.
 * 
 */

public class RadioGroup extends LinearLayout {

    /** Horizontal padding which should always be around a text. */
    private static final int  INTERNAL_PADDING_X = 10;

    /** Vertical padding which should always be around a text. */
    private static final int  INTERNAL_PADDING_y = 5;

    /** The RadioButtons held by this RadioGroup. */
    private List<RadioButton> radioButtons       = new ArrayList<RadioButton>();


    /**
     * 
     * Constructor to create an empty RadioGroup. Basically this creates a
     * UISegmentedControl without any special parameters or segments.
     * 
     * @param context
     *            The context used to create this RadioGroup.
     * 
     */

    public RadioGroup(Context context) {
        super(context);
        initRadioGroup(context, null);
    }

    /**
     * 
     * Constructor to create an empty RadioGroup. Basically this creates a
     * UISegmentedControl without any segments. Parameters of the RadioGroup
     * will be retrieved from the provided AttributeSet. Note that not all
     * attributes supported by Android's RadioGroup are supported. Providing
     * these attributes will not cause errors - they are simply ignored.
     * 
     * @param context
     *            The context used to create this RadioGroup.
     * 
     * @param attrs
     *            The AttributeSet to get parameters from.
     * 
     */

    public RadioGroup(Context context, AttributeSet attrs) {
        super(context, attrs);
        initRadioGroup(context, attrs);
    }

    /**
     * 
     * Perform the initialization of the RadioGroup. If attributes are provided
     * they will be parsed to retrieve parameters from.
     * 
     * @param context
     *            The context used to create this RadioGroup.
     * 
     * @param attrs
     *            The AttributeSet to get parameters from.
     * 
     */

    private void initRadioGroup(Context context, AttributeSet attrs) {
        if (attrs != null) {
            parseRadioGroupAttributes(attrs);
        }
    }

    /**
     * 
     * Adds a view to this RadioGroup. Since only RadioButtons are supported as
     * children this implementation ensures that the view to be added is
     * actually a RadioButton before adding it.
     * 
     * @param child
     *            The child to be added.
     * 
     * @param idx
     *            The position where to add the child.
     * 
     */

    @Override
    public void addView(View child, int idx) {
        if (!(child instanceof RadioButton)) {
            Assert.FAIL("RadioGroup does not support " + child.getClass().getName()
                    + " as children");
        }

        child.xmlvmSetParent(this);

        String title = ((RadioButton) child).getText();
        ((RadioGroupAdapter) xmlvmGetViewHandler().getContentView()).insertSegmentWithTitle(title,
                idx, false);

        radioButtons.add(idx, (RadioButton) child);
    }

    /**
     * 
     * Adds a view to this RadioGroup. Since only RadioButtons are supported as
     * children this implementation ensures that the view to be added is
     * actually a RadioButton before adding it.
     * 
     * @param child
     *            The child to be added.
     * 
     * @param layoutParams
     *            The layout parameters to be used when layouting the provided
     *            child.
     * 
     */

    @Override
    public void addView(View child, ViewGroup.LayoutParams layoutParams) {
        if (!(child instanceof RadioButton)) {
            Assert.FAIL("RadioGroup does not support " + child.getClass().getName()
                    + " as children");
        }

        child.xmlvmSetParent(this);

        String title = ((RadioButton) child).getText();
        int position = radioButtons.size();
        ((RadioGroupAdapter) xmlvmGetViewHandler().getContentView()).insertSegmentWithTitle(title,
                position, false);

        radioButtons.add((RadioButton) child);
    }

    /**
     * 
     * Adds a view to this RadioGroup. Since only RadioButtons are supported as
     * children this implementation ensures that the view to be added is
     * actually a RadioButton before adding it.
     * 
     * @param child
     *            The child to be added.
     * 
     */

    @Override
    public void addView(View child) {
        if (!(child instanceof RadioButton)) {
            Assert.FAIL("RadioGroup does not support " + child.getClass().getName()
                    + " as children");
        }

        child.xmlvmSetParent(this);

        String title = ((RadioButton) child).getText();
        int position = radioButtons.size();
        ((RadioGroupAdapter) xmlvmGetViewHandler().getContentView()).insertSegmentWithTitle(title,
                position, false);

        radioButtons.add((RadioButton) child);
    }

    /**
     * 
     * Parses RadioGroup attributes from the provided AttributeSet.
     * 
     * @param attrs
     *            The attributes to parse.
     * 
     */

    private void parseRadioGroupAttributes(AttributeSet attrs) {
        setIgnoreRequestLayout(true);

        // Parse attributes

        setIgnoreRequestLayout(false);
    }

    /**
     * 
     * Measures the size of the UISegmentedControl taking the provided
     * MeasureSpec into account. Height is determined by the controls font and
     * padding while the width is computed based on the number of segments,
     * padding and the length of the longest title to be displayed.
     * 
     * @param widthMeasureSpec
     *            The measure spec to consider when determining the
     *            RadioGroups's width.
     * 
     * @param heightMeasureSpec
     *            The measure spec to consider when determining the
     *            RadioGroups's height.
     */

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);

        int minWidth = getSuggestedMinimumWidth();
        int minHeight = getSuggestedMinimumHeight();

        // Determine maximum string text length
        float maxWidth = 0.0f;
        float maxHeight = 0.0f;
        for (RadioButton rb : radioButtons) {
            RectF s = getTextSize(rb.getText());
            if (s.width() > maxWidth) {
                maxWidth = s.width();
            }
            if (s.height() > maxHeight) {
                maxHeight = s.height();
            }
        }

        int computedWidth = radioButtons.size() * (2 * INTERNAL_PADDING_X + (int) maxWidth);
        int computedHeight = 2 * INTERNAL_PADDING_y + (int) maxHeight;
        int width = MeasureSpec.getMode(widthMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                .getSize(widthMeasureSpec) : computedWidth;
        int height = MeasureSpec.getMode(heightMeasureSpec) == MeasureSpec.EXACTLY ? MeasureSpec
                .getSize(heightMeasureSpec) : computedHeight;
        setMeasuredDimension(Math.max(width, minWidth), Math.max(height, minHeight));
    }

    /**
     * 
     * Determines the size a text will need using the system font.
     * 
     * @param text
     *            The text to be tested.
     * 
     * @return The size of the given text.
     * 
     */

    private RectF getTextSize(String text) {
        CommonFont font = CommonDeviceAPIFinder.instance().getFontFactory().systemFontOfSize(CommonDeviceAPIFinder.instance().getFontFactory().labelFontSize());

        RectF mSize = CommonDeviceAPIFinder.instance().getFontFactory().sizeWithFont("M", font);
        RectF textSize = CommonDeviceAPIFinder.instance().getFontFactory().sizeWithFont(text, font);
        if (text.length() == 0) {
            textSize.bottom = textSize.top + mSize.height();
        }

        return textSize;
    }

    /**
     * 
     * Searches the contained RadioButtons for on matching a given id.
     * 
     * @param id
     *            The id to look for.
     * 
     * @return The RadioButton with the given ID, null if none is found.
     * 
     */

    @Override
    protected View findViewTraversal(int id) {
        if (id == getId()) {
            return this;
        }

        for (View v : radioButtons) {
            v = v.findViewById(id);
            if (v != null) {
                return v;
            }
        }

        return null;
    }

    /**
     * 
     * Creates the new iPhone widget to which RadioGroup is being mapped. This
     * is a UISegmentedControl.
     * 
     */

    @Override
    protected CommonView xmlvmNewCommonDeviceView(AttributeSet attrs) {
        return CommonDeviceAPIFinder.instance().getWidgetFactory().createRadioGroup(this);
    }

    /**
     * 
     * Distributes an OnClickEvent to the proper RadioButton's OnClickListener.
     * First the selected RadioButton is determined. If that RadioButton has an
     * OnClickListener set it will be called.
     * 
     */

    public void distributeOnClick() {
        int index = ((RadioGroupAdapter) xmlvmGetViewHandler().getContentView()).getSelectedSegmentIndex();
        if (index >= 0) {
            radioButtons.get(index).callOnClickListener();
        }
    }

    /**
     * 
     * Selects the provided RadioButton by setting the UISegmentedControl's
     * selected segment index.
     * 
     * @param button
     *            The RadioButton to be selected.
     * 
     */

    void setChecked(RadioButton button) {
        int index = radioButtons.indexOf(button);
        ((RadioGroupAdapter) xmlvmGetViewHandler().getContentView()).setSelectedSegmentIndex(index);
    }

    /**
     * 
     * Sets the title for the given RadioButton by setting the
     * UISegmentedControl's title at the index associated with the button.
     * 
     * @param button
     *            The RadioButton which triggered setting the text.
     * 
     * @param text
     *            The text to be set.
     * 
     */

    void setText(RadioButton button, String text) {
        int index = radioButtons.indexOf(button);
        ((RadioGroupAdapter) xmlvmGetViewHandler().getContentView()).setTitle(text, index);
    }

    /**
     * 
     * Determines the currently selected RadioButton.
     * 
     * @return The determined RadioButton or null, if none is selected.
     * 
     */

    RadioButton getSelectedRadioButton() {
        int index = ((RadioGroupAdapter) xmlvmGetViewHandler().getContentView())
                .getSelectedSegmentIndex();
        return index >= 0 ? radioButtons.get(index) : null;
    }
}
