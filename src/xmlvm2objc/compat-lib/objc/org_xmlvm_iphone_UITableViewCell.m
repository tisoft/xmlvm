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

#import "org_xmlvm_iphone_UITableViewCell.h"


// UITableViewCell
//----------------------------------------------------------------------------
//@implementation UITableViewCell (cat_org_xmlvm_iphone_UITableViewCell)
@implementation org_xmlvm_iphone_UITableViewCell


- (void) __init_org_xmlvm_iphone_UITableViewCell__
{
	NSString *classname = [NSString stringWithUTF8String:object_getClassName(self)];
	NSString * reuse = [classname stringByReplacingOccurrencesOfString:@"_" withString:@"."];
	[self __init_org_xmlvm_iphone_UITableViewCell___int_java_lang_String:UITableViewCellStyleDefault :reuse];
}

- (void) __init_org_xmlvm_iphone_UITableViewCell___int_java_lang_String :(int)style :(NSString*)reuseIdentifier
{
	[self initWithStyle:style reuseIdentifier:XMLVM_NULL2NIL(reuseIdentifier)];
}


- (org_xmlvm_iphone_UIView*) getContentView__
{
	return_XMLVM(contentView)
}

- (void) setBackgroundView___org_xmlvm_iphone_UIView : (org_xmlvm_iphone_UIView*) backgroundView
{
	[self setBackgroundView:backgroundView];
}

- (org_xmlvm_iphone_UIView*) getBackgroundView__
{
	return_XMLVM(backgroundView)
}

- (void) setSelectedBackgroundView___org_xmlvm_iphone_UIView : (org_xmlvm_iphone_UIView*) selectedBackgroundView
{
	[self setSelectedBackgroundView:selectedBackgroundView];
}

- (org_xmlvm_iphone_UIView*) getSelectedBackgroundView__
{
	return_XMLVM(selectedBackgroundView)
}

- (org_xmlvm_iphone_UILabel*) getTextLabel__
{
	return_XMLVM(textLabel)
}

- (org_xmlvm_iphone_UILabel*) getDetailTextLabel__
{
	return_XMLVM(detailTextLabel)
}

- (org_xmlvm_iphone_UIImageView*) getImageView__
{
	return_XMLVM(imageView)
}

- (void) setSelected___boolean :(int)selected
{
	[self setSelected:selected];
}

- (int) isSelected__
{
	return [self isSelected];
}

- (UITableViewCellEditingStyle) editingStyle {
	return [self getEditingStyle__];
}

- (int) getEditingStyle__
{
	return UITableViewCellEditingStyleNone;
}

- (void) layoutSubviews
{
	[self layoutSubviews__];
}

- (void) layoutSubviews__
{
	[super layoutSubviews];
}

- (org_xmlvm_iphone_UIView*) getAccessoryView__
{
	return_XMLVM(accessoryView)
}

- (void) setAccessoryView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)acc
{
	[self setAccessoryView:acc];
}

- (java_lang_String*) getReuseIdentifier__
{
	return_XMLVM(reuseIdentifier)
}

@end
