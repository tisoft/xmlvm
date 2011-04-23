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

package org.xmlvm.iphone;

import static org.xmlvm.iphone.UIButtonType.Custom;
import static org.xmlvm.iphone.UIButtonType.RoundedRect;
import static org.xmlvm.iphone.UIControlEvent.TouchUpInside;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

import org.xmlvm.XMLVMIgnore;
import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.renderer.UIAlertButtonRenderer;
import org.xmlvm.iphone.internal.renderer.UIButtonRenderer;
import org.xmlvm.iphone.internal.renderer.UICustomButtonRenderer;
import org.xmlvm.iphone.internal.renderer.UIRoundRectButtonRenderer;

@XMLVMSkeletonOnly
public class UIButton extends UIControl {

    private final static int NUMBER_OF_STATES = 16;
    private int              buttonType;
    private UIFont           font;
    private String[]         title;
    private UIColor[]        titleColor;
    private UIColor[]        titleShadowColor;
    private UIImage[]        backgroundImage;
    private UIImage[]        image;
    private CGSize           titleShadowOffset;
    private boolean          adjustsImageWhenHighlighted;
    private boolean          adjustsImageWhenDisabled;
    private boolean          showsTouchWhenHighlighted;


    @XMLVMIgnore
    protected UIButton(int uiButtonType) {
        super();
        callDelegates = false;
        setBackgroundColor(UIColor.clearColor);
        this.buttonType = uiButtonType;

        title = new String[NUMBER_OF_STATES];
        titleColor = new UIColor[NUMBER_OF_STATES];
        titleShadowColor = new UIColor[NUMBER_OF_STATES];
        backgroundImage = new UIImage[NUMBER_OF_STATES];
        image = new UIImage[NUMBER_OF_STATES];

        titleColor[UIControlState.Normal] = UIButtonRenderer.DEFAULT_TITLE_COLOR_NORMAL;
        titleShadowColor[UIControlState.Normal] = UIButtonRenderer.DEFAULT_TITLE_SHADOW_COLOR_NORMAL;

        setContentHorizontalAlignment(UIControlContentHorizontalAlignment.Center);
        setContentVerticalAlignment(UIControlContentVerticalAlignment.Center);
        
        switch (buttonType) {
        case UIAlertButtonRenderer.AlertViewType:
            xmlvmSetRenderer(new UIAlertButtonRenderer(this));
            break;
        case RoundedRect:
            titleColor[UIControlState.Highlighted] = UIButtonRenderer.DEFAULT_TITLE_COLOR_HIGHLIGHTED;
            xmlvmSetRenderer(new UIRoundRectButtonRenderer(this));
            break;
        case Custom:
        default:
            xmlvmSetRenderer(new UICustomButtonRenderer(this));
            break;
        }
    }

    public static UIButton buttonWithType(int uiButtonType) {
        return new UIButton(uiButtonType);
    }

    public void setFont(UIFont font) {
        this.font = font;
        setNeedsDisplay();
    }

    public UIFont getFont() {
        return font;
    }

    public int getButtonType() {
        return buttonType;
    }

    public UILabel getTitleLabel() {
        // TODO: Java implementation
        return null;
    }
    
    public void setTitle(String title, int uiControlState) {
        if (uiControlState < 0 || uiControlState > this.title.length) {
            return;
        }
        this.title[uiControlState] = title;
        setNeedsDisplay();
    }

    public String titleForState(int uiControlState) {
        if (uiControlState < 0 || uiControlState >= title.length) {
            uiControlState = 0;
        }
        return title[uiControlState] == null ? title[0] : title[uiControlState];
    }

    public String getCurrentTitle() {
        return titleForState(((UIButtonRenderer) xmlvmGetRenderer()).getState());
    }

    public void setTitleColor(UIColor titleColor, int uiControlState) {
        if (uiControlState < 0 || uiControlState > this.titleColor.length) {
            return;
        }
        this.titleColor[uiControlState] = titleColor;
        setNeedsDisplay();
    }

    public UIColor titleColorForState(int uiControlState) {
        if (uiControlState < 0 || uiControlState >= titleColor.length) {
            uiControlState = 0;
        }
        return titleColor[uiControlState] == null ? titleColor[0] : titleColor[uiControlState];
    }

    public UIColor getCurrentTitleColor() {
        return titleColorForState(((UIButtonRenderer) xmlvmGetRenderer()).getState());
    }

