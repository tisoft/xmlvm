
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CGPDFPage_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGPDFPage]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFPage___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFPage_retain__]

    XMLVM_VAR_CFTHIZ;
    
    CGPDFPageRef var0 = CGPDFPageRetain(thiz);
        XMLVM_VAR_INIT_REF(CGPDFPage, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFPage_release__]

    XMLVM_VAR_CFTHIZ;
    CGPDFPageRelease(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFPage_getDocument__]

    XMLVM_VAR_CFTHIZ;
    
    CGPDFDocumentRef var0 = CGPDFPageGetDocument(thiz);
        XMLVM_VAR_INIT_REF(CGPDFDocument, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFPage_getPageNumber__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGPDFPageGetPageNumber(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFPage_getBoxRect___int]

    XMLVM_VAR_CFTHIZ;
    
    CGRect var0 = CGPDFPageGetBoxRect(thiz,n1);
    
    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFPage_getRotationAngle__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGPDFPageGetRotationAngle(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFPage_getDrawingTransform___int_org_xmlvm_ios_CGRect_int_boolean]

    XMLVM_VAR_CFTHIZ;
    
    CGAffineTransform var0 = CGPDFPageGetDrawingTransform(thiz,n1,toCGRect(n2),n3,n4);
    
    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFPage_getDictionary__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFPage_getTypeID__]

    long var0 = CGPDFPageGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER
