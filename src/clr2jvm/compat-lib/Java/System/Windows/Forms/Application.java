
package System.Windows.Forms;

import java.awt.Frame;

import System.Object;



public class Application
    extends Object
{
	
	static public void Exit()
	{
		System.exit(0);
	}

    static public void Run(Form form)
    {
        Frame frame = form.getFrame();
        frame.pack();
        frame.setVisible(true);
    }
}
