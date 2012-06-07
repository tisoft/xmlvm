
//XMLVM_BEGIN_IMPLEMENTATION
MKMapRect toMKMapRect(void *obj)
{
    org_xmlvm_ios_MKMapRect* objCObj = obj;
    MKMapRect toRet;
    toRet.origin = toMKMapPoint(objCObj->fields.org_xmlvm_ios_MKMapRect.origin_);
    toRet.size = toMKMapSize(objCObj->fields.org_xmlvm_ios_MKMapRect.size_);
    return toRet;
}
JAVA_OBJECT fromMKMapRect(MKMapRect obj)
{
    org_xmlvm_ios_MKMapRect* jObj = __NEW_org_xmlvm_ios_MKMapRect();
    org_xmlvm_ios_MKMapRect___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_MKMapRect.origin_ = fromMKMapPoint(obj.origin);
    jObj->fields.org_xmlvm_ios_MKMapRect.size_ = fromMKMapSize(obj.size);
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MKMapRect]
    me->fields.org_xmlvm_ios_MKMapRect.origin_ = __NEW_org_xmlvm_ios_MKMapPoint();
    me->fields.org_xmlvm_ios_MKMapRect.size_ = __NEW_org_xmlvm_ios_MKMapSize();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect___INIT____double_double_double_double]

    MKMapRect var0 = MKMapRectMake(n1,n2,n3,n4);
    org_xmlvm_ios_MKMapRect* jObj = me;
    jObj->fields.org_xmlvm_ios_MKMapRect.origin_ = fromMKMapPoint(var0.origin);
    jObj->fields.org_xmlvm_ios_MKMapRect.size_ = fromMKMapSize(var0.size);
null//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_getMinX__]

    double var0 = MKMapRectGetMinX(toMKMapRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_getMinY__]

    double var0 = MKMapRectGetMinY(toMKMapRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_getMidX__]

    double var0 = MKMapRectGetMidX(toMKMapRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_getMidY__]

    double var0 = MKMapRectGetMidY(toMKMapRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_getMaxX__]

    double var0 = MKMapRectGetMaxX(toMKMapRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_getMaxY__]

    double var0 = MKMapRectGetMaxY(toMKMapRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_getWidth__]

    double var0 = MKMapRectGetWidth(toMKMapRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_getHeight__]

    double var0 = MKMapRectGetHeight(toMKMapRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_equalToRect___org_xmlvm_ios_MKMapRect]

    BOOL var0 = MKMapRectEqualToRect(toMKMapRect(me),toMKMapRect(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_isNull__]

    BOOL var0 = MKMapRectIsNull(toMKMapRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_isEmpty__]

    BOOL var0 = MKMapRectIsEmpty(toMKMapRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_union___org_xmlvm_ios_MKMapRect]

    MKMapRect var0 = MKMapRectUnion(toMKMapRect(me),toMKMapRect(n1));
    
    return fromMKMapRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_intersection___org_xmlvm_ios_MKMapRect]

    MKMapRect var0 = MKMapRectIntersection(toMKMapRect(me),toMKMapRect(n1));
    
    return fromMKMapRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_inset___double_double]

    MKMapRect var0 = MKMapRectInset(toMKMapRect(me),n1,n2);
    
    return fromMKMapRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_offset___double_double]

    MKMapRect var0 = MKMapRectOffset(toMKMapRect(me),n1,n2);
    
    return fromMKMapRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_divide___org_xmlvm_ios_Reference_org_xmlvm_ios_Reference_double_int]
JAVA_OBJECT jObject1 = org_xmlvm_ios_Reference_get__(n1);
    MKMapRect var1= toMKMapRect(jObject1);
    JAVA_OBJECT jObject2 = org_xmlvm_ios_Reference_get__(n2);
    MKMapRect var2= toMKMapRect(jObject2);
    MKMapRectDivide(toMKMapRect(me),&var1,&var2,n3,n4);
    org_xmlvm_ios_Reference_set___java_lang_Object(n2, fromMKMapRect(var2));
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_containsPoint___org_xmlvm_ios_MKMapPoint]

    BOOL var0 = MKMapRectContainsPoint(toMKMapRect(me),toMKMapPoint(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_containsRect___org_xmlvm_ios_MKMapRect]

    BOOL var0 = MKMapRectContainsRect(toMKMapRect(me),toMKMapRect(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_intersectsRect___org_xmlvm_ios_MKMapRect]

    BOOL var0 = MKMapRectIntersectsRect(toMKMapRect(me),toMKMapRect(n1));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_spans180thMeridian__]

    BOOL var0 = MKMapRectSpans180thMeridian(toMKMapRect(me));
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapRect_remainder__]

    MKMapRect var0 = MKMapRectRemainder(toMKMapRect(me));
    
    return fromMKMapRect(var0);
//XMLVM_END_WRAPPER
