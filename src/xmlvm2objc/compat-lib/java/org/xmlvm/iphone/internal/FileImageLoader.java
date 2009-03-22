package org.xmlvm.iphone.internal;

import java.awt.Graphics;
import java.awt.GraphicsConfiguration;
import java.awt.GraphicsDevice;
import java.awt.GraphicsEnvironment;
import java.awt.HeadlessException;
import java.awt.Image;
import java.awt.Toolkit;
import java.awt.Transparency;
import java.awt.image.BufferedImage;
import java.awt.image.ColorModel;
import java.awt.image.PixelGrabber;

import javax.swing.ImageIcon;

public class FileImageLoader extends ImageLoader {

	public BufferedImage loadImage(String imageName) {
		Image image = Toolkit.getDefaultToolkit().getImage(
				this.getClass().getResource("/" + imageName));
		return toBufferedImage(image);
	}
}
