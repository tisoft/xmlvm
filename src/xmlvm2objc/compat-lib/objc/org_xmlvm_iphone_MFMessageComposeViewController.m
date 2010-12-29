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

#import "org_xmlvm_iphone_MFMessageComposeViewController.h"
#import "org_xmlvm_iphone_MFMessageComposeViewControllerDelegate.h"



@implementation org_xmlvm_iphone_MFMessageComposeViewController
UIVIEWCONTROLLER_CALLBACKS
@end


@implementation MFMessageComposeViewController (cat_org_xmlvm_iphone_MFMessageComposeViewControllerImpl)

+ (int) canSendText__
{
	return [MFMessageComposeViewController canSendText];
}

- (void) __init_org_xmlvm_iphone_MFMessageComposeViewController__
{
}

- (java_lang_String*) getBody__
{
	return_XMLVM(body)
}

- (void) setBody___java_lang_String :(java_lang_String*)n1
{
	[self setBody:n1];
}

- (java_util_ArrayList*) getRecipients__
{
	return_XMLVM(recipients)
}

- (void) setRecipients___java_util_ArrayList :(java_util_ArrayList*)n1
{
	[self setRecipients:n1];
}

- (org_xmlvm_iphone_MFMessageComposeViewControllerDelegate*) getMessageComposeDelegate__
{
	return_XMLVM(messageComposeDelegate)
}

- (void) setMessageComposeDelegate___org_xmlvm_iphone_MFMessageComposeViewControllerDelegate :(org_xmlvm_iphone_MFMessageComposeViewControllerDelegate*)n1
{
	XMLVM_PROPERTY(messageComposeDelegate,n1)
}

@end
