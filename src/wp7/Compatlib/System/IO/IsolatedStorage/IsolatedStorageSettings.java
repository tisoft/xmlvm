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

package Compatlib.System.IO.IsolatedStorage;

import org.xmlvm.XMLVMSkeletonOnly;

import Compatlib.System.Integer;
import Compatlib.System.Object;
import Compatlib.System.String;
import Compatlib.System.Collections.Generics.ICollection;
import Compatlib.System.Collections.Generics.IDictionary;
import Compatlib.System.Collections.Generics.IEnumerable;
import Compatlib.System.Collections.Generics.KeyValuePair;

/**
 *
 */
@XMLVMSkeletonOnly
public class IsolatedStorageSettings implements ICollection<KeyValuePair<String, Object>>,
        IEnumerable<KeyValuePair<String, Object>>, IDictionary<String, Object> {

    /**
     * @return
     */
    public static IsolatedStorageSettings getApplicationSettings() {
        // TODO Auto-generated method stub
        return null;
    }

    /**
     * @param prefkeyLevel
     * @param currentLevel
     * @return
     */
    public boolean TryGetValue(String key, Integer value) {
        return false;
    }

    /**
     * 
     */
    public void Save() {
        // TODO Auto-generated method stub

    }

    /**
     * @param prefkeyFirstrun
     * @param firstRun
     */
    public void Add(String prefkeyFirstrun, Compatlib.System.Boolean firstRun) {
        // TODO Auto-generated method stub

    }

    /**
     * @param prefkeyLevel
     * @param currentLevel
     */
    public void Add(String prefkeyLevel, int currentLevel) {
        // TODO Auto-generated method stub

    }

    /**
     * @param prefkeyUseraccelerometer
     * @param boolean1
     */
    public boolean TryGetValue(String prefkeyUseraccelerometer, Compatlib.System.Boolean boolean1) {
        return false;
    }

    /**
     * @param string
     * @return
     */
    public boolean Contains(Compatlib.System.String string) {
        return false;
    }

}
