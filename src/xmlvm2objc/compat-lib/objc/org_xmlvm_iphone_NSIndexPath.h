#import "xmlvm.h"

// NSIndexPath
//----------------------------------------------------------------------------
typedef NSIndexPath org_xmlvm_iphone_NSIndexPath;
@interface NSIndexPath (cat_org_xmlvm_iphone_NSIndexPath)

- (int) getSection;
- (int) getRow;

@end
