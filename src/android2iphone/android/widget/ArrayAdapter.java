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

package android.widget;

import java.util.List;

import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;

public class ArrayAdapter<T> extends BaseAdapter {

    /**
     * Contains the list of objects that represent the data of this ArrayAdapter.
     * The content of this list is referred to as "the array" in the documentation.
     */
    private List<T> mObjects;
    /**
     * Lock used to modify the content of {@link #mObjects}. Any write operation
     * performed on the array should be synchronized on this lock. This lock is also
     * used by the filter (see {@link #getFilter()} to make a synchronized copy of
     * the original array of data.
     */
    private final Object mLock = new Object();
    /**
     * The resource indicating what views to inflate to display the content of this
     * array adapter.
     */
    private int mResource;
    /**
     * The resource indicating what views to inflate to display the content of this
     * array adapter in a drop down widget.
     */
    private int mDropDownResource;
    /**
     * If the inflated resource is not a TextView, {@link #mFieldId} is used to find
     * a TextView inside the inflated views hierarchy. This field must contain the
     * identifier that matches the one defined in the resource file.
     */
    private int mFieldId = 0;
    /**
     * Indicates whether or not {@link #notifyDataSetChanged()} must be called whenever
     * {@link #mObjects} is modified.
     */
    private boolean mNotifyOnChange = true;
    private Context mContext;
    private ArrayList<T> mOriginalValues;
    private LayoutInflater mInflater;

    /**
     * Constructor
     *
     * @param context The current context.
     * @param textViewResourceId The resource ID for a layout file containing a TextView to use when
     *                 instantiating views.
     */
    public ArrayAdapter(Context context, int textViewResourceId) {
        init(context, textViewResourceId, 0, new ArrayList<T>());
    }

    /**
     * Constructor
     *
     * @param context The current context.
     * @param resource The resource ID for a layout file containing a layout to use when
     *                 instantiating views.
     * @param textViewResourceId The id of the TextView within the layout resource to be populated
     */
    public ArrayAdapter(Context context, int resource, int textViewResourceId) {
        init(context, resource, textViewResourceId, new ArrayList<T>());
    }

    /**
     * Constructor
     *
     * @param context The current context.
     * @param textViewResourceId The resource ID for a layout file containing a TextView to use when
     *                 instantiating views.
     * @param objects The objects to represent in the ListView.
     */
    public ArrayAdapter(Context context, int textViewResourceId, T[] objects) {
        init(context, textViewResourceId, 0, Arrays.asList(objects));
    }

    /**
     * Constructor
     *
     * @param context The current context.
     * @param resource The resource ID for a layout file containing a layout to use when
     *                 instantiating views.
     * @param textViewResourceId The id of the TextView within the layout resource to be populated
     * @param objects The objects to represent in the ListView.
     */
    public ArrayAdapter(Context context, int resource, int textViewResourceId, T[] objects) {
        init(context, resource, textViewResourceId, Arrays.asList(objects));
    }

    /**
     * Constructor
     *
     * @param context The current context.
     * @param textViewResourceId The resource ID for a layout file containing a TextView to use when
     *                 instantiating views.
     * @param objects The objects to represent in the ListView.
     */
    public ArrayAdapter(Context context, int textViewResourceId, List<T> objects) {
        init(context, textViewResourceId, 0, objects);
    }

    /**
     * Constructor
     *
     * @param context The current context.
     * @param resource The resource ID for a layout file containing a layout to use when
     *                 instantiating views.
     * @param textViewResourceId The id of the TextView within the layout resource to be populated
     * @param objects The objects to represent in the ListView.
     */
    public ArrayAdapter(Context context, int resource, int textViewResourceId, List<T> objects) {
        init(context, resource, textViewResourceId, objects);
    }

    /**
     * Adds the specified object at the end of the array.
     *
     * @param object The object to add at the end of the array.
     */
    public void add(T object) {
        if (mOriginalValues != null) {
            synchronized (mLock) {
                mOriginalValues.add(object);
                if (mNotifyOnChange)
                    notifyDataSetChanged();
            }
        } else {
            mObjects.add(object);
            if (mNotifyOnChange)
                notifyDataSetChanged();
        }
    }

    /**
     * Adds the specified Collection at the end of the array.
     *
     * @param collection The Collection to add at the end of the array.
     */
    public void addAll(Collection<? extends T> collection) {
        if (mOriginalValues != null) {
            synchronized (mLock) {
                mOriginalValues.addAll(collection);
                if (mNotifyOnChange)
                    notifyDataSetChanged();
            }
        } else {
            mObjects.addAll(collection);
            if (mNotifyOnChange)
                notifyDataSetChanged();
        }
    }

    /**
     * Adds the specified items at the end of the array.
     *
     * @param items The items to add at the end of the array.
     */
    public void addAll(T... items) {
        if (mOriginalValues != null) {
            synchronized (mLock) {
                for (T item : items) {
                    mOriginalValues.add(item);
                }
                if (mNotifyOnChange)
                    notifyDataSetChanged();
            }
        } else {
            for (T item : items) {
                mObjects.add(item);
            }
            if (mNotifyOnChange)
                notifyDataSetChanged();
        }
    }

