
package System.Windows.Forms;

import javax.swing.JLabel;

import System.String;



public class Label
    extends Control
{

    public Label()
    {
        component = new JLabel();
    }



    @Override
    public void set_Text(String text)
    {
        ((JLabel) component).setText(text.value);
    }



    @Override
    public String get_Text()
    {
        return new String(((JLabel) component).getText());
    }

}
