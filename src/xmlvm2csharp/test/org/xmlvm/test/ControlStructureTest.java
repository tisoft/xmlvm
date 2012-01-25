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

package org.xmlvm.test;

/*
 * taken from src/test/java/org/xmlvm/test/ControlStructureTest.java
 */
public class ControlStructureTest extends Exception {

    static private void log(String msg) {
        System.out.println(msg);
    }

    static private void log(int i) {
        System.out.println(i);
    }

    static private void testIf() {
        int x = 11;
        int y = 22;

        log("Enter testIf()");
        if (x == y)
            log("x == y");
        if (x != y)
            log("x != y");
        if (x == y)
            log("True branch");
        else
            log("False branch");
        log("Before nested if");
        if (x != y) {
            log("Inside nested if");
            if (x == y)
                log("x == y");
            log("In the middle of if");
            if (x != y)
                log("x != y");
            log("End of nested if");
        }
        if (x == 11 && y == 22)
            log("True branch");
        else
            log("False branch");
        if (x == 11 || y == 22)
            log("True branch");
        else
            log("False branch");
        log("Exit testIf()");
    }

    static private void testWhile() {
        log("Enter testWhile()");
        int i = 0;
        while (i < 5) {
            log(i);
            i++;
        }
        log("Exit testWhile()");
    }

    static private void testDoWhile() {
        log("Enter testDoWhile()");
        int i = 0;
        do {
            log(i);
            i++;
        } while (i < 5);
        log("Exit testDoWhile()");
    }

    static private void testFor() {
        log("Enter testFor()");
        for (int i = 0; i < 5; i++) {
            log(i);
        }
        log("Exit testFor()");
    }

    static private void testContinueBreak() {
        log("Enter testContinueBreak()");
        int i;
        for (i = 0; i < 10; i++) {
            log("Begin iteration: ");
            log(i);
            if (i == 3) {
                log("i == 3");
                continue;
            }
            if (i == 6) {
                log("i == 6");
                break;
            }
            log("End iteration: ");
            log(i);
        }
        log("Exit testContinueBreak");
    }

    static private void testSwitch() {
        log("Enter testSwitch()");
        for (int i = 5; i < 10; i++) {
            // This switch-statement forces a <tableswitch/>
            switch (i) {
            case 5:
                log("5");
                break;
            case 6:
                log("6");
                break;
            case 8:
                log("8");
            default:
                log("default");
                break;

            }
        }
        for (int i = 0; i < 100; i++) {
            // This switch-statement forces a <lookupswitch/>
            switch (i) {
            case 5:
                log("5");
                break;
            case 50:
                log("50");
                break;
            case 80:
                log("80");
            default:
                log("default");
                break;
            }
        }
        log("Exit testSwitch()");
    }

    static private void testException() {
        log("Enter testException()");
        try {
            log("Friendly code");
        } catch (Exception ex) {
            log("Caught exception");
        }
        for (int i = 0; i < 4; i++) {
            log("Begin iteration");
            try {
                if (i == 0) {
                    log("i == 0");
                    continue;
                }
                if (i == 1) {
                    log("i == 1");
                    throw new Exception();
                }
                if (i == 2) {
                    log("i == 2");
                    throw new ControlStructureTest();
                }
                if (i == 3) {
                    log("i == 3");
                    try {
                        log("Nested try-block");
                        throw new Exception();
                    } catch (Exception ex) {
                        log("Caught nested Exception");
                    } finally {
                        log("Nested finally");
                    }
                    log("End of i == 3");
                }
            } catch (ControlStructureTest ex) {
                log("Caught ControlStructureTest");
            } catch (Exception ex) {
                log("Caught Exception");
            } finally {
                log("Finally");
            }
            log("End iteration");
        }
        log("Exit testException()");
    }

    static private void testComplexExample() {
        log("Enter testComplexExample()");
        for (int i = 0; i < 10; i++) {
            log("Location 1");
            if (i == 2) {
                log("Location 2");
                int j = 0;
                do {
                    log("Location 3");
                    j++;
                } while (j < 3);
                log("Location 4");
            }
            if (i == 3)
                continue;
            for (int k = 0; k < 2; k++) {
                log("Location 5");
                if (k == 1)
                    break;
                else
                    continue;
            }
        }
        log("Exit testComplexExample()");
    }

    static public void main(String[] args) {
        testIf();
        testWhile();
        testDoWhile();
        testFor();
        testContinueBreak();
        testSwitch();
        testException();
        testComplexExample();
    }
}