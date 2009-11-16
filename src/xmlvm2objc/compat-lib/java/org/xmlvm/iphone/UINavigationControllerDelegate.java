
package org.xmlvm.iphone;

/**
 * 
 * @author teras
 */
public interface UINavigationControllerDelegate {

    public void willShowViewController(UINavigationController navigationController,
            UIViewController viewController, boolean animated);

    public void didShowViewController(UINavigationController navigationController,
            UIViewController viewController, boolean animated);
}
