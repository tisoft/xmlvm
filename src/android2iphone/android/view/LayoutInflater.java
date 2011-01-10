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

package android.view;

import android.content.Context;
import android.internal.LayoutManager;

public class LayoutInflater {

    private Context context;

    public LayoutInflater(Context context) {
        this.context = context;
    }

    public View inflate(int resource, ViewGroup root, boolean attachToRoot) throws InflateException {
        if (attachToRoot && root == null) {
            throw new InflateException("Unable to attach to non existent root");
        }

        View v = null;
        if (attachToRoot) {
            v = LayoutManager.getLayout(context, resource, root);
            if (v == null) {
                throw new InflateException("Unable to inflate layout: " + resource);
            }
            root.addView(v);
        } else {
            v = LayoutManager.getLayout(context, resource, null);
            if (v == null) {
                throw new InflateException("Unable to inflate layout: " + resource);
            }

            if (root != null) {
                v.setLayoutParams(root.getLayoutParams());
            }
        }

        return root != null && attachToRoot ? root : v;
    }

    public View inflate(int resource, ViewGroup root) {
        return inflate(resource, root, root != null);
    }
}
