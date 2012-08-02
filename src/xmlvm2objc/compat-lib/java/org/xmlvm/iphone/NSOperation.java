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
public class NSOperation extends NSObject {

    private boolean                cancelled;
    private boolean                concurrent;
    private boolean                executing;
    private boolean                finished;
    private boolean                ready;
    private int                    queuePriority = NSOperationQueuePriority.NSOperationQueuePriorityNormal;
    private double                 threadPriority;
    private List<NSOperation> dependencies;


    private NSOperation() {

    }

    public NSOperation init() {
        return new NSOperation();
    }

    public void start() {

    }

    public void main() {

    }

    public void cancel() {

    }

    public boolean isCancelled() {
        return cancelled;
    }

    public boolean isExecuting() {
        return executing;
    }

    public boolean isFinished() {
        return finished;
    }

    public boolean isConcurrent() {
        return concurrent;
    }

    public boolean isReady() {
        return ready;
    }

    public void addDependency(NSOperation operation) {

    }

    public void removeDependency(NSOperation operation) {

    }

    public List<NSOperation> getDependencies() {
        return dependencies;
    }

    public int getQueuePriority() {
        return queuePriority;
    }

    public void setQueuePriority(int priority) {
        this.queuePriority = priority;
    }

    public double getThreadPriority() {
        return threadPriority;
    }

    public void setThreadPriority(double priority) {
        this.threadPriority = priority;
    }

    public void waitUntilFinished() {

    }
}
