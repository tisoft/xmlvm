
//XMLVM_BEGIN_IMPLEMENTATION
CLLocationCoordinate2D toCLLocationCoordinate2D(void *obj)
{
    org_xmlvm_ios_CLLocationCoordinate2D* objCObj = obj;
    CLLocationCoordinate2D toRet;
    toRet.latitude = objCObj->fields.org_xmlvm_ios_CLLocationCoordinate2D.latitude_;
    toRet.longitude = objCObj->fields.org_xmlvm_ios_CLLocationCoordinate2D.longitude_;
    return toRet;
}
JAVA_OBJECT fromCLLocationCoordinate2D(CLLocationCoordinate2D obj)
{
    org_xmlvm_ios_CLLocationCoordinate2D* jObj = __NEW_org_xmlvm_ios_CLLocationCoordinate2D();
    org_xmlvm_ios_CLLocationCoordinate2D___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_CLLocationCoordinate2D.latitude_ = obj.latitude;
    jObj->fields.org_xmlvm_ios_CLLocationCoordinate2D.longitude_ = obj.longitude;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_CLLocationCoordinate2D]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationCoordinate2D___INIT____double_double]

    CLLocationCoordinate2D var0 = CLLocationCoordinate2DMake(n1,n2);
    org_xmlvm_ios_CLLocationCoordinate2D* jObj = me;
    jObj->fields.org_xmlvm_ios_CLLocationCoordinate2D.latitude_ = var0.latitude;
    jObj->fields.org_xmlvm_ios_CLLocationCoordinate2D.longitude_ = var0.longitude;
null//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationCoordinate2D___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CLLocationCoordinate2D_isValid__]

    BOOL var0 = CLLocationCoordinate2DIsValid(toCLLocationCoordinate2D(me));
    
    return var0;
//XMLVM_END_WRAPPER
