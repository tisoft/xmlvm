package org.xmlvm.iphone;

import java.awt.Font;

public class CGFont {
    public Font font;

    private CGFont(Font font) {
        this.font = font;
    }

    public static CGFont createFromDataProider(CGDataProvider provider) {
        try {
            return new CGFont(Font.createFont(Font.TRUETYPE_FONT, provider.in));
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public int getAscent() {
        return 0;
    }

    public int getDescent() {
        return 0;
    }

    public int getUnitsPerEm() {
        return 0;
    }
}
