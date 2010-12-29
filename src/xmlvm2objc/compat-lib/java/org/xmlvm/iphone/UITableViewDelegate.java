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

import org.xmlvm.XMLVMSkeletonOnly;
import org.xmlvm.iphone.internal.OptionalSelectorException;

@XMLVMSkeletonOnly
abstract public class UITableViewDelegate extends NSObject {

    public void willDisplayCellForRowAtIndexPath(UITableView tableview, UITableViewCell cell,
            NSIndexPath indexPath) {
    }

    public void accessoryButtonTappedForRowWithIndexPath(UITableView tableview,
            NSIndexPath indexPath) {
    }

    public void didSelectRowAtIndexPath(UITableView tableview, NSIndexPath indexPath) {
    }

    public void didDeselectRowAtIndexPath(UITableView tableview, NSIndexPath indexPath) {
    }

    public void willBeginEditingRowAtIndexPath(UITableView tableview, NSIndexPath indexPath) {
    }

    public void didEndEditingRowAtIndexPath(UITableView tableview, NSIndexPath indexPath) {
    }

    public boolean shouldIndentWhileEditingRowAtIndexPath(UITableView tableview,
            NSIndexPath indexPath) {
        return true;
    }

    public int editingStyleForRowAtIndexPath(UITableView tableview, NSIndexPath indexPath) {
        return UITableViewCellEditingStyle.Delete;
    }

    /**
     * This is an optional method.
     * 
     * @see org.xmlvm.iphone.internal.OptionalSelectorException
     */
    public float heightForRowAtIndexPath(UITableView tableView, NSIndexPath indexPath) {
        throw new OptionalSelectorException();
    }

    /**
     * This is an optional method.
     * 
     * @see org.xmlvm.iphone.internal.OptionalSelectorException
     */
    public UIView viewForHeaderInSection(UITableView tableview, int section) {
        throw new OptionalSelectorException();
    }

    /**
     * This is an optional method.
     * 
     * @see org.xmlvm.iphone.internal.OptionalSelectorException
     */
    public UIView viewForFooterInSection(UITableView tableview, int section) {
        throw new OptionalSelectorException();
    }

    /**
     * This is an optional method.
     * 
     * @see org.xmlvm.iphone.internal.OptionalSelectorException
     */
    public float heightForHeaderInSection(UITableView tableview, int section) {
        throw new OptionalSelectorException();
    }

    /**
     * This is an optional method.
     * 
     * @see org.xmlvm.iphone.internal.OptionalSelectorException
     */
    public float heightForFooterInSection(UITableView tableview, int section) {
        throw new OptionalSelectorException();
    }

    /**
     * This is an optional method.
     * 
     * @see org.xmlvm.iphone.internal.OptionalSelectorException
     */
    public String titleForDeleteConfirmationButtonForRowAtIndexPath(UITableView tableview,
            NSIndexPath indexPath) {
        throw new OptionalSelectorException();
    }

    // public int indentationLevelForRowAtIndexPath(UITableView tableview,
    // NSIndexPath indexPath) {
    // return 0;
    // }
    //
    // public NSIndexPath willSelectRowAtIndexPath(UITableView tableview,
    // NSIndexPath indexPath) {
    // return null;
    // }
    //
    // public NSIndexPath willDeselectRowAtIndexPath(UITableView tableview,
    // NSIndexPath indexPath) {
    // return null;
    // }
    //
    // public NSIndexPath targetIndexPathForMoveFromRowAtIndexPath(UITableView
    // tableview, NSIndexPath sourceIndexPath, NSIndexPath
    // proposedDestinationIndexPath) {
    // return null;
    // }
    //
}
