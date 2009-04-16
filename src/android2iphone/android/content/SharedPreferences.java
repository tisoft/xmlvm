package android.content;

/**
 * <i>(XMLVM Compatibility Class)</i>
 * <p>
 * Interface for accessing and modifying preference data
 */
public abstract class SharedPreferences {
    /**
     * <i>(XMLVM Compatibility Class)</i>
     * <p>
     * Interface used for modifying values in a SharedPreferences object. All
     * changes you make in an editor are batched, and not copied back to the
     * original SharedPreferences or persistent storage until you call commit().
     */
    public abstract class Editor {
        /**
         * Commit your preferences changes back from this Editor to the
         * SharedPreferences object it is editing.
         * 
         * @return Returns true if the new values were successfully written to
         *         persistent storage.
         */
        public abstract boolean commit();

        /**
         * Set a boolean value in the preferences editor, to be written back
         * once commit() is called.
         * 
         * @return Returns a reference to the same Editor object, so you can
         *         chain put calls together.
         */
        public abstract SharedPreferences.Editor putBoolean(String key, boolean value);

        /**
         * Set a float value in the preferences editor, to be written back once
         * commit() is called.
         * 
         * @return Returns a reference to the same Editor object, so you can
         *         chain put calls together.
         */
        public abstract SharedPreferences.Editor putFloat(String key, float value);

        /**
         * Set an int value in the preferences editor, to be written back once
         * commit() is called.
         * 
         * @return Returns a reference to the same Editor object, so you can
         *         chain put calls together.
         */
        public abstract SharedPreferences.Editor putInt(String key, int value);

        /**
         * Set a long value in the preferences editor, to be written back once
         * commit() is called.
         * 
         * @return Returns a reference to the same Editor object, so you can
         *         chain put calls together.
         */
        public abstract SharedPreferences.Editor putLong(String key, long value);

        /**
         * Set a String value in the preferences editor, to be written back once
         * commit() is called.
         * 
         * @return Returns a reference to the same Editor object, so you can
         *         chain put calls together.
         */
        public abstract SharedPreferences.Editor putString(String key, String value);
    }

    /**
     * Checks whether the preferences contains a preference.
     * 
     * @param key
     *            he name of the preference to check.
     * @return Returns true if the preference exists in the preferences,
     *         otherwise false.
     */
    public abstract boolean contains(String key);

    /**
     * Create a new Editor for these preferences, through which you can make
     * modifications to the data in the preferences and atomically commit those
     * changes back to the SharedPreferences object. Note that you must call
     * commit() to have any changes you perform in the Editor actually show up
     * in the SharedPreferences.
     * 
     * @return Returns a new instance of the SharedPreferences.Editor interface,
     *         allowing you to modify the values in this SharedPreferences
     *         object.
     */
    public abstract SharedPreferences.Editor edit();

    /**
     * Retrieve a boolean value from the preferences.
     */
    public abstract boolean getBoolean(String key, boolean defValue);

    /**
     * Retrieve a float value from the preferences.
     */
    public abstract float getFloat(String key, float defValue);

    /**
     * Retrieve an int value from the preferences.
     */
    public abstract int getInt(String key, int defValue);

    /**
     * Retrieve a long value from the preferences.
     */
    public abstract long getLong(String key, long defValue);

    /**
     * Retrieve a String value from the preferences.
     */
    public abstract String getString(String key, String defValue);
}
