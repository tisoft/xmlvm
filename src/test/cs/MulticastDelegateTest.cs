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

using System;
class MulticastDelegateTest
    {
    event TestSingleDelegate onEvent;
    void TriggerEvent()
        {
        onEvent += new TestSingleDelegate(Program_onEvent);
        onEvent();
        onEvent += new TestSingleDelegate(Program_onEvent);
        onEvent();
        onEvent += new TestSingleDelegate(Program_onEvent2);
        onEvent();
        onEvent += new TestSingleDelegate(Program_onEvent2);
        onEvent();
        }

    void SubtractEvents()
        {
        onEvent -= new TestSingleDelegate(Program_onEvent);
        onEvent();
        onEvent -= new TestSingleDelegate(Program_onEvent);
        onEvent();
        onEvent -= new TestSingleDelegate(Program_onEvent2);
        onEvent();
        onEvent -= new TestSingleDelegate(Program_onEvent2);
        }
    public void Program_onEvent()
        {
        Console.WriteLine("Got called");
        }

    public void Program_onEvent2()
        {
        Console.WriteLine("Got called 2");
        }

    static void Main()
        {
        MulticastDelegateTest p = new MulticastDelegateTest();
        p.TriggerEvent();
        p.SubtractEvents();
        }
    delegate void TestSingleDelegate();
    }
