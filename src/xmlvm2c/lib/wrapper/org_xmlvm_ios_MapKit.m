
//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MapKit_MKStringFromMapSize___org_xmlvm_ios_MKMapSize]

    NSString* var0 = MKStringFromMapSize(toMKMapSize(n1));
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MapKit_MKMetersPerMapPointAtLatitude___double]

    double var0 = MKMetersPerMapPointAtLatitude(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MapKit_MKRoadWidthAtZoomScale___float]

    float var0 = MKRoadWidthAtZoomScale(n1);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MapKit_MKStringFromMapRect___org_xmlvm_ios_MKMapRect]

    NSString* var0 = MKStringFromMapRect(toMKMapRect(n1));
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MapKit_MKCoordinateForMapPoint___org_xmlvm_ios_MKMapPoint]

    CLLocationCoordinate2D var0 = MKCoordinateForMapPoint(toMKMapPoint(n1));
    
    return fromCLLocationCoordinate2D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MapKit_MKStringFromMapPoint___org_xmlvm_ios_MKMapPoint]

    NSString* var0 = MKStringFromMapPoint(toMKMapPoint(n1));
    
    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_MapKit_MKMetersBetweenMapPoints___org_xmlvm_ios_MKMapPoint_org_xmlvm_ios_MKMapPoint]

    double var0 = MKMetersBetweenMapPoints(toMKMapPoint(n1),toMKMapPoint(n2));
    
    return var0;
//XMLVM_END_WRAPPER
