package org.xmlvm.iphone.internal;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;

import javax.imageio.ImageIO;
import org.xmlvm.iphone.NSBundle;

public class ImageLoader {

    public BufferedImage loadImage(String imageName) {
        // Split image name into parts
        int lastdot = imageName.lastIndexOf('.');
        int lastpath = imageName.lastIndexOf('/');
        String directory = "", resource = "", type = "";
        if (lastdot < 0) {
            throw new RuntimeException("Image name should be in the form PATH/FILENAME.EXT");
        }
        if (lastpath >= 0) {
            directory = imageName.substring(0, lastpath);
            resource = imageName.substring(lastpath + 1, lastdot);
        } else {
            resource = imageName.substring(0, lastdot);
        }
        type = imageName.substring(lastdot + 1);

        String path = NSBundle.mainBundle().pathForResource(resource, type, directory);
        if (path == null) {
            // Not found
            System.err.println("Unable to locate image with name " + imageName);
            return null;
        }
        // Perform the actual loading
        try {
            return ImageIO.read(new File(path));
        } catch (IOException e1) {
            try {
                return ImageIO.read(new URL(path));
            } catch (IOException e2) {
                System.err.println("I/O error when reading image with name " + imageName + " : "
                        + e2.getMessage());
            }
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
