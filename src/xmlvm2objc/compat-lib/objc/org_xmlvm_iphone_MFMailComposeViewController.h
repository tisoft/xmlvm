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
#import <MessageUI/MessageUI.h>
#import "java_util_ArrayList.h"
#import "org_xmlvm_iphone_UIViewController_macros.h"

@class org_xmlvm_iphone_MFMailComposeViewControllerDelegate;



typedef MFMailComposeViewController org_xmlvm_iphone_MFMailComposeViewControllerImpl;

@interface MFMailComposeViewController (cat_org_xmlvm_iphone_MFMailComposeViewControllerImpl)

+ (int) canSendMail__;
- (void) __init_org_xmlvm_iphone_MFMailComposeViewController__;
- (org_xmlvm_iphone_MFMailComposeViewControllerDelegate*) getMailComposeDelegate__;
- (void) setMailComposeDelegate___org_xmlvm_iphone_MFMailComposeViewControllerDelegate :(org_xmlvm_iphone_MFMailComposeViewControllerDelegate*)deleg;
- (void) addAttachmentData___org_xmlvm_iphone_NSData_java_lang_String_java_lang_String :(NSData*)data :(NSString*)mimeType :(NSString*)filename;
- (void) setBccRecipients___java_util_ArrayList :(java_util_ArrayList*)bccRecipients;
- (void) setCcRecipients___java_util_ArrayList :(java_util_ArrayList*)ccRecipients;
- (void) setMessageBody___java_lang_String_boolean :(NSString*)body :(int)isHTML;
- (void) setSubject___java_lang_String :(NSString*)subject;
- (void) setToRecipients___java_util_ArrayList :(java_util_ArrayList*)toRecipients;

@end

@interface org_xmlvm_iphone_MFMailComposeViewController : org_xmlvm_iphone_MFMailComposeViewControllerImpl
UIVIEWCONTROLLER_CALLBACKS_INC
@end
