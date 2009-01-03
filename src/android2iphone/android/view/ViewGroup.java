package android.view;

public class ViewGroup extends View {

	
	
	public static class LayoutParams
	{
		public static final int WRAP_CONTENT = 1;
	}
	public void addView(View child)
	{
		this.mainView.addSubview(child.mainView);
	}
}
