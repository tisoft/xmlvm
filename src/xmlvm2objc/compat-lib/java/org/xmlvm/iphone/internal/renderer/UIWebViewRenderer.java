package org.xmlvm.iphone.internal.renderer;

import java.awt.Color;
import java.awt.Graphics2D;

import org.xmlvm.iphone.CGContext;
import org.xmlvm.iphone.CGRect;
import org.xmlvm.iphone.UIWebView;

public class UIWebViewRenderer extends UIViewRenderer<UIWebView> {

    private UIWebView webView;

    public UIWebViewRenderer(UIWebView view) {
        super(view);
        webView = view;
    }

    public void paint() {
        Graphics2D g = CGContext.UICurrentContext().xmlvmGetGraphics2D();
        CGRect displayRect = view.getFrame();
        int x = (int) displayRect.origin.x;
        int y = (int) displayRect.origin.y;
        int w = (int) displayRect.size.width;
        int h = (int) displayRect.size.height;
        g.fillRect(x, y, w, h);
        g.setColor(Color.WHITE);
        g.drawString(webView.xmlvmGetRequest().xmlvmGetUrl().xmlvmGetURLString(),
                x + 20, y + 20);
    }

}
