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
package org.xmlvm.iphone;

import java.util.ArrayList;

import org.xmlvm.XMLVMSkeletonOnly;

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
