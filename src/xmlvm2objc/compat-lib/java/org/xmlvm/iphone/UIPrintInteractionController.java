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
import java.util.HashSet;
import java.util.Set;
import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class UIPrintInteractionController extends org.xmlvm.iphone.NSObject {
    private static final UIPrintInteractionController instance = new UIPrintInteractionController();

    private NSObject                                  printingItem;
    private ArrayList<NSObject>                       printingItems;


    private UIPrintInteractionController() {

    }

    public static UIPrintInteractionController sharedPrintController() {
        return instance;
    }

    public static boolean isPrintingAvailable() {
        return false;
    }

    public static boolean canPrintData(NSData data) {
        return false;
    }

    public static boolean canPrintURL(NSURL data) {
        return false;
    }

    public static Set<?> printableUTIs() {
        return new HashSet<Object>();
    }

    public void presentAnimated(boolean animated,
            UIPrintInteractionCompletionHandler completionHandler) {

    }

    public void presentFromBarButtonItem(UIBarButtonItem item, boolean animated,
            UIPrintInteractionCompletionHandler completionHandler) {

    }

    public void presentFromRect(org.xmlvm.iphone.CGRect rect, UIView inView, boolean animated,
            UIPrintInteractionCompletionHandler completionHandler) {

    }

    public void dismissAnimated(boolean animated) {

    }

    public NSObject getPrintingItem() {
        return printingItem;
    }

    public void setPrintingItem(NSObject printingItem) {
        this.printingItem = printingItem;
    }

    public ArrayList<NSObject> getPrintingItems() {
        return printingItems;
    }

    public void setPrintingItems(ArrayList<NSObject> printingItems) {
        this.printingItems = printingItems;
    }


    /*
     * Providing the Source of Printable Content printPageRenderer property
     * printFormatter property Accessing Print-Job Information printInfo
     * property printPaper property showsPageRange property Assigning the
     * Delegate delegate property
     */

    public static interface UIPrintInteractionCompletionHandler {
        public void completed(UIPrintInteractionController controller, boolean completed,
                NSError error);
    }

}
