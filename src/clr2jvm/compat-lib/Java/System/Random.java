package System;


public class Random extends Object {

	java.util.Random rand;
	
	public Random()
	{
	rand = new 	java.util.Random();
	}
	
	public double NextDouble()
	{
		return rand.nextDouble();
	}
}
