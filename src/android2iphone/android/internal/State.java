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

package android.internal;

import java.util.HashMap;
import java.util.Map;

public class State {

    public static final int             STATE_UNKNOWN      = -1;
    public static final int             STATE_PRESSED_ID   = 16842919;
    public static final String          STATE_PRESSED_NAME = "state_pressed";
    public static final int             STATE_CHECKED_ID   = 16842912;
    public static final String          STATE_CHECKED_NAME = "state_checked";

    private static Map<String, Integer> stateMap;

    static {
        stateMap = new HashMap<String, Integer>();
        stateMap.put(STATE_PRESSED_NAME, new Integer(STATE_PRESSED_ID));
        stateMap.put(STATE_CHECKED_NAME, new Integer(STATE_CHECKED_ID));
    }

    public static int getIdForName(String name) {
        Integer i = stateMap.get(name);
        return i == null ? STATE_UNKNOWN : i.intValue();
    }
}
