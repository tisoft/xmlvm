#import "xmlvm.h"
#import "java_lang_Object.h"
#import "java_lang_String.h"
#import "org_xmlvm_iphone_UITableViewCell.h"
#import "org_xmlvm_iphone_NSIndexPath.h"


// UITableViewDataSource
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_UITableViewDataSource : java_lang_Object <UITableViewDataSource>

- (void) __init_org_xmlvm_iphone_UITableViewDataSource;

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section;


- (org_xmlvm_iphone_UITableViewCell*) cellForRowAtIndexPath___org_xmlvm_iphone_UITableView_org_xmlvm_iphone_NSIndexPath
      :(UITableView*) table
      :(org_xmlvm_iphone_NSIndexPath*) idx;
- (int) numberOfRowsInSection___org_xmlvm_iphone_UITableView_int :(UITableView*) table :(int) section;
- (int) numberOfSectionsInTableView___org_xmlvm_iphone_UITableView:(UITableView *)tableView;
- (java_lang_String *) titleForHeaderInSection___org_xmlvm_iphone_UITableView_int :(UITableView*) tableView :(int) section;

@end

