
package org.xmlvm.iphone.internal;

import java.awt.Image;
import java.awt.image.BufferedImage;

import javax.swing.JApplet;



public class AppletImageLoader
    extends ImageLoader
{

    private JApplet theApplet;



    public AppletImageLoader(JApplet theApplet)
    {
        this.theApplet = theApplet;
    }



    public BufferedImage loadImage(String imageName)
    {
        return toBufferedImage(theApplet.getImage(theApplet.getDocumentBase(), imageName));
    }

}
