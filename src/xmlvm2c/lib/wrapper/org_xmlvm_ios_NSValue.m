
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSValue (NSValueWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSValue (NSValueWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSValue.classInitialized)
        __INIT_org_xmlvm_ios_NSValue();
}
@end

void org_xmlvm_ios_NSValue_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSValue class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSValue();
        org_xmlvm_ios_NSValue_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSValue]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSValue]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue___INIT____byte_1ARRAY_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    NSValue* var0 = [[NSValue alloc] initWithBytes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ objCType:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];
    org_xmlvm_ios_NSValue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue___INIT___]
    NSValue* var0 = [[NSValue alloc ] init];
    org_xmlvm_ios_NSValue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue___INIT___]

    NSValue* var0 = [[NSValue alloc]init];

    org_xmlvm_ios_NSValue_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_valueWithCMTime___org_xmlvm_ios_CMTime]

    NSValue* var0 =  [NSValue  valueWithCMTime:toCMTime(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_CMTimeValue__]

    XMLVM_VAR_THIZ;
    
    CMTime var0 = [thiz CMTimeValue];

    return fromCMTime(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_valueWithCMTimeRange___org_xmlvm_ios_CMTimeRange]

    NSValue* var0 =  [NSValue  valueWithCMTimeRange:toCMTimeRange(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_CMTimeRangeValue__]

    XMLVM_VAR_THIZ;
    
    CMTimeRange var0 = [thiz CMTimeRangeValue];

    return fromCMTimeRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_valueWithCMTimeMapping___org_xmlvm_ios_CMTimeMapping]

    NSValue* var0 =  [NSValue  valueWithCMTimeMapping:toCMTimeMapping(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_CMTimeMappingValue__]

    XMLVM_VAR_THIZ;
    
    CMTimeMapping var0 = [thiz CMTimeMappingValue];

    return fromCMTimeMapping(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_valueWithRange___org_xmlvm_ios_NSRange]

    NSValue* var0 =  [NSValue  valueWithRange:toNSRange(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_rangeValue__]

    XMLVM_VAR_THIZ;
    
    NSRange var0 = [thiz rangeValue];

    return fromNSRange(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_getValue___byte_1ARRAY]

    XMLVM_VAR_THIZ;
    XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    [thiz  getValue:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_objCType__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_valueWithBytes___byte_1ARRAY_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    NSValue* var0 =  [NSValue  valueWithBytes:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ objCType:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_value___byte_1ARRAY_byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    XMLVM_VAR_BYTE_ARRAY(a2, n2); 
    
    NSValue* var0 =  [NSValue  value:a1->fields.org_xmlvm_runtime_XMLVMArray.array_ withObjCType:a2->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_valueWithNonretainedObject___java_lang_Object]

    NSValue* var0 =  [NSValue  valueWithNonretainedObject:((org_xmlvm_ios_NSObject*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_nonretainedObjectValue__]

    XMLVM_VAR_THIZ;
    
    NSObject* var0 = [thiz nonretainedObjectValue];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_valueWithPointer___byte_1ARRAY]
XMLVM_VAR_BYTE_ARRAY(a1, n1); 
    
    NSValue* var0 =  [NSValue  valueWithPointer:a1->fields.org_xmlvm_runtime_XMLVMArray.array_];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_pointerValue__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_isEqualToValue___org_xmlvm_ios_NSValue]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz  isEqualToValue:(NSValue*) (((org_xmlvm_ios_NSValue*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_valueWithCATransform3D___org_xmlvm_ios_CATransform3D]

    NSValue* var0 =  [NSValue  valueWithCATransform3D:toCATransform3D(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_CATransform3DValue__]

    XMLVM_VAR_THIZ;
    
    CATransform3D var0 = [thiz CATransform3DValue];

    return fromCATransform3D(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_valueWithCGPoint___org_xmlvm_ios_CGPoint]

    NSValue* var0 =  [NSValue  valueWithCGPoint:toCGPoint(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_valueWithCGSize___org_xmlvm_ios_CGSize]

    NSValue* var0 =  [NSValue  valueWithCGSize:toCGSize(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_valueWithCGRect___org_xmlvm_ios_CGRect]

    NSValue* var0 =  [NSValue  valueWithCGRect:toCGRect(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_valueWithCGAffineTransform___org_xmlvm_ios_CGAffineTransform]

    NSValue* var0 =  [NSValue  valueWithCGAffineTransform:toCGAffineTransform(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_valueWithUIEdgeInsets___org_xmlvm_ios_UIEdgeInsets]

    NSValue* var0 =  [NSValue  valueWithUIEdgeInsets:toUIEdgeInsets(n1)];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_CGPointValue__]

    XMLVM_VAR_THIZ;
    
    CGPoint var0 = [thiz CGPointValue];

    return fromCGPoint(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_CGSizeValue__]

    XMLVM_VAR_THIZ;
    
    CGSize var0 = [thiz CGSizeValue];

    return fromCGSize(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_CGRectValue__]

    XMLVM_VAR_THIZ;
    
    CGRect var0 = [thiz CGRectValue];

    return fromCGRect(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_CGAffineTransformValue__]

    XMLVM_VAR_THIZ;
    
    CGAffineTransform var0 = [thiz CGAffineTransformValue];

    return fromCGAffineTransform(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSValue_UIEdgeInsetsValue__]

    XMLVM_VAR_THIZ;
    
    UIEdgeInsets var0 = [thiz UIEdgeInsetsValue];

    return fromUIEdgeInsets(var0);
//XMLVM_END_WRAPPER