    public void setTitleShadowColor(UIColor titleColor, int uiControlState) {
        if (uiControlState < 0 || uiControlState > this.titleShadowColor.length) {
            return;
        }
        this.titleShadowColor[uiControlState] = titleColor;
        setNeedsDisplay();
    }

    public UIColor titleShadowColorForState(int uiControlState) {
        if (uiControlState < 0 || uiControlState >= titleShadowColor.length) {
            uiControlState = 0;
        }
        return titleShadowColor[uiControlState] == null ? titleShadowColor[0]
                : titleShadowColor[uiControlState];
    }

    public UIColor getCurrentTitleShadowColor() {
        return titleShadowColorForState(((UIButtonRenderer) xmlvmGetRenderer()).getState());
    }

    public void setImage(UIImage img, int uiControlState) {
        if (uiControlState < 0 || uiControlState > image.length) {
            return;
        }
        image[uiControlState] = img;
        setNeedsDisplay();
    }

    public UIImage imageForState(int uiControlState) {
        return getGenericImageForState(image, uiControlState);
    }

    public UIImage getCurrentImage() {
        return imageForState(((UIButtonRenderer) xmlvmGetRenderer()).getState());
    }

    public void setBackgroundImage(UIImage img, int uiControlState) {
        if (uiControlState < 0 || uiControlState > backgroundImage.length) {
            return;
        }
        backgroundImage[uiControlState] = img;
        setNeedsDisplay();
    }

    public UIImage backgroundImageForState(int uiControlState) {
        return getGenericImageForState(backgroundImage, uiControlState);
    }

    public UIImage getCurrentBackgroundImage() {
        return backgroundImageForState(((UIButtonRenderer) xmlvmGetRenderer()).getState());
    }

    private UIImage getGenericImageForState(UIImage[] img, int uiControlState) {
        if (uiControlState < 0 || uiControlState >= img.length) {
            uiControlState = 0;
        }
        return img[uiControlState] == null ? img[0] : img[uiControlState];
    }

    public void setTitleShadowOffset(CGSize titleShadowOffset) {
        this.titleShadowOffset = titleShadowOffset;
        setNeedsDisplay();
    }

    public CGSize getTitleShadowOffset() {
        return titleShadowOffset;
    }

    @Override
    public void touchesBegan(Set<UITouch> touches, UIEvent event) {
        if (xmlvmTouchedInsideView(touches)) {
            ((UIButtonRenderer) xmlvmGetRenderer()).setHighlighted(true);
            setNeedsDisplay();
        }
    }

    // TODO UIButton should make use of UIControl and not the raw interface of
    // UIResponder
    @Override
    public void touchesEnded(Set<UITouch> touches, UIEvent event) {
        UIButtonRenderer gui = (UIButtonRenderer) xmlvmGetRenderer();
        if (gui.isHighlighted() && xmlvmTouchedInsideView(touches))
            for (Iterator<Map.Entry<Integer, UIControlDelegate>> it = delegates.entrySet()
                    .iterator(); it.hasNext();) {
                Map.Entry<Integer, UIControlDelegate> e = it.next();
                if ((e.getKey().intValue() & TouchUpInside) > 0)
                    e.getValue().raiseEvent(this, UIControlEvent.TouchUpInside);
            }
        gui.setHighlighted(false);
        setNeedsDisplay();
    }

    @Override
    public void setAlpha(float alpha) {
        super.setAlpha(alpha);
        ((UIButtonRenderer) xmlvmGetRenderer()).updateButtonElements();
    }

    public boolean isAdjustsImageWhenDisabled() {
        return adjustsImageWhenDisabled;
    }

    public void setAdjustsImageWhenDisabled(boolean adjustsImageWhenDisabled) {
        this.adjustsImageWhenDisabled = adjustsImageWhenDisabled;
    }

    public boolean isAdjustsImageWhenHighlighted() {
        return adjustsImageWhenHighlighted;
    }

    public void setAdjustsImageWhenHighlighted(boolean adjustsImageWhenHighlighted) {
        this.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted;
    }

    public boolean isShowsTouchWhenHighlighted() {
        return showsTouchWhenHighlighted;
    }

    public void setShowsTouchWhenHighlighted(boolean showsTouchWhenHighlighted) {
        this.showsTouchWhenHighlighted = showsTouchWhenHighlighted;
    }
}
