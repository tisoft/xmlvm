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

package android.provider;

import android.net.Uri;

public class Contacts {

    /**
     * Signifies an email address row that is stored in the ContactMethods table
     */
    public static final int KIND_EMAIL        = 1;
    /**
     * Signifies a postal address row that is stored in the ContactMethods table
     */
    public static final int KIND_POSTAL       = 2;
    /** Signifies an IM address row that is stored in the ContactMethods table */
    public static final int KIND_IM           = 3;
    /** Signifies an Organization row that is stored in the Organizations table */
    public static final int KIND_ORGANIZATION = 4;
    /** Signifies an Phone row that is stored in the Phones table */
    public static final int KIND_PHONE        = 5;

    public static final class People implements BaseColumns, PeopleColumns {

        public static final class Phones implements BaseColumns, PhonesColumns, PeopleColumns {
            public static final String CONTENT_DIRECTORY = "phones";
        }

        public static final class ContactMethods implements BaseColumns, ContactMethodsColumns,
                PeopleColumns {
            /**
             * no public constructor since this is a utility class
             */
            private ContactMethods() {
            }

            /**
             * The directory twig for this sub-table
             */
            public static final String CONTENT_DIRECTORY  = "contact_methods";

            /**
             * The default sort order for this table
             */
            public static final String DEFAULT_SORT_ORDER = "data ASC";
        }

    }

    public interface PeopleColumns {
        public static final String NAME        = "name";

        public static final Uri    CONTENT_URI = Uri.parse("content://contacts/people");

    }

    public interface PhonesColumns {
        /**
         * The type of the the phone number.
         * <P>
         * Type: INTEGER (one of the constants below)
         * </P>
         */
        public static final String TYPE          = "type";

        public static final int    TYPE_CUSTOM   = 0;
        public static final int    TYPE_HOME     = 1;
        public static final int    TYPE_MOBILE   = 2;
        public static final int    TYPE_WORK     = 3;
        public static final int    TYPE_FAX_WORK = 4;
        public static final int    TYPE_FAX_HOME = 5;
        public static final int    TYPE_PAGER    = 6;
        public static final int    TYPE_OTHER    = 7;

        /**
         * The user provided label for the phone number, only used if TYPE is
         * TYPE_CUSTOM.
         * <P>
         * Type: TEXT
         * </P>
         */
        public static final String LABEL         = "label";

        /**
         * The phone number as the user entered it.
         * <P>
         * Type: TEXT
         * </P>
         */
        public static final String NUMBER        = "number";

        /**
         * The normalized phone number
         * <P>
         * Type: TEXT
         * </P>
         */
        public static final String NUMBER_KEY    = "number_key";

        /**
         * Whether this is the primary phone number
         * <P>
         * Type: INTEGER (if set, non-0 means true)
         * </P>
         */
        public static final String ISPRIMARY     = "isprimary";

    }

    /**
     * Columns from the ContactMethods table that other tables join into
     * themseleves.
     */
    public interface ContactMethodsColumns {
        /**
         * The kind of the the contact method. For example, email address,
         * postal address, etc.
         * <P>
         * Type: INTEGER (one of the values below)
         * </P>
         */
        public static final String KIND                    = "kind";

        /**
         * The type of the contact method, must be one of the types below.
         * <P>
         * Type: INTEGER (one of the values below)
         * </P>
         */
        public static final String TYPE                    = "type";
        public static final int    TYPE_CUSTOM             = 0;
        public static final int    TYPE_HOME               = 1;
        public static final int    TYPE_WORK               = 2;
        public static final int    TYPE_OTHER              = 3;

        /**
         * @hide This is temporal. TYPE_MOBILE should be added to TYPE in the
         *       future.
         */
        public static final int    MOBILE_EMAIL_TYPE_INDEX = 2;

        /**
         * @hide This is temporal. TYPE_MOBILE should be added to TYPE in the
         *       future. This is not "mobile" but "CELL" since vCard uses it for
         *       identifying mobile phone.
         */
        public static final String MOBILE_EMAIL_TYPE_NAME  = "_AUTO_CELL";

        /**
         * The user defined label for the the contact method.
         * <P>
         * Type: TEXT
         * </P>
         */
        public static final String LABEL                   = "label";

        /**
         * The data for the contact method.
         * <P>
         * Type: TEXT
         * </P>
         */
        public static final String DATA                    = "data";

        /**
         * Auxiliary data for the contact method.
         * <P>
         * Type: TEXT
         * </P>
         */
        public static final String AUX_DATA                = "aux_data";

        /**
         * Whether this is the primary organization
         * <P>
         * Type: INTEGER (if set, non-0 means true)
         * </P>
         */
        public static final String ISPRIMARY               = "isprimary";
    }

    public interface PresenceColumns {

    }
}
