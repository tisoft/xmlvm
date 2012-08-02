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

import java.util.List;

import org.xmlvm.XMLVMSkeletonOnly;

@XMLVMSkeletonOnly
public class NSOperationQueue extends NSObject {

    private List<NSOperation>  operations;
    private int                     operationCount;
    private int                     maxConcurrentOperationCount;
    private boolean                 suspended;
    private String                  name;
    private static NSOperationQueue currentQueue;
    private static NSOperationQueue mainQueue;


    void addOperation(NSOperation operation) {

    }

    void addOperationsWaitUntilFinished(List<NSOperation> operations, boolean wait) {

    }

    void addOperationWithBlock() {
        // not implemented
    }

    List<NSOperation> getOperations() {
        return operations;
    }

    int getOperationCount() {
        return operationCount;
    }

    void cancelAllOperations() {

    }

    void waitUntilAllOperationsAreFinished() {

    }

    int getMaxConcurrentOperationCount() {
        return maxConcurrentOperationCount;
    }

    void setMaxConcurrentOperationCount(int count) {
        this.maxConcurrentOperationCount = count;
    }

    void setSuspended(boolean suspend) {
        this.suspended = suspend;
    }

    boolean isSuspended() {
        return suspended;
    }

    void setName(String name) {
        this.name = name;
    }

    String getName() {
        return name;
    }

    public static NSOperationQueue getCurrentQueue() {
        return currentQueue;
    }

    public static NSOperationQueue getMainQueue() {
        return mainQueue;
    }
}
