package System.Windows.Forms;

import java.util.ArrayList;

public class ToolStripItemCollection {

	public ToolStripItemCollection()
	{
	
	}
	IToolStripItemCollectionOnAdd onAdd;
	
	public ToolStripItemCollection(IToolStripItemCollectionOnAdd onAdd)
	{
		this.onAdd = onAdd;
	}
	public ArrayList<ToolStripItem> allItems = new ArrayList<ToolStripItem>();
	public void AddRange(ToolStripItem items[])
	{
		for(ToolStripItem i:items)
		{
			if(onAdd != null)
			{
			    onAdd.ItemAdded(i);
			}
		allItems.add(i);
		}
	}
}
