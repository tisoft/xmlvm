package org.xmlvm.iphone;

import java.awt.image.BufferedImage;

import org.xmlvm.iphone.internal.ImageLoader;
import org.xmlvm.iphone.internal.Simulator;

public class UIImage {

    private BufferedImage image;

    private UIImage(String filename) {
        ImageLoader loader = Simulator.getImageLoader();
        image = loader.loadImage(filename);
    }

    public static UIImage imageWithContentsOfFile(String filename) {
        UIImage uiImage = new UIImage(filename);
        return uiImage.image != null ? uiImage : null;
    }

    public CGImage getCGImage() {
        return new CGImage(image);
    }

    public void drawInRect(CGRect rect) {
        CGContext.theContext.graphicsContext.drawImage(image, (int) rect.origin.x,
                (int) rect.origin.y, (int) rect.size.width, (int) rect.size.height, Simulator
                        .getDisplay());
    }

    public void drawAtPoint(CGPoint point) {
        CGContext.theContext.graphicsContext.drawImage(image, (int) point.x, (int) point.y,
                Simulator.getDisplay());
    }

    public CGSize getSize() {
        if (image == null)
            return new CGSize(0, 0);
        int width = image.getWidth();
        int height = image.getHeight();
        return new CGSize(width, height);
    }

    public BufferedImage xmlvmGetImage() {
        return image;
    }
}
