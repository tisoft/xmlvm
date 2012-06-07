
//XMLVM_BEGIN_IMPLEMENTATION
void org_xmlvm_ios_CGColorSpace_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,CFTypeRef wrappedObj){
    org_xmlvm_ios_CFType_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_CGColorSpace]
__DELETE_org_xmlvm_ios_CFType(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace___INIT___]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_createDeviceGray__]

    CGColorSpaceRef var0 = CGColorSpaceCreateDeviceGray();
        XMLVM_VAR_INIT_REF(CGColorSpace, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_createDeviceRGB__]

    CGColorSpaceRef var0 = CGColorSpaceCreateDeviceRGB();
        XMLVM_VAR_INIT_REF(CGColorSpace, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_createDeviceCMYK__]

    CGColorSpaceRef var0 = CGColorSpaceCreateDeviceCMYK();
        XMLVM_VAR_INIT_REF(CGColorSpace, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_createCalibratedGray___float_1ARRAY_float_1ARRAY_float]
XMLVM_VAR_FLOAT_ARRAY(a1, n1); 
    XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    
    CGColorSpaceRef var0 = CGColorSpaceCreateCalibratedGray(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,n3);
        XMLVM_VAR_INIT_REF(CGColorSpace, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_createCalibratedRGB___float_1ARRAY_float_1ARRAY_float_1ARRAY_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a1, n1); 
    XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    XMLVM_VAR_FLOAT_ARRAY(a4, n4); 
    
    CGColorSpaceRef var0 = CGColorSpaceCreateCalibratedRGB(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,a3->fields.org_xmlvm_runtime_XMLVMArray.array_,a4->fields.org_xmlvm_runtime_XMLVMArray.array_);
        XMLVM_VAR_INIT_REF(CGColorSpace, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_createLab___float_1ARRAY_float_1ARRAY_float_1ARRAY]
XMLVM_VAR_FLOAT_ARRAY(a1, n1); 
    XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    XMLVM_VAR_FLOAT_ARRAY(a3, n3); 
    
    CGColorSpaceRef var0 = CGColorSpaceCreateLab(a1->fields.org_xmlvm_runtime_XMLVMArray.array_,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,a3->fields.org_xmlvm_runtime_XMLVMArray.array_);
        XMLVM_VAR_INIT_REF(CGColorSpace, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_createWithICCProfile___org_xmlvm_ios_CFData]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_createICCBased___int_float_1ARRAY_org_xmlvm_ios_CGDataProvider_org_xmlvm_ios_CGColorSpace]
XMLVM_VAR_FLOAT_ARRAY(a2, n2); 
    XMLVM_VAR_IOS_REF(CGDataProvider, var3, n3);
    XMLVM_VAR_IOS_REF(CGColorSpace, var4, n4);
    
    CGColorSpaceRef var0 = CGColorSpaceCreateICCBased(n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_,var3,var4);
        XMLVM_VAR_INIT_REF(CGColorSpace, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_createIndexed___int_byte_1ARRAY]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    CGColorSpaceRef var0 = CGColorSpaceCreateIndexed(thiz,n1,a2->fields.org_xmlvm_runtime_XMLVMArray.array_);
        XMLVM_VAR_INIT_REF(CGColorSpace, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_createPattern__]

    XMLVM_VAR_CFTHIZ;
    
    CGColorSpaceRef var0 = CGColorSpaceCreatePattern(thiz);
        XMLVM_VAR_INIT_REF(CGColorSpace, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_createWithName___java_lang_String]
NSString * ObjCVar1 = toNSString(n1);
    
    CGColorSpaceRef var0 = CGColorSpaceCreateWithName(ObjCVar1);
    
    [ObjCVar1 release];
    XMLVM_VAR_INIT_REF(CGColorSpace, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_retain__]

    XMLVM_VAR_CFTHIZ;
    
    CGColorSpaceRef var0 = CGColorSpaceRetain(thiz);
        XMLVM_VAR_INIT_REF(CGColorSpace, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_release__]

    XMLVM_VAR_CFTHIZ;
    CGColorSpaceRelease(thiz);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_getTypeID__]

    long var0 = CGColorSpaceGetTypeID();
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_getNumberOfComponents__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGColorSpaceGetNumberOfComponents(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_getModel__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGColorSpaceGetModel(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_getBaseColorSpace__]

    XMLVM_VAR_CFTHIZ;
    
    CGColorSpaceRef var0 = CGColorSpaceGetBaseColorSpace(thiz);
        XMLVM_VAR_INIT_REF(CGColorSpace, refVar0, var0);

    return refVar0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_getColorTableCount__]

    XMLVM_VAR_CFTHIZ;
    
    int var0 = CGColorSpaceGetColorTableCount(thiz);
    
    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_getColorTable___byte_1ARRAY]

    XMLVM_VAR_CFTHIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    CGColorSpaceGetColorTable(thiz,a1->fields.org_xmlvm_runtime_XMLVMArray.array_);
    
    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_CGColorSpace_copyICCProfile__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER
