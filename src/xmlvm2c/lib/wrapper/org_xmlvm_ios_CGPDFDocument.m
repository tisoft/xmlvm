
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CGPDFDocument_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGPDFDocument]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_createWithProvider___org_xmlvm_ios_CGDataProvider]
XMLVM_VAR_IOS_REF(CGDataProvider, var1, n1);
    
    CGPDFDocumentRef var0 = CGPDFDocumentCreateWithProvider(var1);
        XMLVM_VAR_INIT_REF(CGPDFDocument, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_createWithURL___org_xmlvm_ios_CFURL]
XMLVM_VAR_IOS_REF(CFURL, var1, n1);
    
    CGPDFDocumentRef var0 = CGPDFDocumentCreateWithURL(var1);
        XMLVM_VAR_INIT_REF(CGPDFDocument, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_retain__]

    XMLVM_VAR_CFTHIZ;
    
    CGPDFDocumentRef var0 = CGPDFDocumentRetain(thiz);
        XMLVM_VAR_INIT_REF(CGPDFDocument, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_release__]

    XMLVM_VAR_CFTHIZ;
    CGPDFDocumentRelease(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_getVersion___int_1ARRAY_int_1ARRAY]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_INT_ARRAY(a1, n1); 
    XMLVM_VAR_INT_ARRAY(a2, n2); 
    CGPDFDocumentGetVersion(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_isEncrypted__]

    XMLVM_VAR_CFTHIZ;
    
    BOOL var0 = CGPDFDocumentIsEncrypted(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_unlockWithPassword___byte_1ARRAY]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    BOOL var0 = CGPDFDocumentUnlockWithPassword(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_isUnlocked__]

    XMLVM_VAR_CFTHIZ;
    
    BOOL var0 = CGPDFDocumentIsUnlocked(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_allowsPrinting__]

    XMLVM_VAR_CFTHIZ;
    
    BOOL var0 = CGPDFDocumentAllowsPrinting(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_allowsCopying__]

    XMLVM_VAR_CFTHIZ;
    
    BOOL var0 = CGPDFDocumentAllowsCopying(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_getNumberOfPages__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGPDFDocumentGetNumberOfPages(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_getPage___int]

    XMLVM_VAR_CFTHIZ;
    
    CGPDFPageRef var0 = CGPDFDocumentGetPage(thiz,n1);
        XMLVM_VAR_INIT_REF(CGPDFPage, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_getCatalog__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_getInfo__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_getID__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGPDFDocument_getTypeID__]

    long var0 = CGPDFDocumentGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER
