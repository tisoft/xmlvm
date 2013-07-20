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

#import "xmlvm.h"
#import "org_xmlvm_iphone_UIView.h"
#import "org_xmlvm_iphone_CGPoint.h"
#import "java_lang_Object.h"
#import "org_xmlvm_iphone_MKAnnotation.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_UIImage.h"
#import <MapKit/MKAnnotationView.h>

#define org_xmlvm_iphone_MKAnnotationView MKAnnotationView

@interface MKAnnotationView (cat_org_xmlvm_iphone_MKAnnotationView)

- (void) __init_org_xmlvm_iphone_MKAnnotationView___org_xmlvm_iphone_MKAnnotation_java_lang_String :(org_xmlvm_iphone_MKAnnotation*)n1 :(java_lang_String*)n2;
- (void) prepareForReuse__;
- (int) isEnabled__;
- (void) setEnabled___boolean :(int)n1;
- (org_xmlvm_iphone_MKAnnotation*) getAnnotation__;
- (void) setAnnotation___org_xmlvm_iphone_MKAnnotation :(org_xmlvm_iphone_MKAnnotation*)n1;
- (org_xmlvm_iphone_CGPoint*) getCalloutOffset__;
- (void) setCalloutOffset___org_xmlvm_iphone_CGPoint :(org_xmlvm_iphone_CGPoint*)n1;
- (org_xmlvm_iphone_CGPoint*) getCenterOffset__;
- (void) setCenterOffset___org_xmlvm_iphone_CGPoint :(org_xmlvm_iphone_CGPoint*)n1;
- (int) isHighlighted__;
- (void) setHighlighted___boolean :(int)n1;
- (org_xmlvm_iphone_UIImage*) getImage__;
- (void) setImage___org_xmlvm_iphone_UIImage :(org_xmlvm_iphone_UIImage*)n1;
- (java_lang_String*) getReuseIdentifier__;
- (int) isSelected__;
- (void) setSelected___boolean :(int)n1;
- (void) setSelected___boolean_boolean :(int)n1 :(int)n2;
- (int) isCanShowCallout__;
- (void) setCanShowCallout___boolean :(int)n1;
- (org_xmlvm_iphone_UIView*) getLeftCalloutAccessoryView__;
- (void) setLeftCalloutAccessoryView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
- (org_xmlvm_iphone_UIView*) getRightCalloutAccessoryView__;
- (void) setRightCalloutAccessoryView___org_xmlvm_iphone_UIView :(org_xmlvm_iphone_UIView*)n1;
- (int) getDragState__;
- (void) setDragState___int :(int)n1;
- (void) setDragState___int_boolean :(int)n1 :(int)n2;
- (int) isDraggable__;
- (void) setDraggable___boolean :(int)n1;

@end