    /**
     * Inserts the specified object at the specified index in the array.
     *
     * @param object The object to insert into the array.
     * @param index The index at which the object must be inserted.
     */
    public void insert(T object, int index) {
        if (mOriginalValues != null) {
            synchronized (mLock) {
                mOriginalValues.add(index, object);
                if (mNotifyOnChange)
                    notifyDataSetChanged();
            }
        } else {
            mObjects.add(index, object);
            if (mNotifyOnChange)
                notifyDataSetChanged();
        }
    }

    /**
     * Removes the specified object from the array.
     *
     * @param object The object to remove.
     */
    public void remove(T object) {
        if (mOriginalValues != null) {
            synchronized (mLock) {
                mOriginalValues.remove(object);
            }
        } else {
            mObjects.remove(object);
        }
        if (mNotifyOnChange)
            notifyDataSetChanged();
    }

    /**
     * Remove all elements from the list.
     */
    public void clear() {
        if (mOriginalValues != null) {
            synchronized (mLock) {
                mOriginalValues.clear();
            }
        } else {
            mObjects.clear();
        }
        if (mNotifyOnChange)
            notifyDataSetChanged();
    }

    /**
     * Sorts the content of this adapter using the specified comparator.
     *
     * @param comparator The comparator used to sort the objects contained
     *        in this adapter.
     */
    public void sort(Comparator<? super T> comparator) {
        Collections.sort(mObjects, comparator);
        if (mNotifyOnChange)
            notifyDataSetChanged();
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public void notifyDataSetChanged() {
        super.notifyDataSetChanged();
        mNotifyOnChange = true;
    }

    /**
     * Control whether methods that change the list ({@link #add},
     * {@link #insert}, {@link #remove}, {@link #clear}) automatically call
     * {@link #notifyDataSetChanged}.  If set to false, caller must
     * manually call notifyDataSetChanged() to have the changes
     * reflected in the attached view.
     *
     * The default is true, and calling notifyDataSetChanged()
     * resets the flag to true.
     *
     * @param notifyOnChange if true, modifications to the list will
     *                       automatically call {@link
     *                       #notifyDataSetChanged}
     */
    public void setNotifyOnChange(boolean notifyOnChange) {
        mNotifyOnChange = notifyOnChange;
    }

    private void init(Context context, int resource, int textViewResourceId, List<T> objects) {
        mContext = context;
        mInflater = (LayoutInflater) context.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
        mResource = mDropDownResource = resource;
        mObjects = objects;
        mFieldId = textViewResourceId;
    }

    /**
     * Returns the context associated with this array adapter. The context is used
     * to create views from the resource passed to the constructor.
     *
     * @return The Context associated with this adapter.
     */
    public Context getContext() {
        return mContext;
    }

    /**
     * {@inheritDoc}
     */
    public int getCount() {
        return mObjects.size();
    }

    /**
     * {@inheritDoc}
     */
    public T getItem(int position) {
        return mObjects.get(position);
    }

    /**
     * Returns the position of the specified item in the array.
     *
     * @param item The item to retrieve the position of.
     *
     * @return The position of the specified item.
     */
    public int getPosition(T item) {
        return mObjects.indexOf(item);
    }

    /**
     * {@inheritDoc}
     */
    public long getItemId(int position) {
        return position;
    }

    /**
     * {@inheritDoc}
     */
    public View getView(int position, View convertView, ViewGroup parent) {
        return createViewFromResource(position, convertView, parent, mResource);
    }

    private View createViewFromResource(int position, View convertView, ViewGroup parent,
            int resource) {
        View view;
        View text;

        if (convertView == null) {
            view = mInflater.inflate(resource, parent, false);
        } else {
            view = convertView;
        }

        if (mFieldId == 0) {
            //  If no custom field is assigned, assume the whole resource is a TextView
            text = view;
        } else {
            //  Otherwise, find the TextView field within the layout
            text = view.findViewById(mFieldId);
        }
        if (!(text instanceof TextView)) {
            Log.e("ArrayAdapter", "You must supply a resource ID for a TextView");
            throw new IllegalStateException(
                    "ArrayAdapter requires the resource ID to be a TextView");
        }

        T item = getItem(position);
        if (item instanceof CharSequence) {
            ((TextView) text).setText((CharSequence) item);
        } else {
            ((TextView) text).setText(item.toString());
        }

        return view;
    }

    /**
     * <p>Sets the layout resource to create the drop down views.</p>
     *
     * @param resource the layout resource defining the drop down views
     * @see #getDropDownView(int, android.view.View, android.view.ViewGroup)
     */
    public void setDropDownViewResource(int resource) {
        this.mDropDownResource = resource;
    }

    /**
     * {@inheritDoc}
     */
    @Override
    public View getDropDownView(int position, View convertView, ViewGroup parent) {
        return createViewFromResource(position, convertView, parent, mDropDownResource);
    }

    /**
     * Creates a new ArrayAdapter from external resources. The content of the array is
     * obtained through {@link android.content.res.Resources#getTextArray(int)}.
     *
     * @param context The application's environment.
     * @param textArrayResId The identifier of the array to use as the data source.
     * @param textViewResId The identifier of the layout used to create views.
     *
     * @return An ArrayAdapter<CharSequence>.
     */
    public static ArrayAdapter<CharSequence> createFromResource(Context context,
            int textArrayResId, int textViewResId) {
        CharSequence[] strings = context.getResources().getTextArray(textArrayResId);
        return new ArrayAdapter<CharSequence>(context, textViewResId, strings);
    }
}
