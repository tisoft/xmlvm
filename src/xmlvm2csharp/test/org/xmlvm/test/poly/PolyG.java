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
package org.xmlvm.test.poly;

/*
 * A simple test for covariance return types
 */
public class PolyG {
    public static void main(String[] args) {
        PolyGParent a = new PolyGParent();
        PolyGParent b = new PolyGChild();
        PolyGChild c = new PolyGChild();
        System.out.println(a.deposit(10).getBalance());
        System.out.println(b.deposit(10).getBalance());
        System.out.println(c.deposit(10).getBalance());
    }
}

class PolyGParent {
    private int balance=0;

    public PolyGParent deposit(int amount) {
        this.balance += amount;
        return this;
    }

    public int getBalance() {
        return this.balance;
    }
}

class PolyGChild extends PolyGParent{
    private int fee = 5;

    public PolyGChild deposit(int amount) {
        super.deposit(amount-fee);
        return this;
    }

}
