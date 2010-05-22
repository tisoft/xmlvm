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

#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_UIView.h"
#import "org_xmlvm_iphone_UILabel.h"
#import "org_xmlvm_iphone_UIImageView.h"

// UITableViewCell
//----------------------------------------------------------------------------
//typedef UITableViewCell org_xmlvm_iphone_UITableViewCell;
//@interface UITableViewCell (cat_org_xmlvm_iphone_UITableViewCell)
@interface org_xmlvm_iphone_UITableViewCell : UITableViewCell

- (void) __init_org_xmlvm_iphone_UITableViewCell__;
- (void) __init_org_xmlvm_iphone_UITableViewCell___int_java_lang_String :(int)style :(NSString*)reuseIdentifier;
- (org_xmlvm_iphone_UIView*) getContentView__;
- (void) setBackgroundView___org_xmlvm_iphone_UIView : (org_xmlvm_iphone_UIView*) backgroundView;
- (org_xmlvm_iphone_UIView*) getBackgroundView__;
- (void) setSelectedBackgroundView___org_xmlvm_iphone_UIView : (org_xmlvm_iphone_UIView*) selectedBackgroundView;
- (org_xmlvm_iphone_UIView*) getSelectedBackgroundView__;
- (org_xmlvm_iphone_UILabel*) getTextLabel__;
- (org_xmlvm_iphone_UILabel*) getDetailTextLabel__;
- (org_xmlvm_iphone_UIImageView*) getImageView__;
- (void) setSelected___boolean :(int)selected;
- (int) isSelected__;
- (void) layoutSubviews;
- (void) layoutSubviews__;
- (int) getEditingStyle__;
- (org_xmlvm_iphone_UIView*) getAccessoryView__;
- (void) setAccessoryView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)acc;

@end
