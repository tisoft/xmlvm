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

package org.xmlvm.ant;

import java.io.File;
import java.io.FileInputStream;
import java.util.ArrayList;
import javax.xml.parsers.DocumentBuilderFactory;
import org.apache.tools.ant.BuildException;
import org.apache.tools.ant.PropertyHelper;
import org.apache.tools.ant.Task;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

/**
 * This task is able to parse the AndroidManifest.xml file and retrieve useful
 * information, such as the main package and main activity class.
 * It is used by Android projects to launch the current Activity.
 */
public class AndroidManifestParser extends Task {

    private File manifest;

    /**
     * Define the location of the AndroidManifest.xml file
     * @param manifest the AndroidManifest.xml file
     */
    public void setManifest(File manifest) {
        this.manifest = manifest;
    }

    /**
     * perform the actual ant task
     * @throws BuildException
     */
    @Override
    public void execute() throws BuildException {
        try {
            Node root = DocumentBuilderFactory.newInstance().newDocumentBuilder().parse(new FileInputStream(manifest)).getDocumentElement();
            for (Node activity : getNodesWithName(getNodeWithName(root, "application"), "activity", true)) {
                Node intent_filter = getNodeWithName(activity, "intent-filter");
                Node action = getNodeWithName(intent_filter, "action");
                Node category = getNodeWithName(intent_filter, "category");
                if (action != null && category != null) {
                    String packg = getAttribute(root, "package");
                    String name = getAttribute(activity, "android:name");
                    String acname = getAttribute(action, "android:name");
                    String catname = getAttribute(category, "android:name");
                    if (packg != null && name != null && acname != null && catname != null && acname.equalsIgnoreCase("android.intent.action.MAIN")
                            && catname.equalsIgnoreCase("android.intent.category.LAUNCHER")) {

                        PropertyHelper ph = PropertyHelper.getPropertyHelper(getProject());
                        ph.setProperty(null, "xmlvm.android.package", (Object) packg, false);
                        ph.setProperty(null, "xmlvm.android.activity", (Object) name, false);
                        return;
                    }
                }
            }
        } catch (Exception ex) {
            if (ex instanceof BuildException) {
                throw (BuildException) ex;
            } else {
                throw new BuildException(ex);
            }
        }
        throw new BuildException("Unable to find main activity");
    }

    private static Node getNodeWithName(Node parent, String name) throws BuildException {
        ArrayList<Node> nodes = getNodesWithName(parent, name, false);
        if (nodes.size() < 1) {
            throw new BuildException("Unable to find child node with name " + name + " in node " + parent.getNodeName());
        }
        return nodes.get(0);
    }

    private static ArrayList<Node> getNodesWithName(Node parent, String name, boolean all_of_them) throws BuildException {
        ArrayList<Node> valid = new ArrayList<Node>();
        NodeList children = parent.getChildNodes();
        for (int i = 0; i < children.getLength(); i++) {
            if (children.item(i).getNodeName().equalsIgnoreCase(name)) {
                valid.add(children.item(i));
                if (!all_of_them) {
                    break;
                }
            }
        }
        return valid;
    }

    private static String getAttribute(Node n, String name) {
        if (n == null || name == null) {
            return null;
        }
        NamedNodeMap map = n.getAttributes();
        if (map == null) {
            return null;
        }
        Node snode = map.getNamedItem(name);
        if (snode == null) {
            return null;
        }
        return snode.getNodeValue();
    }
}
