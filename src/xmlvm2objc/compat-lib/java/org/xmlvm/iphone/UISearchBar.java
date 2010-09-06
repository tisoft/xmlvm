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
package org.xmlvm.iphone;

import java.util.ArrayList;

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.renderer.UISearchBarRenderer;

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public class UISearchBar extends UIControl {

    private String              placeholder;
    private String              prompt;
    private String              text;
    private int                 barStyle;
    private UIColor             tintColor;
    private boolean             translucent;
    private int                 autocapitalizationType;
    private int                 autocorrectionType;
    private int                 keyboardType;
    private boolean             showsBookmarkButton;
    private boolean             showsCancelButton;
    private UISearchBarDelegate delegate;
    private boolean             showsScopeBar;
    private int                 selectedScopeButtonIndex;
    private ArrayList<String>   scopeButtonTitles;

    public UISearchBar() {
        this(new CGRect(0, 0, 0, 0));
    }

    public UISearchBar(CGRect rect) {
        super(rect);
        xmlvmSetRenderer(new UISearchBarRenderer(this));
    }

    public int getAutocapitalizationType() {
        return autocapitalizationType;
    }

    public void setAutocapitalizationType(int uiTextAutocapitalizationType) {
        this.autocapitalizationType = uiTextAutocapitalizationType;
    }

    public int getAutocorrectionType() {
        return autocorrectionType;
    }

    public void setAutocorrectionType(int uiTextAutocorrectionType) {
        this.autocorrectionType = uiTextAutocorrectionType;
    }

    public int getBarStyle() {
        return barStyle;
    }

    public void setBarStyle(int uiBarStyle) {
        this.barStyle = uiBarStyle;
    }

    public UISearchBarDelegate getDelegate() {
        return delegate;
    }

    public void setDelegate(UISearchBarDelegate delegate) {
        this.delegate = delegate;
    }

    public int getKeyboardType() {
        return keyboardType;
    }

    public void setKeyboardType(int uiKeyboardType) {
        this.keyboardType = uiKeyboardType;
    }

    public String getPlaceholder() {
        return placeholder;
    }

    public void setPlaceholder(String placeholder) {
        this.placeholder = placeholder;
    }

    public String getPrompt() {
        return prompt;
    }

    public void setPrompt(String prompt) {
        this.prompt = prompt;
    }

    public boolean isShowsBookmarkButton() {
        return showsBookmarkButton;
    }

    public void setShowsBookmarkButton(boolean showsBookmarkButton) {
        this.showsBookmarkButton = showsBookmarkButton;
    }

    public boolean isShowsCancelButton() {
        return showsCancelButton;
    }

    public void setShowsCancelButton(boolean showsCancelButton) {
        this.showsCancelButton = showsCancelButton;
    }

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public UIColor getTintColor() {
        return tintColor;
    }

    public void setTintColor(UIColor tintColor) {
        this.tintColor = tintColor;
    }

    public boolean isTranslucent() {
        return translucent;
    }

    public void setTranslucent(boolean translucent) {
        this.translucent = translucent;
    }

    public ArrayList<String> getScopeButtonTitles() {
        return scopeButtonTitles;
    }

    public void setScopeButtonTitles(ArrayList<String> scopeButtonTitles) {
        this.scopeButtonTitles = scopeButtonTitles;
    }

    public int getSelectedScopeButtonIndex() {
        return selectedScopeButtonIndex;
    }

    public void setSelectedScopeButtonIndex(int selectedScopeButtonIndex) {
        this.selectedScopeButtonIndex = selectedScopeButtonIndex;
    }

    public boolean isShowsScopeBar() {
        return showsScopeBar;
    }

    public void setShowsScopeBar(boolean showsScopeBar) {
        this.showsScopeBar = showsScopeBar;
    }
}
