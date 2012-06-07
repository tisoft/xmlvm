
//XMLVM_BEGIN_IMPLEMENTATION
MKCoordinateSpan toMKCoordinateSpan(void *obj)
{
    org_xmlvm_ios_MKCoordinateSpan* objCObj = obj;
    MKCoordinateSpan toRet;
    toRet.latitudeDelta = objCObj->fields.org_xmlvm_ios_MKCoordinateSpan.latitudeDelta_;
    toRet.longitudeDelta = objCObj->fields.org_xmlvm_ios_MKCoordinateSpan.longitudeDelta_;
    return toRet;
}
JAVA_OBJECT fromMKCoordinateSpan(MKCoordinateSpan obj)
{
    org_xmlvm_ios_MKCoordinateSpan* jObj = __NEW_org_xmlvm_ios_MKCoordinateSpan();
    org_xmlvm_ios_MKCoordinateSpan___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_MKCoordinateSpan.latitudeDelta_ = obj.latitudeDelta;
    jObj->fields.org_xmlvm_ios_MKCoordinateSpan.longitudeDelta_ = obj.longitudeDelta;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MKCoordinateSpan]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCoordinateSpan___INIT____double_double]

    MKCoordinateSpan var0 = MKCoordinateSpanMake(n1,n2);
    org_xmlvm_ios_MKCoordinateSpan* jObj = me;
    jObj->fields.org_xmlvm_ios_MKCoordinateSpan.latitudeDelta_ = var0.latitudeDelta;
    jObj->fields.org_xmlvm_ios_MKCoordinateSpan.longitudeDelta_ = var0.longitudeDelta;
null//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCoordinateSpan___INIT___]
//XMLVM_END_WRAPPER
