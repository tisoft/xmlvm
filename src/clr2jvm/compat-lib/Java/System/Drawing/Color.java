package System.Drawing;

import System.Object;

public class Color extends Object {
	public java.awt.Color mycolor;
	
	public Color()
	{
		
	}
	public Color(java.awt.Color  myColor)
	{
		this.mycolor = myColor;
		
	}
	public static Color get_Black()
	{
		return new Color(java.awt.Color.BLACK);
	}
}
