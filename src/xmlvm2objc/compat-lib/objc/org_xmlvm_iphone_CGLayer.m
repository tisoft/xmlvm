#import "org_xmlvm_iphone_CGLayer.h"


// CGLayer
//----------------------------------------------------------------------------
@implementation org_xmlvm_iphone_CGLayer;

+ (org_xmlvm_iphone_CGLayer*) createWithContext___org_xmlvm_iphone_CGContext_org_xmlvm_iphone_CGSize :(org_xmlvm_iphone_CGContext*)context :(org_xmlvm_iphone_CGSize*)size
{
	org_xmlvm_iphone_CGLayer *retval = [[org_xmlvm_iphone_CGLayer alloc] init];
	CGSize s = CGSizeMake(size->width, size->height);
	retval->layer = CGLayerCreateWithContext(context->context, s, NULL);
	
	return retval;
}

- (org_xmlvm_iphone_CGContext*) getContext 
{
	org_xmlvm_iphone_CGContext *context = [[org_xmlvm_iphone_CGContext alloc] init];
	context->context = CGLayerGetContext(layer);
	
	return context;
}

- (CGLayerRef) getCGLayer
{
	return layer;
}

- (org_xmlvm_iphone_CGSize*) getSize
{
    org_xmlvm_iphone_CGSize* s = [[org_xmlvm_iphone_CGSize alloc] init];
    CGSize size = CGLayerGetSize(layer);
    s->width = size.width;
    s->height = size.height;
    return s;
}

@end


