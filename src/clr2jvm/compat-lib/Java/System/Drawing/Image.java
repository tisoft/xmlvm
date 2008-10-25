
package System.Drawing;

import javax.swing.ImageIcon;

import System.MarshalByRefObject;
import System.String;



public class Image
    extends MarshalByRefObject
{

    private ImageIcon image = null;



    private Image(String fileName)
    {
        this.image = new ImageIcon(fileName.value);
    }



    public static Image FromFile(String fileName)
    {
        return new Image(fileName);
    }



    public ImageIcon getImage()
    {
        return image;
    }
}
