package org.xmlvm.iphone.internal;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.imageio.ImageIO;

public class FileImageLoader extends ImageLoader {

	public BufferedImage loadImage(String imageName) {
	    try {
            return ImageIO.read(this.getClass().getResource("/" + imageName));
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
	}
}
