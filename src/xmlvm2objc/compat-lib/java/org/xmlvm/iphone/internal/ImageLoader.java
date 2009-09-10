package org.xmlvm.iphone.internal;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;

import javax.imageio.ImageIO;

public class ImageLoader {

	public BufferedImage loadImage(String imageName) {
	    try {
            return ImageIO.read(this.getClass().getResource("/" + imageName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
	}
	
	public BufferedImage loadImage(InputStream in) {
	    try {
            return ImageIO.read( in );
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
	}
}
