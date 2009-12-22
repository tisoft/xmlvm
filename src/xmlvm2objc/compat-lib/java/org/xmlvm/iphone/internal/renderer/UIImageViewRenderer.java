package org.xmlvm.iphone.internal.renderer;

import java.awt.Graphics2D;
import java.awt.Rectangle;
import java.awt.RenderingHints;
import java.awt.image.BufferedImage;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.CGSize;
import org.xmlvm.iphone.UIImage;
import org.xmlvm.iphone.UIImageView;
import org.xmlvm.iphone.UIViewContentMode;
import org.xmlvm.iphone.internal.Simulator;

/**
 * 
 * @author teras
 */
public class UIImageViewRenderer extends UIViewRenderer<UIImageView> {

    public UIImageViewRenderer(UIImageView view) {
        super(view);
    }

    public void paint() {
        Graphics2D g = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        CGRect rect = view.getFrame();

        UIImage backgroundImage = view.getBackgroundImage();
        if (backgroundImage != null) {
            backgroundImage.drawInRect(rect);
        }

        if (view.getImage() != null) {
            // TODO the following should probably be done in UIView using
            // affine transformations
            Rectangle clipRect = g.getClipBounds();
            g.setClip((int) rect.origin.x, (int) rect.origin.y, (int) rect.size.width,
                    (int) rect.size.height);
            BufferedImage image = view.getImage().xmlvmGetImage();
            CGSize imageSize = view.getImage().getSize();
            switch (view.getContentMode()) {
            case UIViewContentMode.ScaleToFill:
                // Do nothing
                break;
            case UIViewContentMode.ScaleAspectFit:
                throw new RuntimeException(
                        "UIImageViewRenderer.paint(): ScaleAspectFit not implemented");
            case UIViewContentMode.ScaleAspectFill:
                if (rect.size.width - imageSize.width < rect.size.height - imageSize.height) {
                    float scale = rect.size.height / imageSize.height;
                    float newWidth = imageSize.width * scale;
                    float dx = newWidth - rect.size.width;
                    rect.size.width = newWidth;
                    rect.origin.x -= dx / 2.0;
                } else {
                    float scale = rect.size.width / imageSize.width;
                    float newHeight = imageSize.height * scale;
                    float dy = newHeight - rect.size.height;
                    rect.size.height = newHeight;
                    rect.origin.y -= dy / 2.0;
                }
                break;
            case UIViewContentMode.Redraw:
                throw new RuntimeException("UIImageViewRenderer.paint(): Redraw not implemented");
            case UIViewContentMode.Center:
                rect.origin.x += (rect.size.width - imageSize.width) / 2.0;
                rect.origin.y += (rect.size.height - imageSize.height) / 2.0;
                rect.size.width = imageSize.width;
                rect.size.height = imageSize.height;
                break;
            case UIViewContentMode.Top:
                throw new RuntimeException("UIImageViewRenderer.paint(): Top not implemented");
            case UIViewContentMode.Bottom:
                throw new RuntimeException("UIImageViewRenderer.paint(): Bottom not implemented");
            case UIViewContentMode.Left:
                throw new RuntimeException("UIImageViewRenderer.paint(): Left not implemented");
            case UIViewContentMode.Right:
                throw new RuntimeException("UIImageViewRenderer.paint(): Right not implemented");
            case UIViewContentMode.TopLeft:
                rect.size.width = imageSize.width;
                rect.size.height = imageSize.height;
                break;
            case UIViewContentMode.TopRight:
                throw new RuntimeException("UIImageViewRenderer.paint(): TopRight not implemented");
            case UIViewContentMode.BottomLeft:
                throw new RuntimeException(
                        "UIImageViewRenderer.paint(): BottomLeft not implemented");
            case UIViewContentMode.BottomRight:
                throw new RuntimeException(
                        "UIImageViewRenderer.paint(): BottomRight not implemented");
            }
            g.setRenderingHint(RenderingHints.KEY_INTERPOLATION,
                    RenderingHints.VALUE_INTERPOLATION_BICUBIC);
            g.drawImage(image, (int) rect.origin.x, (int) rect.origin.y, (int) rect.size.width,
                    (int) rect.size.height, Simulator.getDisplay());
            g.setClip(clipRect.x, clipRect.y, clipRect.width, clipRect.height);
        }
    }
}
