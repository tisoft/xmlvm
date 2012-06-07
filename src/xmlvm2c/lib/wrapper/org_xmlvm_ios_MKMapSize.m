
//XMLVM_BEGIN_IMPLEMENTATION
MKMapSize toMKMapSize(void *obj)
{
    org_xmlvm_ios_MKMapSize* objCObj = obj;
    MKMapSize toRet;
    toRet.width = objCObj->fields.org_xmlvm_ios_MKMapSize.width_;
    toRet.height = objCObj->fields.org_xmlvm_ios_MKMapSize.height_;
    return toRet;
}
JAVA_OBJECT fromMKMapSize(MKMapSize obj)
{
    org_xmlvm_ios_MKMapSize* jObj = __NEW_org_xmlvm_ios_MKMapSize();
    org_xmlvm_ios_MKMapSize___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_MKMapSize.width_ = obj.width;
    jObj->fields.org_xmlvm_ios_MKMapSize.height_ = obj.height;
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MKMapSize]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapSize___INIT____double_double]

    MKMapSize var0 = MKMapSizeMake(n1,n2);
    org_xmlvm_ios_MKMapSize* jObj = me;
    jObj->fields.org_xmlvm_ios_MKMapSize.width_ = var0.width;
    jObj->fields.org_xmlvm_ios_MKMapSize.height_ = var0.height;
null//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapSize___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKMapSize_equalToSize___org_xmlvm_ios_MKMapSize]

    BOOL var0 = MKMapSizeEqualToSize(toMKMapSize(me),toMKMapSize(n1));
    
    return var0;
//XMLVM_END_WRAPPER
