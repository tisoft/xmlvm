
//XMLVM_BEGIN_IMPLEMENTATION
@interface CALayer (CALayerWrapperCategory)
+ (void) initialize_class;
@end

@implementation CALayer (CALayerWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_CALayer.classInitialized)
        __INIT_org_xmlvm_ios_CALayer();
}
@end

void org_xmlvm_ios_CALayer_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [CALayer class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_CALayer();
        org_xmlvm_ios_CALayer_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_CALayer]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CALayer]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer___INIT___]

    CALayer* var0 = [[CALayer alloc]init];

    org_xmlvm_ios_CALayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer___INIT____java_lang_Object]

    CALayer* var0 = [[CALayer alloc] initWithLayer:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];
    org_xmlvm_ios_CALayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer___INIT___]
    CALayer* var0 = [[CALayer alloc ] init];
    org_xmlvm_ios_CALayer_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_layer__]

    CALayer* var0 =  [CALayer layer];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_presentationLayer__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz presentationLayer];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_modelLayer__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz modelLayer];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_defaultValueForKey___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    NSObject* var0 =  [CALayer  defaultValueForKey:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_needsDisplayForKey___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 =  [CALayer  needsDisplayForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_shouldArchiveValueForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    BOOL var0 = [thiz  shouldArchiveValueForKey:ObjCVar1];
    [ObjCVar1 release];


    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getBounds__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz bounds];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setBounds___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz setBounds:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getPosition__]

    XMLVM_VAR_THIZ;
    CGPoint var0 = [thiz position];
    
    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setPosition___org_xmlvm_ios_CGPoint]

    XMLVM_VAR_THIZ;
    [thiz setPosition:toCGPoint(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getZPosition__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz zPosition];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setZPosition___float]

    XMLVM_VAR_THIZ;
    [thiz setZPosition:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getAnchorPoint__]

    XMLVM_VAR_THIZ;
    CGPoint var0 = [thiz anchorPoint];
    
    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setAnchorPoint___org_xmlvm_ios_CGPoint]

    XMLVM_VAR_THIZ;
    [thiz setAnchorPoint:toCGPoint(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getAnchorPointZ__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz anchorPointZ];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setAnchorPointZ___float]

    XMLVM_VAR_THIZ;
    [thiz setAnchorPointZ:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getTransform__]

    XMLVM_VAR_THIZ;
    CATransform3D var0 = [thiz transform];
    
    return fromCATransform3D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setTransform___org_xmlvm_ios_CATransform3D]

    XMLVM_VAR_THIZ;
    [thiz setTransform:toCATransform3D(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_affineTransform__]

    XMLVM_VAR_THIZ;
    
    CGAffineTransform var0 = [thiz affineTransform];

    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setAffineTransform___org_xmlvm_ios_CGAffineTransform]

    XMLVM_VAR_THIZ;
    [thiz  setAffineTransform:toCGAffineTransform(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getFrame__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz frame];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setFrame___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz setFrame:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_isHidden__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isHidden];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setHidden___boolean]

    XMLVM_VAR_THIZ;
    [thiz setHidden:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_isDoubleSided__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isDoubleSided];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setDoubleSided___boolean]

    XMLVM_VAR_THIZ;
    [thiz setDoubleSided:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_isGeometryFlipped__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isGeometryFlipped];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setGeometryFlipped___boolean]

    XMLVM_VAR_THIZ;
    [thiz setGeometryFlipped:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_contentsAreFlipped__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz contentsAreFlipped];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getSuperlayer__]

    XMLVM_VAR_THIZ;
    CALayer* var0 = [thiz superlayer];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_removeFromSuperlayer__]

    XMLVM_VAR_THIZ;
    [thiz removeFromSuperlayer];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getSublayers__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz sublayers];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setSublayers___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setSublayers:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_addSublayer___org_xmlvm_ios_CALayer]

    XMLVM_VAR_THIZ;
    [thiz  addSublayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_insertSublayer___org_xmlvm_ios_CALayer_int]

    XMLVM_VAR_THIZ;
    [thiz  insertSublayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) atIndex:n2];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_insertSublayer___org_xmlvm_ios_CALayer_org_xmlvm_ios_CALayer]

    XMLVM_VAR_THIZ;
    [thiz  insertSublayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) below:(CALayer*) (((org_xmlvm_ios_CALayer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_insertSublayer___org_xmlvm_ios_CALayer_org_xmlvm_ios_CALayer]

    XMLVM_VAR_THIZ;
    [thiz  insertSublayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) above:(CALayer*) (((org_xmlvm_ios_CALayer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_replaceSublayer___org_xmlvm_ios_CALayer_org_xmlvm_ios_CALayer]

    XMLVM_VAR_THIZ;
    [thiz  replaceSublayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) with:(CALayer*) (((org_xmlvm_ios_CALayer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getSublayerTransform__]

    XMLVM_VAR_THIZ;
    CATransform3D var0 = [thiz sublayerTransform];
    
    return fromCATransform3D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setSublayerTransform___org_xmlvm_ios_CATransform3D]

    XMLVM_VAR_THIZ;
    [thiz setSublayerTransform:toCATransform3D(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getMask__]

    XMLVM_VAR_THIZ;
    CALayer* var0 = [thiz mask];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setMask___org_xmlvm_ios_CALayer]

    XMLVM_VAR_THIZ;
    [thiz setMask:(CALayer*) (((org_xmlvm_ios_CALayer*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getMasksToBounds__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz masksToBounds];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setMasksToBounds___boolean]

    XMLVM_VAR_THIZ;
    [thiz setMasksToBounds:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_convertPoint___org_xmlvm_ios_CGPoint_org_xmlvm_ios_CALayer]

    XMLVM_VAR_THIZ;
    
    CGPoint var0 = [thiz  convertPoint:toCGPoint(n1) fromLayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_convertPoint___org_xmlvm_ios_CGPoint_org_xmlvm_ios_CALayer]

    XMLVM_VAR_THIZ;
    
    CGPoint var0 = [thiz  convertPoint:toCGPoint(n1) toLayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_convertRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_CALayer]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  convertRect:toCGRect(n1) fromLayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_convertRect___org_xmlvm_ios_CGRect_org_xmlvm_ios_CALayer]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz  convertRect:toCGRect(n1) toLayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_convertTime___double_org_xmlvm_ios_CALayer]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz  convertTime:n1 fromLayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_convertTime___double_org_xmlvm_ios_CALayer]

    XMLVM_VAR_THIZ;
    
    double var0 = [thiz  convertTime:n1 toLayer:(CALayer*) (((org_xmlvm_ios_CALayer*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_hitTest___org_xmlvm_ios_CGPoint]

    XMLVM_VAR_THIZ;
    
    CALayer* var0 = [thiz  hitTest:toCGPoint(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_containsPoint___org_xmlvm_ios_CGPoint]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  containsPoint:toCGPoint(n1)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getContents__]

    XMLVM_VAR_THIZ;
    NSObject* var0 = [thiz contents];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setContents___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz setContents:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getContentsRect__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz contentsRect];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setContentsRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz setContentsRect:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getContentsGravity__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz contentsGravity];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setContentsGravity___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setContentsGravity:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getContentsScale__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz contentsScale];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setContentsScale___float]

    XMLVM_VAR_THIZ;
    [thiz setContentsScale:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getContentsCenter__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz contentsCenter];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setContentsCenter___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz setContentsCenter:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getMagnificationFilter__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz magnificationFilter];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setMagnificationFilter___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setMagnificationFilter:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getMinificationFilter__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz minificationFilter];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setMinificationFilter___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setMinificationFilter:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getMinificationFilterBias__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz minificationFilterBias];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setMinificationFilterBias___float]

    XMLVM_VAR_THIZ;
    [thiz setMinificationFilterBias:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_isOpaque__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz isOpaque];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setOpaque___boolean]

    XMLVM_VAR_THIZ;
    [thiz setOpaque:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_display__]

    XMLVM_VAR_THIZ;
    [thiz display];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setNeedsDisplay__]

    XMLVM_VAR_THIZ;
    [thiz setNeedsDisplay];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setNeedsDisplayInRect___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz  setNeedsDisplayInRect:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_needsDisplay__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz needsDisplay];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_displayIfNeeded__]

    XMLVM_VAR_THIZ;
    [thiz displayIfNeeded];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getNeedsDisplayOnBoundsChange__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz needsDisplayOnBoundsChange];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setNeedsDisplayOnBoundsChange___boolean]

    XMLVM_VAR_THIZ;
    [thiz setNeedsDisplayOnBoundsChange:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_drawInContext___org_xmlvm_ios_CGContext]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    [thiz  drawInContext:var1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_renderInContext___org_xmlvm_ios_CGContext]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGContext, var1, n1);
    [thiz  renderInContext:var1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getEdgeAntialiasingMask__]

    XMLVM_VAR_THIZ;
    int var0 = [thiz edgeAntialiasingMask];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setEdgeAntialiasingMask___int]

    XMLVM_VAR_THIZ;
    [thiz setEdgeAntialiasingMask:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getBackgroundColor__]

    XMLVM_VAR_THIZ;
    CGColorRef var0 = [thiz backgroundColor];
    XMLVM_VAR_INIT_REF(CGColor, refVar0, var0);
    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setBackgroundColor___org_xmlvm_ios_CGColor]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGColor, var1, n1);
    [thiz setBackgroundColor:var1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getCornerRadius__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz cornerRadius];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setCornerRadius___float]

    XMLVM_VAR_THIZ;
    [thiz setCornerRadius:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getBorderWidth__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz borderWidth];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setBorderWidth___float]

    XMLVM_VAR_THIZ;
    [thiz setBorderWidth:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getBorderColor__]

    XMLVM_VAR_THIZ;
    CGColorRef var0 = [thiz borderColor];
    XMLVM_VAR_INIT_REF(CGColor, refVar0, var0);
    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setBorderColor___org_xmlvm_ios_CGColor]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGColor, var1, n1);
    [thiz setBorderColor:var1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getOpacity__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz opacity];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setOpacity___float]

    XMLVM_VAR_THIZ;
    [thiz setOpacity:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getCompositingFilter__]

    XMLVM_VAR_THIZ;
    NSObject* var0 = [thiz compositingFilter];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setCompositingFilter___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz setCompositingFilter:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getFilters__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz filters];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setFilters___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setFilters:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getBackgroundFilters__]

    XMLVM_VAR_THIZ;
    NSArray* var0 = [thiz backgroundFilters];
    
    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setBackgroundFilters___java_util_List]

    XMLVM_VAR_THIZ;
    NSArray * ObjCVar1 = toNSArray(n1);
    [thiz setBackgroundFilters:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getShouldRasterize__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz shouldRasterize];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setShouldRasterize___boolean]

    XMLVM_VAR_THIZ;
    [thiz setShouldRasterize:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getRasterizationScale__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz rasterizationScale];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setRasterizationScale___float]

    XMLVM_VAR_THIZ;
    [thiz setRasterizationScale:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getShadowColor__]

    XMLVM_VAR_THIZ;
    CGColorRef var0 = [thiz shadowColor];
    XMLVM_VAR_INIT_REF(CGColor, refVar0, var0);
    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setShadowColor___org_xmlvm_ios_CGColor]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGColor, var1, n1);
    [thiz setShadowColor:var1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getShadowOpacity__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz shadowOpacity];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setShadowOpacity___float]

    XMLVM_VAR_THIZ;
    [thiz setShadowOpacity:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getShadowOffset__]

    XMLVM_VAR_THIZ;
    CGSize var0 = [thiz shadowOffset];
    
    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setShadowOffset___org_xmlvm_ios_CGSize]

    XMLVM_VAR_THIZ;
    [thiz setShadowOffset:toCGSize(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getShadowRadius__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz shadowRadius];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setShadowRadius___float]

    XMLVM_VAR_THIZ;
    [thiz setShadowRadius:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getShadowPath__]

    XMLVM_VAR_THIZ;
    CGPathRef var0 = [thiz shadowPath];
    XMLVM_VAR_INIT_REF(CGPath, refVar0, var0);
    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setShadowPath___org_xmlvm_ios_CGPath]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    [thiz setShadowPath:var1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_preferredFrameSize__]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz preferredFrameSize];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setNeedsLayout__]

    XMLVM_VAR_THIZ;
    [thiz setNeedsLayout];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_needsLayout__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz needsLayout];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_layoutIfNeeded__]

    XMLVM_VAR_THIZ;
    [thiz layoutIfNeeded];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_layoutSublayers__]

    XMLVM_VAR_THIZ;
    [thiz layoutSublayers];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_defaultActionForKey___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_actionForKey___java_lang_String]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getActions__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setActions___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_addAnimation___org_xmlvm_ios_CAAnimation_java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar2 = toNSString(n2);
    [thiz  addAnimation:(CAAnimation*) (((org_xmlvm_ios_CAAnimation*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj) forKey:ObjCVar2];
    [ObjCVar2 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_removeAllAnimations__]

    XMLVM_VAR_THIZ;
    [thiz removeAllAnimations];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_removeAnimationForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz  removeAnimationForKey:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_animationKeys__]

    XMLVM_VAR_THIZ;
    
    NSArray* var0 = [thiz animationKeys];

    return fromNSArray(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_animationForKey___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    
    CAAnimation* var0 = [thiz  animationForKey:ObjCVar1];
    [ObjCVar1 release];


    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getName__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz name];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setName___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setName:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getDelegate__]

    XMLVM_VAR_THIZ;
    NSObject* var0 = [thiz delegate];
    
    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setDelegate___java_lang_Object]

    XMLVM_VAR_THIZ;
    [thiz setDelegate:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getStyle__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setStyle___java_util_Map]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_scrollPoint___org_xmlvm_ios_CGPoint]

    XMLVM_VAR_THIZ;
    [thiz  scrollPoint:toCGPoint(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_scrollRectToVisible___org_xmlvm_ios_CGRect]

    XMLVM_VAR_THIZ;
    [thiz  scrollRectToVisible:toCGRect(n1)];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getVisibleRect__]

    XMLVM_VAR_THIZ;
    CGRect var0 = [thiz visibleRect];
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getBeginTime__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz beginTime];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setBeginTime___double]

    XMLVM_VAR_THIZ;
    [thiz setBeginTime:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz duration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setDuration___double]

    XMLVM_VAR_THIZ;
    [thiz setDuration:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getSpeed__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz speed];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setSpeed___float]

    XMLVM_VAR_THIZ;
    [thiz setSpeed:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getTimeOffset__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz timeOffset];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setTimeOffset___double]

    XMLVM_VAR_THIZ;
    [thiz setTimeOffset:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getRepeatCount__]

    XMLVM_VAR_THIZ;
    float var0 = [thiz repeatCount];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setRepeatCount___float]

    XMLVM_VAR_THIZ;
    [thiz setRepeatCount:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getRepeatDuration__]

    XMLVM_VAR_THIZ;
    double var0 = [thiz repeatDuration];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setRepeatDuration___double]

    XMLVM_VAR_THIZ;
    [thiz setRepeatDuration:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getAutoreverses__]

    XMLVM_VAR_THIZ;
    BOOL var0 = [thiz autoreverses];
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setAutoreverses___boolean]

    XMLVM_VAR_THIZ;
    [thiz setAutoreverses:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_getFillMode__]

    XMLVM_VAR_THIZ;
    NSString* var0 = [thiz fillMode];
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CALayer_setFillMode___java_lang_String]

    XMLVM_VAR_THIZ;
    NSString * ObjCVar1 = toNSString(n1);
    [thiz setFillMode:ObjCVar1];
    [ObjCVar1 release];


    
//XMLVM_END_WRAPPER
