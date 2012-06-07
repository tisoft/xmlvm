
//XMLVM_BEGIN_IMPLEMENTATION
MKCoordinateRegion toMKCoordinateRegion(void *obj)
{
    org_xmlvm_ios_MKCoordinateRegion* objCObj = obj;
    MKCoordinateRegion toRet;
    toRet.center = toCLLocationCoordinate2D(objCObj->fields.org_xmlvm_ios_MKCoordinateRegion.center_);
    toRet.span = toMKCoordinateSpan(objCObj->fields.org_xmlvm_ios_MKCoordinateRegion.span_);
    return toRet;
}
JAVA_OBJECT fromMKCoordinateRegion(MKCoordinateRegion obj)
{
    org_xmlvm_ios_MKCoordinateRegion* jObj = __NEW_org_xmlvm_ios_MKCoordinateRegion();
    org_xmlvm_ios_MKCoordinateRegion___INIT___(jObj);
    jObj->fields.org_xmlvm_ios_MKCoordinateRegion.center_ = fromCLLocationCoordinate2D(obj.center);
    jObj->fields.org_xmlvm_ios_MKCoordinateRegion.span_ = fromMKCoordinateSpan(obj.span);
    return jObj;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__NEW_org_xmlvm_ios_MKCoordinateRegion]
    me->fields.org_xmlvm_ios_MKCoordinateRegion.center_ = __NEW_org_xmlvm_ios_CLLocationCoordinate2D();
    me->fields.org_xmlvm_ios_MKCoordinateRegion.span_ = __NEW_org_xmlvm_ios_MKCoordinateSpan();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCoordinateRegion___INIT____org_xmlvm_ios_CLLocationCoordinate2D_org_xmlvm_ios_MKCoordinateSpan]

    MKCoordinateRegion var0 = MKCoordinateRegionMake(toCLLocationCoordinate2D(n1),toMKCoordinateSpan(n2));
    org_xmlvm_ios_MKCoordinateRegion* jObj = me;
    jObj->fields.org_xmlvm_ios_MKCoordinateRegion.center_ = fromCLLocationCoordinate2D(var0.center);
    jObj->fields.org_xmlvm_ios_MKCoordinateRegion.span_ = fromMKCoordinateSpan(var0.span);
null//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCoordinateRegion___INIT___]
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCoordinateRegion_makeWithDistance___org_xmlvm_ios_CLLocationCoordinate2D_double_double]

    MKCoordinateRegion var0 = MKCoordinateRegionMakeWithDistance(toCLLocationCoordinate2D(n1),n2,n3);
    
    return fromMKCoordinateRegion(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MKCoordinateRegion_forMapRect___org_xmlvm_ios_MKMapRect]

    MKCoordinateRegion var0 = MKCoordinateRegionForMapRect(toMKMapRect(n1));
    
    return fromMKCoordinateRegion(var0);
//XMLVM_END_WRAPPER
