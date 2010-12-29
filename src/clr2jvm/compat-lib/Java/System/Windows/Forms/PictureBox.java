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

package System.Windows.Forms;

import java.awt.Dimension;
import javax.swing.ImageIcon;
import javax.swing.JLabel;

import System.Drawing.Image;
import System.String;



public class PictureBox
    extends Control
{

    public PictureBox()
    {
        component = new JLabel();
    }



    @Override
    public String get_Text()
    {
        // TODO Auto-generated method stub
        return null;
    }



    @Override
    public void set_Text(String text)
    {
        // TODO Auto-generated method stub

    }



    public void set_Image(Image image)
    {
        ImageIcon icon = image.getImage();
        Dimension size = new Dimension(icon.getIconWidth(), icon
                .getIconHeight());
        ((JLabel) component).setIcon(icon);
        component.setSize(size);
    }
}
