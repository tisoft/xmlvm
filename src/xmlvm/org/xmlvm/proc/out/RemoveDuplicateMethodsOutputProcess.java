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

package org.xmlvm.proc.out;

import java.util.ArrayList;
import java.util.List;

import org.xmlvm.Log;
import org.xmlvm.main.Arguments;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;
import org.xmlvm.proc.XmlvmResource.XmlvmMethod;
import org.xmlvm.proc.XmlvmResourceProvider;

/**
 * Process to delete duplicate synthetic methods
 * 
 * javac will sometimes generate two methods that only differ in their return type.
 * This can happen e.g. with type erasures. This class will determine
 * if the given method is a duplicate.
 * 
 * A method is a duplicate if it is (1) synthetic, (2) a method with the same name exists
 * in the class, and (3) signatures only differ in their return types.
 * 
 * This example will lead to a duplicate method clone in AbstractStruct as defined above
 * 
 * <code>
 * package testpackage2;
 *
 * public abstract class AbstractStruct {
 *   public AbstractStruct clone() {
 *       return null;
 *   }
 * }
 * 
 * public abstract class PrimitiveStruct<T> extends AbstractStruct {
 *   @Override
 *   public abstract PrimitiveStruct<T> clone();
 * }
 * 
 * </code>
 * 
 */
public class RemoveDuplicateMethodsOutputProcess extends XmlvmProcessImpl<XmlvmResourceProvider> implements XmlvmResourceProvider {

    private final String TAG = RemoveDuplicateMethodsOutputProcess.class.getName(); 
    
    private List<XmlvmResource> resources = new ArrayList<XmlvmResource>();
    
    public RemoveDuplicateMethodsOutputProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(RecursiveResourceLoadingProcess.class);
    }
    
    @Override
    public List<OutputFile> getOutputFiles() {
        return null;
    }

    @Override
    public boolean process() {
        Log.debug(TAG, "Processing RemoveDuplicateMethodsOutputProcess");
        
        List<XmlvmResourceProvider> preprocesses = preprocess();
        // Collect all XmlvmResource instances.
        for (XmlvmResourceProvider process : preprocesses) {
            List<XmlvmResource> xmlvmResources = process.getXmlvmResources();
            for (XmlvmResource xmlvm : xmlvmResources) {
                if (xmlvm != null) {
                    stripDuplicateMethods(xmlvm);
                    resources.add(xmlvm);
                }
            }
        }
        
        return true;
    }

    /**
     * Go through all methods of the xmlvm resource and check if the method
     * is synthetic and duplicated. If yes, delete the method
     * 
     * @param xmlvm
     */
    private void stripDuplicateMethods(XmlvmResource xmlvm) {
        List<XmlvmMethod> methods = xmlvm.getMethods();
        for(XmlvmMethod search : methods) {
            if(search.isSynthetic()) {
                for(XmlvmMethod each : methods) {
                    if(each.getName().equals(search.getName())
                            && each.doesOverrideMethod(search)
                            && each!=search) {
                        Log.debug(TAG, "Removing duplicate method " + search.getName() + " in " + xmlvm.getFullName());
                        xmlvm.removeMethod(search);
                        break;
                    }
                }
            }
        }
    }

    @Override
    public List<XmlvmResource> getXmlvmResources() {
        return resources;
    }

}
