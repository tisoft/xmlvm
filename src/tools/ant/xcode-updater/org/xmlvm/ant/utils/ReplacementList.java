/*
 * Copyright (c) 2004-2008 XMLVM --- An XML-based Programming Language
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

package org.xmlvm.ant.utils;

import org.xmlvm.ant.utils.ReplacementList.ReplaceItem;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Random;
import org.xmlvm.ant.xcode.AntResourceManager;

import static org.xmlvm.ant.xcode.XCodeFile.*;

/**
 * This is a list of possible replacements, when trimming source code.
 * By replacing long names with smaller ones, the size of the produced code is
 * smaller.
 * @author teras
 */
public class ReplacementList extends ArrayList<ReplaceItem> {

    /**
     * How big the identifiers will be
     */
    private static final int IDENT_SIZE = 2;
    private static final String FIRST_LETTER = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static final String OTHER_LETTERS = FIRST_LETTER.toLowerCase();
    //
    public static final String DEFAULT_TEMPLATE = "My";
    //
    private final Random rnd;
    private final HashSet<String> used = new HashSet<String>();

    /**
     * Create a new replacement list
     * @param should_replace whether we actually want to do any replacement.
     * @param template The template to use
     * @param seed The random seed to use. If it is equal to Long.MAX_VALUE, then
     * a random seed based on system clock is used.
     */
    public ReplacementList(boolean should_replace, String template, long seed, String resources, String resourceroot) {
        if (seed == Long.MAX_VALUE) {
            rnd = new Random();
        } else {
            rnd = new Random(seed);
        }

        used.add(template);
        used.add(template.toUpperCase());
        used.add(template.toLowerCase());
        used.add(template.toUpperCase() + "LIB");
        used.add(template.toLowerCase() + "LIB");

        // Pre replacements
        if (should_replace) {
            add(new ReplaceItem("java_lang_annotation_", template));
            add(new ReplaceItem("java_lang_ref_", template));
            add(new ReplaceItem("java_lang_String", getUniqueIdentifier(IDENT_SIZE)));
            add(new ReplaceItem("java_lang_", template));

            add(new ReplaceItem("java_io_", template));
            add(new ReplaceItem("java_util_", template));
            add(new ReplaceItem("java_net_", template));
            add(new ReplaceItem("java_nio_", template));
            add(new ReplaceItem("java_security_", template));
            add(new ReplaceItem("javax_crypto_", template));
            add(new ReplaceItem("java_sql_", template));
            add(new ReplaceItem("org_apache_http_message_", template + "m"));
            add(new ReplaceItem("org_apache_http_client_", template + "c"));
            add(new ReplaceItem("org_xmlvm_iphone_gl_", template));
            add(new ReplaceItem("org_xmlvm_iphone_", template));

            add(new ReplaceItem("__init", "init" + template + "With"));
            add(new ReplaceItem("ARRAYTYPE", getUniqueIdentifier(IDENT_SIZE) + getUniqueIdentifier(IDENT_SIZE)));
            add(new ReplaceItem("_GET_", getUniqueIdentifier(IDENT_SIZE)));
            add(new ReplaceItem("_PUT_", getUniqueIdentifier(IDENT_SIZE)));

            add(new ReplaceItem("_byte", getUniqueIdentifier(IDENT_SIZE)));
            add(new ReplaceItem("_short", getUniqueIdentifier(IDENT_SIZE)));
            add(new ReplaceItem("_int", getUniqueIdentifier(IDENT_SIZE)));
            add(new ReplaceItem("_long", getUniqueIdentifier(IDENT_SIZE)));
            add(new ReplaceItem("_float", getUniqueIdentifier(IDENT_SIZE)));
            add(new ReplaceItem("_double", getUniqueIdentifier(IDENT_SIZE)));
            add(new ReplaceItem("_boolean", getUniqueIdentifier(IDENT_SIZE)));
            add(new ReplaceItem("_char", getUniqueIdentifier(IDENT_SIZE)));

            if (template.length() < 5) {
                template = template + "LIB";
            }

            add(new ReplaceItem("XMLVM", template.toUpperCase()));
            add(new ReplaceItem("xmlvm", template.toLowerCase()));
            add(new ReplaceItem("java", template.toLowerCase()));
        }

        /* These are for Xcode resource copying. It is requireld to be called later,
         * in the case some files are under a path named "xmlvm" */
        add(new ReplaceItem(TEMPL_RESOURCE_LIST, AntResourceManager.getResourcesAsRegExQuoteList(resources, resourceroot)));
        add(new ReplaceItem(TEMPL_RESOURCE_DIR, resourceroot));

        // Post replalcements
        if (should_replace) {
            add(new ReplaceItem("__", "x"));
            add(new ReplaceItem("___", "_"));
        }
    }

    private String getUniqueIdentifier(int size) {
        String found = "";
        do {
            StringBuilder s = new StringBuilder();
            s.append(FIRST_LETTER.charAt(rnd.nextInt(FIRST_LETTER.length())));
            for (int i = 1; i < size; i++) {
                s.append(OTHER_LETTERS.charAt(rnd.nextInt(OTHER_LETTERS.length())));
            }
            found = s.toString();
        } while (used.contains(found));
        used.add(found);
        return found;
    }

    /**
     * Perform the actual replace on the given data
     * @param data Data to perform the replacements
     * @return A new String with the replaced data
     */
    public String actOnData(String data) {
        for (ReplaceItem ri : this) {
            data = data.replaceAll(ri.from, ri.to);
        }
        return data;
    }

    class ReplaceItem {

        private String from;
        private String to;

        public ReplaceItem(String key, String value) {
            this.from = key;
            this.to = value;
        }
    }
}
