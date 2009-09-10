
package org.xmlvm.iphone;

import java.awt.image.BufferedImage;

import org.xmlvm.iphone.internal.ImageLoader;
import org.xmlvm.iphone.internal.Simulator;



public class UIImage
{
    public BufferedImage image;

    private UIImage(String filename)
    {
        ImageLoader loader = Simulator.getImageLoader();
        image = loader.loadImage(filename);
    }

    public static UIImage imageAtPath(String filename)
    {
   		return new UIImage(filename);
    }

    public CGImage getCoreImage()
    {
    	return new CGImage(image);
    }
    
    public void draw1PartImageInRect(CGRect position)
    {
        CGContext.theContext.graphicsContext.drawImage(image,
                (int) position.origin.x, (int) position.origin.y,
                (int) position.size.width, (int) position.size.height,
                Simulator.getDisplay());
    }
    
    public void draw(int x, int y) {
    	CGContext.theContext.graphicsContext.drawImage(image, x, y, null);
    }
    
    public CGSize getSize()
    {
    	int width = image.getWidth();
    	int height = image.getHeight();
    	return new CGSize(width, height);
    }
}
