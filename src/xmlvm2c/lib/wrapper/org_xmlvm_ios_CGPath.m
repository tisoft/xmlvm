
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CGPath_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGPath]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_getTypeID__]

    long var0 = CGPathGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_createMutable__]

    CGPathRef var0 = CGPathCreateMutable();
        XMLVM_VAR_INIT_REF(CGPath, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_createCopy__]

    XMLVM_VAR_CFTHIZ;
    
    CGPathRef var0 = CGPathCreateCopy(thiz);
        XMLVM_VAR_INIT_REF(CGPath, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_createMutableCopy__]

    XMLVM_VAR_CFTHIZ;
    
    CGPathRef var0 = CGPathCreateMutableCopy(thiz);
        XMLVM_VAR_INIT_REF(CGPath, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_retain__]

    XMLVM_VAR_CFTHIZ;
    
    CGPathRef var0 = CGPathRetain(thiz);
        XMLVM_VAR_INIT_REF(CGPath, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_release__]

    XMLVM_VAR_CFTHIZ;
    CGPathRelease(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_equalToPath___org_xmlvm_ios_CGPath]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    
    BOOL var0 = CGPathEqualToPath(thiz,var1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_moveToPoint___org_xmlvm_ios_CGPath_org_xmlvm_ios_Reference_float_float]
XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGAffineTransform var2= toCGAffineTransform(jObject2);
    CGPathMoveToPoint(var1,&var2,n3,n4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCGAffineTransform(var2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_addLineToPoint___org_xmlvm_ios_CGPath_org_xmlvm_ios_Reference_float_float]
XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGAffineTransform var2= toCGAffineTransform(jObject2);
    CGPathAddLineToPoint(var1,&var2,n3,n4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCGAffineTransform(var2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_addQuadCurveToPoint___org_xmlvm_ios_CGPath_org_xmlvm_ios_Reference_float_float_float_float]
XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGAffineTransform var2= toCGAffineTransform(jObject2);
    CGPathAddQuadCurveToPoint(var1,&var2,n3,n4,n5,n6);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCGAffineTransform(var2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_addCurveToPoint___org_xmlvm_ios_CGPath_org_xmlvm_ios_Reference_float_float_float_float_float_float]
XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGAffineTransform var2= toCGAffineTransform(jObject2);
    CGPathAddCurveToPoint(var1,&var2,n3,n4,n5,n6,n7,n8);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCGAffineTransform(var2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_closeSubpath___org_xmlvm_ios_CGPath]
XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    CGPathCloseSubpath(var1);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_addRect___org_xmlvm_ios_CGPath_org_xmlvm_ios_Reference_org_xmlvm_ios_CGRect]
XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGAffineTransform var2= toCGAffineTransform(jObject2);
    CGPathAddRect(var1,&var2,toCGRect(n3));
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCGAffineTransform(var2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_addRects___org_xmlvm_ios_CGPath_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference_int]
XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGAffineTransform var2= toCGAffineTransform(jObject2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CGRect var3= toCGRect(jObject3);
    CGPathAddRects(var1,&var2,&var3,n4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, fromCGRect(var3));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_addLines___org_xmlvm_ios_CGPath_org_xmlvm_ios_Reference_org_xmlvm_ios_Reference_int]
XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGAffineTransform var2= toCGAffineTransform(jObject2);
    JAVA_OBJECT jObject3 = org_xmlvm_ios_Reference_get__(n3);
    CGPoint var3= toCGPoint(jObject3);
    CGPathAddLines(var1,&var2,&var3,n4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n3, fromCGPoint(var3));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_addEllipseInRect___org_xmlvm_ios_CGPath_org_xmlvm_ios_Reference_org_xmlvm_ios_CGRect]
XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGAffineTransform var2= toCGAffineTransform(jObject2);
    CGPathAddEllipseInRect(var1,&var2,toCGRect(n3));
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCGAffineTransform(var2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_addArc___org_xmlvm_ios_CGPath_org_xmlvm_ios_Reference_float_float_float_float_float_boolean]
XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGAffineTransform var2= toCGAffineTransform(jObject2);
    CGPathAddArc(var1,&var2,n3,n4,n5,n6,n7,n8);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCGAffineTransform(var2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_addArcToPoint___org_xmlvm_ios_CGPath_org_xmlvm_ios_Reference_float_float_float_float_float]
XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGAffineTransform var2= toCGAffineTransform(jObject2);
    CGPathAddArcToPoint(var1,&var2,n3,n4,n5,n6,n7);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCGAffineTransform(var2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_addPath___org_xmlvm_ios_CGPath_org_xmlvm_ios_Reference_org_xmlvm_ios_CGPath]
XMLVM_VAR_IOS_REF(CGPath, var1, n1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    CGAffineTransform var2= toCGAffineTransform(jObject2);
    XMLVM_VAR_IOS_REF(CGPath, var3, n3);
    CGPathAddPath(var1,&var2,var3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromCGAffineTransform(var2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_isEmpty__]

    XMLVM_VAR_CFTHIZ;
    
    BOOL var0 = CGPathIsEmpty(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_isRect___org_xmlvm_ios_Reference]

    XMLVM_VAR_CFTHIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CGRect var1= toCGRect(jObject1);
    
    BOOL var0 = CGPathIsRect(thiz,&var1);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCGRect(var1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_getCurrentPoint__]

    XMLVM_VAR_CFTHIZ;
    
    CGPoint var0 = CGPathGetCurrentPoint(thiz);
    
    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_getBoundingBox__]

    XMLVM_VAR_CFTHIZ;
    
    CGRect var0 = CGPathGetBoundingBox(thiz);
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_getPathBoundingBox__]

    XMLVM_VAR_CFTHIZ;
    
    CGRect var0 = CGPathGetPathBoundingBox(thiz);
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_containsPoint___org_xmlvm_ios_Reference_org_xmlvm_ios_CGPoint_boolean]

    XMLVM_VAR_CFTHIZ;
    JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    CGAffineTransform var1= toCGAffineTransform(jObject1);
    
    BOOL var0 = CGPathContainsPoint(thiz,&var1,toCGPoint(n2),n3);
    org_xmlvm_ios_Reference_set___java_lang_Object(n1, fromCGAffineTransform(var1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPath_apply___byte_1ARRAY_java_lang_Object]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    CGPathApply(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_,((org_xmlvm_ios_NSObject*) n2)->fields.org_xmlvm_ios_NSObject.wrappedObj);
    
    
//XMLVM_END_WRAPPER
