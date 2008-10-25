
package org.xmlvm.iphone.internal;

import java.awt.Image;
import java.awt.Toolkit;



public class FileImageLoader
    implements ImageLoader
{

    public Image loadImage(String imageName)
    {
        return Toolkit.getDefaultToolkit().getImage(imageName);
    }

}
