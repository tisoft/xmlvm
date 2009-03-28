#import "org_xmlvm_iphone_NSIndexPath.h"

// NSIndexPath
//----------------------------------------------------------------------------
@implementation NSIndexPath (cat_org_xmlvm_iphone_NSIndexPath)

- (int) getSection
{
	return [self section];
}

- (int) getRow
{
	return [self row];
}

@end
