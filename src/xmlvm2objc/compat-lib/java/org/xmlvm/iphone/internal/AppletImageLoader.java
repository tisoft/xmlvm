
package org.xmlvm.iphone.internal;

import java.awt.Image;

import javax.swing.JApplet;



public class AppletImageLoader
    implements ImageLoader
{

    private JApplet theApplet;



    public AppletImageLoader(JApplet theApplet)
    {
        this.theApplet = theApplet;
    }



    public Image loadImage(String imageName)
    {
        return theApplet.getImage(theApplet.getDocumentBase(), imageName);
    }

}
