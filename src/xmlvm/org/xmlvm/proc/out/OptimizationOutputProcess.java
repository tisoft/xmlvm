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

import org.xmlvm.main.Arguments;
import org.xmlvm.proc.BundlePhase1;
import org.xmlvm.proc.BundlePhase2;
import org.xmlvm.proc.XmlvmProcessImpl;
import org.xmlvm.proc.XmlvmResource;

/**
 * Optimizes the DEXMLVM output.
 */
public class OptimizationOutputProcess extends XmlvmProcessImpl {

    /**
     * Initializes the {@link OptimizationOutputProcess}.
     */
    public OptimizationOutputProcess(Arguments arguments) {
        super(arguments);
        addSupportedInput(DEXmlvmOutputProcess.class);
    }

    @Override
    public boolean processPhase1(BundlePhase1 bundle) {
        return true;
    }

    @Override
    public boolean processPhase2(BundlePhase2 bundle) {

        for (XmlvmResource resource : bundle.getResources()) {
            // TODO (Arno): You can do anything you like with the resources
            // here, even changing them is fine. There is no need to re-add
            // these resources as they are already part of the bundle.
        }

        // TODO (Arno): To add a new resource, use the following:
        // bundle.addAdditionalResource(resource);
        return true;
    }
}
