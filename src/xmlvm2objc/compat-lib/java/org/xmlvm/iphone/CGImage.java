package org.xmlvm.iphone;

import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.InputStream;

import org.xmlvm.iphone.internal.ImageLoader;
import org.xmlvm.iphone.internal.Simulator;

public class CGImage {
    public BufferedImage image;

    private CGImage(InputStream in) {
        ImageLoader loader = Simulator.getImageLoader();
        BufferedImage temp = loader.loadImage(in);
        
        // note that the PNG loader under ObjC loads images flipped
        image = new BufferedImage(temp.getWidth(), temp.getHeight(), BufferedImage.TYPE_INT_ARGB);
        Graphics2D g = (Graphics2D) image.getGraphics();
        g.scale(1, -1);
        g.drawImage(temp, 0, -temp.getHeight(), null);
    }
    
    private CGImage() {
    	
    }

    CGImage(BufferedImage image) {
    	this.image = image;
    }
    
    public static CGImage createWithImageInRect(CGImage image, CGRect rect) {
    	CGImage ret = new CGImage();
    	ret.image = image.image.getSubimage((int) rect.origin.x, (int) rect.origin.y, 
    									    (int) rect.size.width, (int) rect.size.height);
    	
    	return ret;
    }
    
	public static CGImage createPNGFromDataProvider(CGDataProvider provider) {
		try {
			return new CGImage(provider.in);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

    public CGSize getSize()
    {
    	int width = image.getWidth();
    	int height = image.getHeight();
    	return new CGSize(width, height);
    }
}
