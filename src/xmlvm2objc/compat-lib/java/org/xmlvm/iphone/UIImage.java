package org.xmlvm.iphone;

import java.awt.image.BufferedImage;

import org.xmlvm.iphone.internal.ImageLoader;
import org.xmlvm.iphone.internal.Simulator;

public class UIImage {

    private BufferedImage image;

    private UIImage(BufferedImage image) {
        this.image = image;
    }

    private UIImage(String filename) {
        ImageLoader loader = Simulator.getImageLoader();
        image = loader.loadImage(filename);
    }

    public static UIImage imageWithContentsOfFile(String filename) {
        UIImage uiImage = new UIImage(filename);
        return uiImage.image != null ? uiImage : null;
    }

    public static UIImage xmlvmCreateFromBufferedImage(BufferedImage bi) {
        return new UIImage(bi);
    }

    public CGImage getCGImage() {
        return new CGImage(image);
    }

    public void drawInRect(CGRect rect) {
        CGContext.UICurrentContext().xmlvmGetGraphics2D().drawImage(image, (int) rect.origin.x,
                (int) rect.origin.y, (int) rect.size.width, (int) rect.size.height,
                Simulator.getDisplay());
    }

    public void drawAtPoint(CGPoint point) {
        CGContext.UICurrentContext().xmlvmGetGraphics2D().drawImage(image, (int) point.x,
                (int) point.y, Simulator.getDisplay());
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

    /**
     * @param x
     * @param y
     * @param width
     * @param height
     * @return
     */
    public UIImage cropImage(int x, int y, int width, int height) {
        return new UIImage(image.getSubimage(x, y, width, height));
    }
}
