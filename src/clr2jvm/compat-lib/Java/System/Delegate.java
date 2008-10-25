package System;

public class Delegate 

{
	public static Delegate Combine(Delegate a, Delegate b) throws Exception
	{
		if (a == null) {
			if (b == null)
				return null;
			return b;
		} else 
			if (b == null)
				return a;
		
		return a.CombineImpl (b);
	}
	public static Delegate Remove(Delegate a, Delegate b) throws Exception
	{
		if (a == null) {
			if (b == null)
				return null;
			return b;
		} else 
			if (b == null)
				return a;
		
		return a.RemoveImpl (b);
	}
	protected Delegate RemoveImpl(Delegate d) throws Exception
	{
		throw new Exception("Not implemented");
	}
	protected Delegate CombineImpl(Delegate d) throws Exception
	{
		throw new Exception("Not implemented");
	}
}
