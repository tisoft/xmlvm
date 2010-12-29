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

import org.xmlvm.XMLVMSkeletonOnly;

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public class SKPaymentQueue extends NSObject {

    private static SKPaymentQueue                 queue        = new SKPaymentQueue();
    private HashSet<SKPaymentTransactionObserver> list         = new HashSet<SKPaymentTransactionObserver>();
    private ArrayList<SKPaymentTransaction>       transactions = new ArrayList<SKPaymentTransaction>();


    private SKPaymentQueue() {
    }

    public static boolean canMakePayments() {
        return false;
    }

    public static SKPaymentQueue defaultQueue() {
        return queue;
    }

    public void addTransactionObserver(SKPaymentTransactionObserver observer) {
        list.add(observer);
    }

    public void removeTransactionObserver(SKPaymentTransactionObserver observer) {
        list.remove(observer);
    }

    public ArrayList<SKPaymentTransaction> getTransactions() {
        return transactions;
    }

    public void addPayment(SKPayment payment) {
        // TODO : Java implementation
    }

    public void finishTransaction(SKPaymentTransaction transaction) {
        // TODO : Java implementation
    }

    public void restoreCompletedTransactions() {
        // TODO : Java implementation
    }
}
