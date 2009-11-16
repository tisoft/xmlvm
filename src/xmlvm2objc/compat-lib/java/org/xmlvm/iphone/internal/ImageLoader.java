package org.xmlvm.iphone.internal;

import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

import javax.imageio.ImageIO;

public class ImageLoader {

    public BufferedImage loadImage(String imageName) {
        URL location = this.getClass().getResource("/" + imageName);
        if (location == null) {
            System.err.println("Unable to load image with name " + imageName);
            return null;
        }
        try {
            return ImageIO.read(location);
        } catch (IOException e) {
            System.err.println("I/O error when reading image with name " + imageName + " :"
                    + e.getMessage());
        }
        return null;
    }

    public BufferedImage loadImage(InputStream in) {
        if (in == null) {
            System.err.println("Unable to load image from null InputStream");
            return null;
        }
        try {
            return ImageIO.read(in);
        } catch (IOException e) {
            System.out.println("Unable to load image from InputStream : " + in.getClass().getName()
                    + " : " + e.getMessage());
        }
        return null;
    }
}
