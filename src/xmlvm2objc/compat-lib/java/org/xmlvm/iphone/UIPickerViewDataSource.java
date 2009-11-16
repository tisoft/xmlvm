
package org.xmlvm.iphone;

/**
 * 
 * @author teras
 */
public interface UIPickerViewDataSource {

    public int numberOfComponentsInPickerView(UIPickerView view);

    public int numberOfRowsInComponent(UIPickerView view, int component);
}
