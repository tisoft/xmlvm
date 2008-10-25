
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
