
package System.Windows.Forms;

import javax.swing.JTextArea;

import System.String;



abstract public class TextBoxBase
    extends Control
{
    protected JTextArea t;
    

    public void AppendText(String txt)
    {
        t.append(txt.value);
    }



    public void set_Multiline(boolean flag)
    {
        // TODO not implemented
    }

}
