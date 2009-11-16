
package org.xmlvm.iphone;

/**
 * 
 * @author teras
 */
public interface UINavigationBarDelegate {

    public boolean shouldPushItem(UINavigationBar bar, UINavigationItem item);

    public void didPushItem(UINavigationBar bar, UINavigationItem item);

    public boolean shouldPopItem(UINavigationBar bar, UINavigationItem item);

    public void didPopItem(UINavigationBar bar, UINavigationItem item);
}
