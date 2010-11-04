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

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public class MFMailComposeViewController extends UINavigationController {

    private MFMailComposeViewControllerDelegate mailComposeDelegate;


    public MFMailComposeViewController() {
        super(null);
        // TODO : Java implementation
    }

    public MFMailComposeViewControllerDelegate getMailComposeDelegate() {
        return mailComposeDelegate;
    }

    public void setMailComposeDelegate(MFMailComposeViewControllerDelegate mailComposeDelegate) {
        this.mailComposeDelegate = mailComposeDelegate;
    }

    public static boolean canSendMail() {
        return true;
    }

    public void addAttachmentData(NSData attachment, NSString mimeType, String filename) {
        // TODO : Java implementation
    }

    public void setBccRecipients(ArrayList<String> bccRecipients) {
        // TODO : Java implementation
    }

    public void setCcRecipients(ArrayList<String> ccRecipients) {
        // TODO : Java implementation
    }

    public void setMessageBody(String body, boolean isHTML) {
        // TODO : Java implementation
    }

    public void setSubject(String subject) {
        // TODO : Java implementation
    }

    public void setToRecipients(ArrayList<String> setToRecipients) {
        // TODO : Java implementation
    }
}
