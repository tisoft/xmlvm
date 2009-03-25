#import "org_xmlvm_iphone_UITableViewDataSource.h"


// UITableViewDataSource
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_UITableViewDataSource

- (void) __init_org_xmlvm_iphone_UITableViewDataSource
{
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
	return [self cellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath :tableView :indexPath];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
	return [self numberOfRowsInSection___org_xmlvm_iphone_UITableView_int :tableView :(int) section];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
	return [self numberOfSectionsInTableView___org_xmlvm_iphone_UITableView: tableView];
}


// Will be over-ridden in derived class
- (org_xmlvm_iphone_UITableViewCell*) cellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath
      :(UITableView*) table
      :(org_xmlvm_iphone_NSIndexPath*) idx
{
}

// Will be over-ridden in derived class
- (int) numberOfRowsInSection___org_xmlvm_iphone_UITableView_int :(UITableView*) table :(int) section
{
	return 0;
}

// Might be over-ridden in derived class
- (int)numberOfSectionsInTableView___org_xmlvm_iphone_UITableView :(UITableView *)tableView
{
	return 1;
}

@end

