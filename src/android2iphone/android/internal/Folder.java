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

package android.internal;

import java.util.Locale;

import android.content.res.Configuration;

/**
 * 
 * Representation of a folders. Besides its name it holds the folder's
 * components in individual fields to allow fast access.
 * 
 */

public class Folder {

    /**
     * 
     * Interface used to test whether a folder matches a values specified by a
     * device configuration. Various implementations test the various device
     * configuration values.
     * 
     */

    public interface Matcher {

        /** Constant indicating that a test did not match. */
        public static final int NO_MATCH      = 0;

        /** Constant indicating that a test matched partially. */
        public static final int PARTIAL_MATCH = 1;

        /** Constant indicating that a test did match. */
        public static final int FULL_MATCH    = 2;

        /**
         * 
         * Tests whether the provided configuration value matches the folder's
         * value (if specified).
         * 
         * @param configuration
         *            The configuration to be tested.
         * 
         * @return NO_MATCH is the provided configuration value does not match,
         *         PARTIAL_MATCH if the folder's configuration only matches
         *         partially (i.e. possible for locales) or FULL_MATCH if both
         *         values are equal. If the folder's value is unspecified it is
         *         also considered not matching.
         * 
         */

        public int matches(Folder folder, Configuration configuration);
    }

    /** Matcher used to test the folder's locale. */
    public static Matcher LOCALE_MATCHER;

    /** Matcher used to test the screen size. */
    public static Matcher SCREENSIZE_MATCHER;

    /** Matcher used to test the screen aspect. */
    public static Matcher SCREENASPECT_MATCHER;

    /** Matcher used to test the orientation. */
    public static Matcher ORIENTATION_MATCHER;

    static {

        LOCALE_MATCHER = new Matcher() {

            /**
             * 
             * Tests whether the provided locale matches the folder's locale (if
             * specified). The comparison in done in two steps. The first tests
             * for equality which means that both language and country have to
             * match. If this does not match the language only is considered. If
             * this matches and the folder's locale country is unspecified it is
             * considered to be a partial match.
             * 
             * @param configuration
             *            The configuration providing the locale to be tested.
             * 
             * @return NO_MATCH is the provided locale does not match, folder's
             *         locale only has PARTIAL_MATCH if the a language specified
             *         which matches the provided locale or FULL_MATCH if both
             *         locales are equal. If the folder's locale is unspecified
             *         it is also considered not matching.
             * 
             */

            @Override
            public int matches(Folder folder, Configuration configuration) {
                // Folder's locale unspecified
                if (folder.locale == null) {
                    return NO_MATCH;
                }

                // Locales equal (language and country are equal)
                if (folder.locale.equals(configuration.locale)) {
                    return FULL_MATCH;
                }

                // Test language in case the folder's locale does not include a
                // country
                if (folder.locale.getCountry() == null || folder.locale.getCountry().equals("")) {
                    if (folder.locale.getLanguage().equals(configuration.locale.getLanguage())) {
                        return PARTIAL_MATCH;
                    }
                }

                // Folder's locale specified but does not match
                return NO_MATCH;
            }
        };

        SCREENSIZE_MATCHER = new Matcher() {

            /**
             * 
             * Tests whether the provided screen size matches the folder's
             * screen size.
             * 
             * @param configuration
             *            The configuration providing the screen layout to be
             *            tested. The size is encoded into an integer value as
             *            specified by Android's Configuration object.
             * 
             * @return FULL_MATCH if the screen size matches, NO_MATCH
             *         otherwise. If the folder does not specify a screen size
             *         it is considered as not matching.
             * 
             */

            @Override
            public int matches(Folder folder, Configuration configuration) {
                int size = folder.screenLayout & Configuration.SCREENLAYOUT_SIZE_MASK;
                if (size == Configuration.SCREENLAYOUT_SIZE_UNDEFINED) {
                    return NO_MATCH;
                }

                return size == (configuration.screenLayout & Configuration.SCREENLAYOUT_SIZE_MASK) ? FULL_MATCH
                        : NO_MATCH;
            }
        };

        SCREENASPECT_MATCHER = new Matcher() {

            /**
             * 
             * Tests whether the provided screen aspect matches the folder's
             * screen aspect.
             * 
             * @param configuration
             *            The configuration providing the screen aspect to be
             *            tested. The size is encoded into an integer value as
             *            specified by Android's Configuration object.
             * 
             * @return FULL_MATCH if the screen aspect matches, NO_MATCH
             *         otherwise. If the folder does not specify a screen aspect
             *         it is considered as not matching.
             * 
             */

            @Override
            public int matches(Folder folder, Configuration configuration) {
                int aspect = folder.screenLayout & Configuration.SCREENLAYOUT_LONG_MASK;
                if (aspect == Configuration.SCREENLAYOUT_LONG_UNDEFINED) {
                    return NO_MATCH;
                }

                return aspect == (configuration.screenLayout & Configuration.SCREENLAYOUT_LONG_MASK) ? FULL_MATCH
                        : NO_MATCH;
            }
        };

        ORIENTATION_MATCHER = new Matcher() {

            /**
             * 
             * Tests whether the provided orientation matches the folder's
             * orientation.
             * 
             * @param configuration
             *            The configuration providing the orientation to be
             *            tested. The orientation is encoded into an integer
             *            value as specified by Android's Configuration object.
             * 
             * @return FULL_MATCH if the orientation matches, NO_MATCH
             *         otherwise. If the folder does not specify an orienation
             *         it is considered as not matching.
             * 
             */

            @Override
            public int matches(Folder folder, Configuration configuration) {
                if (folder.orientation == Configuration.ORIENTATION_UNDEFINED) {
                    return NO_MATCH;
                }

                return folder.orientation == configuration.orientation ? FULL_MATCH : NO_MATCH;
            }
        };

    };

