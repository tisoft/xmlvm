
#include "xmlvm.h"
#include "java_util_TimeZone.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
#include "org_xmlvm_runtime_XMLVMArray.h"
//XMLVM_END_NATIVE_IMPLEMENTATION

JAVA_OBJECT java_util_TimeZone_getCustomTimeZone___int_1ARRAY_boolean_1ARRAY(JAVA_OBJECT n1, JAVA_OBJECT n2)
{
    //XMLVM_BEGIN_NATIVE[java_util_TimeZone_getCustomTimeZone___int_1ARRAY_boolean_1ARRAY]
    org_xmlvm_runtime_XMLVMArray* tzinfo=n1;
    org_xmlvm_runtime_XMLVMArray* isCustomTimeZone=n2;
    
    time_t curTime;
    struct tm *tmStruct;
    char tzInfo[9];
    int h, m;
    JAVA_BOOLEAN fls;
    
    time(&curTime);
    //curTime += 15552000l;
    tmStruct = localtime(&curTime);
    // timezone is now set to time zone offset
    // tmStruct->tm_isdst is set to 1 if DST is in effect
    strcpy(tzInfo, "GMT");
    tzInfo[3] = timezone > 0 ? '-' : '+';
#if defined (FREEBSD) || defined(MACOSX)
    h = labs(tmStruct->tm_gmtoff) / 3600;
#else /* !FREEBSD */
    h = labs(timezone) / 3600;
#endif /* FREEBSD */
    if (tmStruct->tm_isdst) {
        if (timezone > 0) {
            h--;
        } else {
            h++;
        }
    }
#if defined (FREEBSD) || defined(MACOSX)
    m = (labs(tmStruct->tm_isdst) % 3600) / 60;
#else /* !FREEBSD */
    m = (labs(timezone) % 3600) / 60;
#endif /* FREEBSD */
    tzInfo[4] = h / 10 + '0';
    tzInfo[5] = h % 10 + '0';
    tzInfo[6] = m / 10 + '0';
    tzInfo[7] = m % 10 + '0';
    tzInfo[8] = 0;
    
    fls = 0;
    
    ((JAVA_BOOLEAN*)isCustomTimeZone->fields.org_xmlvm_runtime_XMLVMArray.array_)[0]=fls;
    
    return xmlvm_create_java_string(tzInfo);
    //XMLVM_END_NATIVE
}

