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

import java.util.List;

import org.xmlvm.acl.common.adapter.BitmapDrawableAdapter;
import org.xmlvm.acl.common.adapter.ButtonAdapter;
import org.xmlvm.acl.common.objects.CommonFont;
import org.xmlvm.acl.common.objects.CommonView;
import org.xmlvm.acl.wp7.objects.WP7Font;
import org.xmlvm.acl.wp7.objects.WP7View;

import Compatlib.System.Object;
import Compatlib.System.Windows.RoutedEventArgs;
import Compatlib.System.Windows.RoutedEventHandler;
import Compatlib.System.Windows.Controls.Button;
import android.view.View.OnClickListener;

/**
 *
 */
public class WP7ButtonAdapter extends WP7View implements ButtonAdapter {

    private OnClickListener listener;
    private android.widget.Button button;

    public WP7ButtonAdapter(android.widget.Button button) {
        super(button);
        this.button = button;
        this.setElement(new Button());
    }

    @Override
    public void setTitle(String text) {
        ((Button)this.getElement()).setContent(new Compatlib.System.String(text));
    }

    @Override
    public void setTitleColor(int xmlvmConvertIntToColor) {
    }

    @Override
    public void setOnClickListener(OnClickListener listener) {
        this.listener = listener;
        ((Button)this.getElement()).Click.__add(new RoutedEventHandler(this, new Compatlib.System.String("button_onClick")));
    }
    
    public void button_onClick(Object sender, RoutedEventArgs e) {
        listener.onClick(button);
    }

    @Override
    public CommonFont getFont() {
        return new WP7Font("Sesoe UI", 16);
    }

    @Override
    public void setFont(CommonFont font) {
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#setBackgroundColor(java.lang.Integer)
     */
    @Override
    public void setBackgroundColor(Integer bcolor) {
        // TODO Auto-generated method stub
        
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#isUserInteractionEnabled()
     */
    @Override
    public boolean isUserInteractionEnabled() {
        // TODO Auto-generated method stub
        return false;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#setUserInteractionEnabled(boolean)
     */
    @Override
    public void setUserInteractionEnabled(boolean status) {
        // TODO Auto-generated method stub
        
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#resignFirstResponder()
     */
    @Override
    public void resignFirstResponder() {
        // TODO Auto-generated method stub
        
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#setOpaque(boolean)
     */
    @Override
    public void setOpaque(boolean b) {
        // TODO Auto-generated method stub
        
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#getBackgroundColor()
     */
    @Override
    public Integer getBackgroundColor() {
        // TODO Auto-generated method stub
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#bringSubviewToFront(org.xmlvm.common.objects.CommonDeviceView)
     */
    @Override
    public void bringSubviewToFront(CommonView view) {
        // TODO Auto-generated method stub
        
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#getSuperview()
     */
    @Override
    public CommonView getSuperview() {
        // TODO Auto-generated method stub
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#setTopLevelViewController()
     */
    @Override
    public void setTopLevelViewController() {
        // TODO Auto-generated method stub
        
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.objects.CommonDeviceView#getSubviews()
     */
    @Override
    public List<CommonView> getSubviews() {
        // TODO Auto-generated method stub
        return null;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.ButtonAdapter#setImage(org.xmlvm.common.adapter.BitmapDrawableAdapter, int)
     */
    @Override
    public void setImage(BitmapDrawableAdapter img, int controlState) {
        // TODO Auto-generated method stub
        
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.ButtonAdapter#getTextSize()
     */
    @Override
    public float getTextSize() {
        // TODO Auto-generated method stub
        return 0;
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.ButtonAdapter#setTextSize(float)
     */
    @Override
    public void setTextSize(float size) {
        // TODO Auto-generated method stub
        
    }

    /* (non-Javadoc)
     * @see org.xmlvm.common.adapter.ButtonAdapter#getCurrentBackgroundImage()
     */
    @Override
    public BitmapDrawableAdapter getCurrentBackgroundImage() {
        // TODO Auto-generated method stub
        return null;
    }

}
