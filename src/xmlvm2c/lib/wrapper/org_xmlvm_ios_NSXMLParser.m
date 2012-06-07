
//XMLVM_BEGIN_IMPLEMENTATION
@interface NSXMLParser (NSXMLParserWrapperCategory)
+ (void) initialize_class;
@end

@implementation NSXMLParser (NSXMLParserWrapperCategory)
+ (void) initialize_class {
    if(!__TIB_org_xmlvm_ios_NSXMLParser.classInitialized)
        __INIT_org_xmlvm_ios_NSXMLParser();
}
@end

void org_xmlvm_ios_NSXMLParser_INTERNAL_CONSTRUCTOR(JAVA_OBJECT me,NSObject* wrappedObj){
    org_xmlvm_ios_NSObject_INTERNAL_CONSTRUCTOR(me, wrappedObj);
    }

static JAVA_OBJECT __WRAPPER_CREATOR(NSObject* obj)
{
    if([obj class] == [NSXMLParser class]) 
    {
        [obj retain];
        JAVA_OBJECT jobj = __NEW_org_xmlvm_ios_NSXMLParser();
        org_xmlvm_ios_NSXMLParser_INTERNAL_CONSTRUCTOR(jobj, obj);
        return jobj;
    }
    return JAVA_NULL;
}
//XMLVM_END_IMPLEMENTATION

//XMLVM_BEGIN_WRAPPER[__INIT_org_xmlvm_ios_NSXMLParser]
xmlvm_register_wrapper_creator(__WRAPPER_CREATOR);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[__DELETE_org_xmlvm_ios_NSXMLParser]
__DELETE_org_xmlvm_ios_NSObject(me, client_data);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser___INIT____org_xmlvm_ios_NSURL]

    NSXMLParser* var0 = [[NSXMLParser alloc] initWithContentsOfURL:(NSURL*) (((org_xmlvm_ios_NSURL*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSXMLParser_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser___INIT____org_xmlvm_ios_NSData]

    NSXMLParser* var0 = [[NSXMLParser alloc] initWithData:(NSData*) (((org_xmlvm_ios_NSData*) n1)->fields.org_xmlvm_ios_NSObject.wrappedObj)];
    org_xmlvm_ios_NSXMLParser_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser___INIT___]
    NSXMLParser* var0 = [[NSXMLParser alloc ] init];
    org_xmlvm_ios_NSXMLParser_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser___INIT___]

    NSXMLParser* var0 = [[NSXMLParser alloc]init];

    org_xmlvm_ios_NSXMLParser_INTERNAL_CONSTRUCTOR(me, var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_delegate__]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_setDelegate___org_xmlvm_ios_NSXMLParserDelegate]

XMLVM_NOT_IMPLEMENTED();
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_setShouldProcessNamespaces___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setShouldProcessNamespaces:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_setShouldReportNamespacePrefixes___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setShouldReportNamespacePrefixes:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_setShouldResolveExternalEntities___boolean]

    XMLVM_VAR_THIZ;
    [thiz  setShouldResolveExternalEntities:n1];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_shouldProcessNamespaces__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz shouldProcessNamespaces];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_shouldReportNamespacePrefixes__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz shouldReportNamespacePrefixes];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_shouldResolveExternalEntities__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz shouldResolveExternalEntities];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_parse__]

    XMLVM_VAR_THIZ;
    
    BOOL var0 = [thiz parse];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_abortParsing__]

    XMLVM_VAR_THIZ;
    [thiz abortParsing];

    
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_parserError__]

    XMLVM_VAR_THIZ;
    
    NSError* var0 = [thiz parserError];

    return xmlvm_get_associated_c_object (var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_publicID__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz publicID];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_systemID__]

    XMLVM_VAR_THIZ;
    
    NSString* var0 = [thiz systemID];

    return fromNSString(var0);
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_lineNumber__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz lineNumber];

    return var0;
//XMLVM_END_WRAPPER

//XMLVM_BEGIN_WRAPPER[org_xmlvm_ios_NSXMLParser_columnNumber__]

    XMLVM_VAR_THIZ;
    
    int var0 = [thiz columnNumber];

    return var0;
//XMLVM_END_WRAPPER
