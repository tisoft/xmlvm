
//XMLVM_BEGIN_IMPLEMENTATION
MKMapPoint toMKMapPoint(void *obj)
{
    org_xmlvm_ios_MKMapPoint* objCObj = obj;
    MKMapPoint toRet;
    toRet.x = objCObj->fields.org_xmlvm_ios_MKMapPoint.x_;
    toRet.y = objCObj->fields.org_xmlvm_ios_MKMapPoint.y_;
    return toRet;
}
JAVA_OBJECT fromMKMapPoint(MKMapPoint obj)
{
    org_xmlvm_ios_MKMapPoint* jObj = __NEW_org_xmlvm_ios_MKMapPoint();
    org_xmlvm_ios_MKMapPoint___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_MKMapPoint.x_ = obj.x;
    jObj->fields.org_xmlvm_ios_MKMapPoint.y_ = obj.y;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MKMapPoint]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapPoint___INIT____double_double]

    MKMapPoint var0 = MKMapPointMake(n1,n2);
    org_xmlvm_ios_MKMapPoint* jObj = me;
    jObj->fields.org_xmlvm_ios_MKMapPoint.x_ = var0.x;
    jObj->fields.org_xmlvm_ios_MKMapPoint.y_ = var0.y;
null//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapPoint___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapPoint_forCoordinate___org_xmlvm_ios_CLLocationCoordinate2D]

    MKMapPoint var0 = MKMapPointForCoordinate(toCLLocationCoordinate2D(n1));
    
    return fromMKMapPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapPoint_equalToPoint___org_xmlvm_ios_MKMapPoint]

    BOOL var0 = MKMapPointEqualToPoint(toMKMapPoint(me),toMKMapPoint(n1));
    
    return var0;
//XMLVM_END_WRAPPER
