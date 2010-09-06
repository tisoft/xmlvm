/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package org.xmlvm.iphone;

import java.util.Map;

import org.xmlvm.XMLVMSkeletonOnly;

/**
 * 
 * @author teras
 */
@XMLVMSkeletonOnly
public interface CAAction {

    void runAction(String key, NSObject object, Map arguments);
}
