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

#import "org_xmlvm_iphone_MFMailComposeViewController.h"
#import "org_xmlvm_iphone_MFMailComposeViewControllerDelegate.h"
#import "org_xmlvm_iphone_UIViewController.h"

/** @author teras */

@implementation org_xmlvm_iphone_MFMailComposeViewController
UIVIEWCONTROLLER_CALLBACKS
@end


@implementation MFMailComposeViewController (cat_org_xmlvm_iphone_MFMailComposeViewControllerImpl)

- (void) __init_org_xmlvm_iphone_MFMailComposeViewController__
{
}


+ (int) canSendMail__
{
	return [self canSendMail];
}


- (org_xmlvm_iphone_MFMailComposeViewControllerDelegate*) getMailComposeDelegate__
{
	return_XMLVM(mailComposeDelegate)
}


- (void) setMailComposeDelegate___org_xmlvm_iphone_MFMailComposeViewControllerDelegate :(org_xmlvm_iphone_MFMailComposeViewControllerDelegate*)deleg
{
	XMLVM_PROPERTY(mailComposeDelegate,deleg)
}


- (void) addAttachmentData___org_xmlvm_iphone_NSData_java_lang_String_java_lang_String :(NSData*)data :(NSString*)mimeType :(NSString*)filename
{
	[self addAttachmentData:data mimeType:mimeType fileName:filename];
}


- (void) setBccRecipients___java_util_ArrayList :(java_util_ArrayList*)bccRecipients
{
	[self setBccRecipients:bccRecipients];
}


- (void) setCcRecipients___java_util_ArrayList :(java_util_ArrayList*)ccRecipients
{
	[self setCcRecipients:ccRecipients];
}


- (void) setMessageBody___java_lang_String_boolean :(NSString*)body :(int)isHTML
{
	[self setMessageBody:body isHTML:isHTML];
}


- (void) setSubject___java_lang_String :(NSString*)subject
{
	[self setSubject:subject];
}


- (void) setToRecipients___java_util_ArrayList :(java_util_ArrayList*)toRecipients
{
	[self setToRecipients:toRecipients];
}

@end