    /** The folder's name. */
    private String        name         = null;

    /** The folder's locale. */
    private Locale        locale       = null;

    /** The folder's screen layout: resolution and aspect. */
    private int           screenLayout = 0;

    /** The folder's orientation. */
    private int           orientation  = 0;

    /** The folder's density. */
    private int           density      = 0;

    /**
     * 
     * Creates a new folder with the given name. The provided name will be used
     * to initialize the folder's various modifier fields.
     * 
     * @param name
     *            The name of the folder to be created.
     * 
     */

    public Folder(String name) {
        init(name);
    }

    /**
     * 
     * Initializes the folder with the given name. The provided name will be
     * used to initialize the folder's various modifier fields.
     * 
     * @param name
     *            The name of the folder to be created.
     * 
     */

    private void init(String name) {
        // Clear all fields
        this.name = null;
        this.locale = null;
        this.screenLayout = Configuration.SCREENLAYOUT_SIZE_UNDEFINED
                | Configuration.SCREENLAYOUT_LONG_UNDEFINED;
        this.orientation = Configuration.ORIENTATION_UNDEFINED;
        this.density = Density.DENSITY_UNDEFINED;

        // Reinitialize if name is not null
        if (name != null) {
            // Initialize name with possibly trainling / removed.
            this.name = name.replace("/", "");


            String[] chunks = splitIntoChunks(name);

            for (int i = 0; i < chunks.length; i++) {

                // Initialize locale
                if (locale == null && isLocale(chunks[i])) {
                    if (chunks[i].length() == 5) {
                        String[] lc = chunks[i].split("_");
                        locale = new Locale(lc[0], lc[1]);
                    } else {
                        locale = new Locale(chunks[i]);
                    }

                    continue;
                }

                // Initialize resolution
                if ((screenLayout & Configuration.SCREENLAYOUT_SIZE_MASK) == Configuration.SCREENLAYOUT_SIZE_UNDEFINED
                        && initResolution(chunks[i])) {
                    continue;
                }

                // Initialize aspect
                if ((screenLayout & Configuration.SCREENLAYOUT_LONG_MASK) == Configuration.SCREENLAYOUT_LONG_MASK
                        && initAspect(chunks[i])) {
                    continue;
                }

                // Initialize orientation
                if (orientation == Configuration.ORIENTATION_UNDEFINED
                        && initOrientation(chunks[i])) {
                    continue;
                }

                // Initialize density
                if (density == Density.DENSITY_UNDEFINED && initDensity(chunks[i])) {
                    continue;
                }
                
                // Modifier not supported or unknown
//                Assert.NOT_IMPLEMENTED();
            }
        }
    }

    /**
     * 
     * Splits the provided folder into chunks - each representing a device
     * configuration item.
     * 
     * @param folder
     *            The folder to be split.
     * 
     * @return An array holding the folders chunks.
     * 
     */

    private String[] splitIntoChunks(String folder) {
        // Replace -r which indicate a locale region with _
        String tmp = folder.replace("-r", "_");

        // Remove possibly trailing /
        tmp = tmp.replace("/", "");

        // Split folder name into chungs
        return tmp.split("-");
    }

    /**
     * 
     * Tests whether the provided String represents a locale. A string with
     * length 2 is considered to be a locale or a string with length 5 having a
     * _ sign at the third position.
     * 
     * @param str
     *            The string to be tested.
     * 
     * @return true if the string represents a locale, false otherwise.
     * 
     */

    private boolean isLocale(String str) {
        if (str.length() == 2) {
            return true;
        }

        if (str.length() == 5 && str.charAt(2) == '_') {
            return true;
        }

        return false;
    }

    /**
     * 
     * Tests whether the provided String represents a resolution. A string
     * holding one of small, normal or large (case-insensitive) is considered to
     * be a resolution modifier. If a resolution modifier was found, the
     * screenLayout field gets initialized.
     * 
     * @param str
     *            The string to be tested.
     * 
     * @return true if the string represents a resolution, false otherwise.
     * 
     */

