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

package android.graphics.drawable;

import android.util.AttributeSet;
import android.util.StateSet;

public class StateListDrawable extends DrawableContainer {

    private final StateListState stateListState;

    public StateListDrawable() {
        this(null);
    }

    private StateListDrawable(StateListState state) {
        StateListState as = new StateListState(state, this);
        stateListState = as;
        setConstantState(as);
        onStateChange(getState());
    }

    public void addState(int[] stateSet, Drawable drawable) {
        if (drawable != null) {
            stateListState.addStateSet(stateSet, drawable);
            // in case the new state matches our current state...
            onStateChange(getState());
        }
    }

    static final class StateListState extends DrawableContainerState {
        private int[][] mStateSets;

        StateListState(StateListState orig, StateListDrawable owner) {
            super(orig, owner);

            if (orig != null) {
                mStateSets = orig.mStateSets;
            } else {
                mStateSets = new int[getChildren().length][];
            }
        }

        int addStateSet(int[] stateSet, Drawable drawable) {
            final int pos = addChild(drawable);
            mStateSets[pos] = stateSet;
            return pos;
        }

        private int indexOfStateSet(int[] stateSet) {
            final int[][] stateSets = mStateSets;
            final int N = getChildCount();
            for (int i = 0; i < N; i++) {
                if (StateSet.stateSetMatches(stateSets[i], stateSet)) {
                    return i;
                }
            }
            return -1;
        }

        @Override
        public Drawable newDrawable() {
            return new StateListDrawable(this);
        }

        @Override
        public void growArray(int oldSize, int newSize) {
            super.growArray(oldSize, newSize);
            final int[][] newStateSets = new int[newSize][];
            System.arraycopy(mStateSets, 0, newStateSets, 0, oldSize);
            mStateSets = newStateSets;
        }
    }

    public Drawable getStateDrawable(int index) {
        return stateListState.getChildren()[index];
    }

    public int getStateDrawableIndex(int[] stateSet) {
        return stateListState.indexOfStateSet(stateSet);
    }

    @Override
    public boolean isStateful() {
        return true;
    }

    @Override
    protected boolean onStateChange(int[] stateSet) {
        int idx = stateListState.indexOfStateSet(stateSet);
        if (idx < 0) {
            idx = stateListState.indexOfStateSet(StateSet.WILD_CARD);
        }
        if (selectDrawable(idx)) {
            return true;
        }
        return super.onStateChange(stateSet);
    }

    public static StateListDrawable xmlvmCreateStateListDrawable(AttributeSet attrs) {
        StateListDrawable d = new StateListDrawable();
        return d;
    }

    public void xmlvmAddState(int[] stateSet, Drawable drawable) {
        if (drawable != null) {
            stateListState.addStateSet(stateSet, drawable);
        }
    }
}
