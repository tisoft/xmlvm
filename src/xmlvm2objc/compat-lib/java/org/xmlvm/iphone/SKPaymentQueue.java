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
