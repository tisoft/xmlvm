#import "xmlvm.h"
#import "org_xmlvm_iphone_CGRect.h"
#import "org_xmlvm_iphone_CGSize.h"
#import "org_xmlvm_iphone_CGContext.h"
#import "org_xmlvm_iphone_CGDataProvider.h"
#import <CoreGraphics/CGLayer.h>


// CGLayer
//----------------------------------------------------------------------------
@interface org_xmlvm_iphone_CGLayer : java_lang_Object {
	@public CGLayerRef layer;
}

+ (org_xmlvm_iphone_CGLayer*) createWithContext___org_xmlvm_iphone_CGContext_org_xmlvm_iphone_CGSize :(org_xmlvm_iphone_CGContext*)context :(org_xmlvm_iphone_CGSize*)size;
- (CGLayerRef) getCGLayer;
- (org_xmlvm_iphone_CGContext*) getContext;
- (org_xmlvm_iphone_CGSize*) getSize;

@end
