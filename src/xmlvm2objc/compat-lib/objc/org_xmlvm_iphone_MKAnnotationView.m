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

#import "org_xmlvm_iphone_MKAnnotationView.h"

@implementation MKAnnotationView (cat_org_xmlvm_iphone_MKAnnotationView)

- (void) __init_org_xmlvm_iphone_MKAnnotationView___org_xmlvm_iphone_MKAnnotation_java_lang_String :(org_xmlvm_iphone_MKAnnotation*)n1 :(java_lang_String*)n2
{
	[self initWithAnnotation:n1 reuseIdentifier:n2];
}

- (void) prepareForReuse__
{
	[self prepareForReuse];
}

- (int) isEnabled__
{
	return [self isEnabled];
}

- (void) setEnabled___boolean :(int)n1
{
	[self setEnabled:n1];
}

- (org_xmlvm_iphone_MKAnnotation*) getAnnotation__
{
	return_XMLVM(annotation)
}

- (void) setAnnotation___org_xmlvm_iphone_MKAnnotation :(org_xmlvm_iphone_MKAnnotation*)n1
{
	[self setAnnotation:n1];
}

- (org_xmlvm_iphone_CGPoint*) getCalloutOffset__
{
	return [[org_xmlvm_iphone_CGPoint alloc] initWithCGPoint:[self calloutOffset]];
}

- (void) setCalloutOffset___org_xmlvm_iphone_CGPoint :(org_xmlvm_iphone_CGPoint*)n1
{
	[self setCalloutOffset:[n1 getCGPoint]];
}

- (org_xmlvm_iphone_CGPoint*) getCenterOffset__
{
	return [[org_xmlvm_iphone_CGPoint alloc] initWithCGPoint:[self centerOffset]];
}

- (void) setCenterOffset___org_xmlvm_iphone_CGPoint :(org_xmlvm_iphone_CGPoint*)n1
{
	[self setCenterOffset:[n1 getCGPoint]];
}

- (int) isHighlighted__
{
	return [self isHighlighted];
}

- (void) setHighlighted___boolean :(int)n1
{
	[self setHighlighted:n1];
}

- (org_xmlvm_iphone_UIImage*) getImage__
{
	return_XMLVM(image)
}

- (void) setImage___org_xmlvm_iphone_UIImage :(org_xmlvm_iphone_UIImage*)n1
{
	[self setImage:n1];
}

- (java_lang_String*) getReuseIdentifier__
{
	return_XMLVM(reuseIdentifier)
}

- (int) isSelected__
{
	return [self isSelected];
}

- (void) setSelected___boolean :(int)n1
{
	[self setSelected:n1];
}

- (void) setSelected___boolean_boolean :(int)n1 :(int)n2
{
	[self setSelected:n1 animated:n2];
}

- (int) isCanShowCallout__
{
	return [self canShowCallout];
}

- (void) setCanShowCallout___boolean :(int)n1
{
	[self setCanShowCallout:n1];
}

- (org_xmlvm_iphone_UIView*) getLeftCalloutAccessoryView__
{
	return_XMLVM(leftCalloutAccessoryView)
}

- (void) setLeftCalloutAccessoryView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1
{
	[self setLeftCalloutAccessoryView:n1];
}

- (org_xmlvm_iphone_UIView*) getRightCalloutAccessoryView__
{
	return_XMLVM(rightCalloutAccessoryView)
}

- (void) setRightCalloutAccessoryView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1
{
	[self setRightCalloutAccessoryView:n1];
}

- (int) getDragState__
{
	return [self dragState];
}

- (void) setDragState___int :(int)n1
{
	[self setDragState:n1];
}

- (void) setDragState___int_boolean :(int)n1 :(int)n2
{
	[self setDragState:n1 animated:n2];
}

- (int) isDraggable__
{
	return [self isDraggable];
}

- (void) setDraggable___boolean :(int)n1
{
	[self setDraggable:n1];
}

@end