    private boolean initResolution(String str) {
        if (str.equalsIgnoreCase("small")) {
            screenLayout |= Configuration.SCREENLAYOUT_SIZE_SMALL;
            return true;
        }
        if (str.equalsIgnoreCase("normal")) {
            screenLayout |= Configuration.SCREENLAYOUT_SIZE_NORMAL;
            return true;
        }
        if (str.equalsIgnoreCase("large")) {
            screenLayout |= Configuration.SCREENLAYOUT_SIZE_LARGE;
            return true;
        }
        if (str.equalsIgnoreCase("xlarge")) {
            screenLayout |= Configuration.SCREENLAYOUT_SIZE_XLARGE;
            return true;
        }

        return false;
    }

    /**
     * 
     * Tests whether the provided String represents an aspect. A string holding
     * one of long or notlong (case-insensitive) is considered to be an aspect
     * modifier. If an aspect modifier was found, the screenLayout field gets
     * initialized.
     * 
     * @param str
     *            The string to be tested.
     * 
     * @return true if the string represents an aspect, false otherwise.
     * 
     */

    private boolean initAspect(String str) {
        if (str.equalsIgnoreCase("long")) {
            screenLayout |= Configuration.SCREENLAYOUT_LONG_YES;
            return true;
        }
        if (str.equalsIgnoreCase("notlong")) {
            screenLayout |= Configuration.SCREENLAYOUT_LONG_NO;
            return true;
        }

        return false;
    }

    /**
     * 
     * Tests whether the provided String represents an orientation. A string
     * holding one of port, land or square (case-insensitive) is considered to
     * be an orientation modifier. If an orientation modifier was found, the
     * orientation field gets initialized.
     * 
     * @param str
     *            The string to be tested.
     * 
     * @return true if the string represents an orientation, false otherwise.
     * 
     */

    private boolean initOrientation(String str) {
        if (str.equalsIgnoreCase("port")) {
            orientation = Configuration.ORIENTATION_PORTRAIT;
            return true;
        }
        if (str.equalsIgnoreCase("land")) {
            orientation = Configuration.ORIENTATION_LANDSCAPE;
            return true;
        }
        if (str.equalsIgnoreCase("square")) {
            orientation = Configuration.ORIENTATION_SQUARE;
            return true;
        }

        return false;
    }

    /**
     * 
     * Tests whether the provided String represents a density. A string holding
     * one of ldpi, mdpi, hdpi or nodpi (case-insensitive) is considered to be a
     * density modifier. If a density modifier was found, the density field gets
     * initialized.
     * 
     * @param str
     *            The string to be tested.
     * 
     * @return true if the string represents a density, false otherwise.
     * 
     */

    private boolean initDensity(String str) {
        if (str.equalsIgnoreCase("ldpi")) {
            density = Density.DENSITY_LOW;
            return true;
        }
        if (str.equalsIgnoreCase("mdpi")) {
            density = Density.DENSITY_MEDIUM;
            return true;
        }
        if (str.equalsIgnoreCase("hdpi")) {
            density = Density.DENSITY_HIGH;
            return true;
        }
        if (str.equalsIgnoreCase("nodpi")) {
            density = Density.DENSITY_NONE;
            return true;
        }

        return false;
    }

    /**
     * 
     * Tests whether this folder contradicts a given device configuration.
     * 
     * @param configuration
     *            The configuration to test the folder against.
     * 
     * @return true if the folder contradicts the configuration, false
     *         otherwise.
     * 
     */

    public boolean contradicts(Configuration configuration) {
        // Test locale: the language first and if specified the country
        if (locale != null) {
            if (!locale.getLanguage().equals(configuration.locale.getLanguage())) {
                return true;
            }

            if (locale.getCountry() != null && !locale.getCountry().equals("")
                    && !locale.getCountry().equals(configuration.locale.getCountry())) {
                return true;
            }
        }

        // Test screen resolution
        if ((screenLayout & Configuration.SCREENLAYOUT_SIZE_MASK) != Configuration.SCREENLAYOUT_SIZE_UNDEFINED
                && (screenLayout & Configuration.SCREENLAYOUT_SIZE_MASK) != (configuration.screenLayout & Configuration.SCREENLAYOUT_SIZE_MASK)) {
            return true;
        }

        // Test screen aspect
        if ((screenLayout & Configuration.SCREENLAYOUT_LONG_MASK) != Configuration.SCREENLAYOUT_LONG_UNDEFINED
                && (screenLayout & Configuration.SCREENLAYOUT_LONG_MASK) != (configuration.screenLayout & Configuration.SCREENLAYOUT_LONG_MASK)) {
            return true;
        }

        // Test orientation
        if (orientation != Configuration.ORIENTATION_UNDEFINED
                && orientation != configuration.orientation) {
            return true;
        }

        return false;
    }

    public String getName() {
        return name;
    }

    public int getDensity() {
        return density;
    }
}
