/* Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

package org.xmlvm.acl.common.subsystems;

import org.xmlvm.acl.common.objects.CommonFont;

import android.graphics.RectF;

/**
 *
 */
public interface CommonFontFactory {
    
    public static final int LINEBREAK_WORD_WRAP         = 0;
    public static final int LINEBREAK_CHARACTER_WRAP   = 1;
    public static final int LINEBREAK_HEAD_TRUNCATION = 3;
    public static final int LINEBREAK_CLIP = 2;
    public static final int LINEBREAK_TAIL_TRUNCATION = 4;
    public static final int LINEBREAK_MIDDLE_TRUNCATION = 5;

    CommonFont systemFontOfSize(float size);

    float labelFontSize();

    CommonFont fontWithNameSize(String string, float pointSize);

    RectF sizeWithFont(String string, CommonFont font);
    
    RectF sizeWithFont(String string, CommonFont font, RectF constraints, int lineBreakMode);

    int getAlignmentFromGravity(int gravity);

    void drawAtPoint(String text, RectF rect, CommonFont font);
    
}
