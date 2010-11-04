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
#import <MessageUI/MessageUI.h>
#import "java_util_ArrayList.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_UIViewController_macros.h"

@class org_xmlvm_iphone_MFMessageComposeViewControllerDelegate;

/** @author teras */

typedef MFMessageComposeViewController org_xmlvm_iphone_MFMessageComposeViewControllerImpl;

@interface MFMessageComposeViewController (cat_org_xmlvm_iphone_MFMessageComposeViewControllerImpl)
+ (int) canSendText__;
- (void) __init_org_xmlvm_iphone_MFMessageComposeViewController__;
- (java_lang_String*) getBody__;
- (void) setBody___java_lang_String :(java_lang_String*)n1;
- (java_util_ArrayList*) getRecipients__;
- (void) setRecipients___java_util_ArrayList :(java_util_ArrayList*)n1;
- (org_xmlvm_iphone_MFMessageComposeViewControllerDelegate*) getMessageComposeDelegate__;
- (void) setMessageComposeDelegate___org_xmlvm_iphone_MFMessageComposeViewControllerDelegate :(org_xmlvm_iphone_MFMessageComposeViewControllerDelegate*)n1;
@end

@interface org_xmlvm_iphone_MFMessageComposeViewController : org_xmlvm_iphone_MFMessageComposeViewControllerImpl
UIVIEWCONTROLLER_CALLBACKS_INC
@end
