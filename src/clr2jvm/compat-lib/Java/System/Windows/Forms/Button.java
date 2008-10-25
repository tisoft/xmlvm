
package System.Windows.Forms;

import java.awt.Insets;

import javax.swing.JButton;

import System.String;

public class Button
    extends Control
{

    public Button()
    {
        component = new JButton();
        ((JButton) component).setMargin(new Insets(0, 0, 0, 0));
    }



    @Override
    public void set_Text(String text)
    {
        ((JButton) component).setText(text.value);
    }



    @Override
    public String get_Text()
    {
        return new String(((JButton) component).getText());
    }

}
