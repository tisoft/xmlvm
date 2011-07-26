
#include "xmlvm.h"
#include "java_util_zip_Inflater.h"


//XMLVM_BEGIN_NATIVE_IMPLEMENTATION
#include "zlib.h"
#include "org_xmlvm_iphone_NSObject.h"
//XMLVM_END_NATIVE_IMPLEMENTATION

void java_util_zip_Inflater_oneTimeInitialization__()
{
    //XMLVM_BEGIN_NATIVE[java_util_zip_Inflater_oneTimeInitialization__]
    //do nothing
    //XMLVM_END_NATIVE
}

JAVA_LONG java_util_zip_Inflater_createStream___boolean(JAVA_OBJECT me, JAVA_BOOLEAN n1)
{
    //XMLVM_BEGIN_NATIVE[java_util_zip_Inflater_createStream___boolean]
    XMLVM_VAR_BOOLEAN(noHeader, n1);
    z_stream* stream=XMLVM_ATOMIC_MALLOC(sizeof(z_stream));
    
    stream->zalloc = Z_NULL;
    stream->zfree = Z_NULL;
    stream->opaque = Z_NULL;
    stream->avail_in = 0;
    stream->next_in = Z_NULL;
    stream->adler = 1;
    
    
    int err = 0;
    int wbits = 15;               /*Use MAX for fastest */
    
    /*
     * In the range 8..15 for checked, or -8..-15 for unchecked inflate. Unchecked
     * is appropriate for formats like zip that do their own validity checking.
     */
    if (noHeader)
        wbits = wbits / -1;
    
    err = inflateInit2 (stream, wbits);   /*Window bits to use. 15 is fastest but consumes the most memory */
    
    if (err != Z_OK)
    {
        /*        jclmem_free_memory (env, stream);
         jclmem_free_memory (env, jstream);
         THROW_ZIP_EXCEPTION(env, err, IllegalArgumentException);*/
        XMLVM_ERROR("ZIP Error", __FILE__, __FUNCTION__, __LINE__);
        return -1;
    }
    
    return (JAVA_LONG)stream;
    
    
    //XMLVM_END_NATIVE
}

void java_util_zip_Inflater_endImpl___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[java_util_zip_Inflater_endImpl___long]
    z_stream* stream=(z_stream*)n1;
    
    inflateEnd(stream);
    XMLVM_FREE(stream);
    //XMLVM_END_NATIVE
}

JAVA_INT java_util_zip_Inflater_getAdlerImpl___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[java_util_zip_Inflater_getAdlerImpl___long]
    z_stream* stream=(z_stream*)n1;
    
    return stream->adler;
    //XMLVM_END_NATIVE
}

JAVA_LONG java_util_zip_Inflater_getTotalInImpl___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[java_util_zip_Inflater_getTotalInImpl___long]
    z_stream* stream=(z_stream*)n1;
    
    return stream->total_in;
    //XMLVM_END_NATIVE
}

JAVA_LONG java_util_zip_Inflater_getTotalOutImpl___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[java_util_zip_Inflater_getTotalOutImpl___long]
    z_stream* stream=(z_stream*)n1;
    
    return stream->total_out;
    //XMLVM_END_NATIVE
}

JAVA_INT java_util_zip_Inflater_inflateImpl___byte_1ARRAY_int_int_long(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3, JAVA_LONG n4)
{
    //XMLVM_BEGIN_NATIVE[java_util_zip_Inflater_inflateImpl___byte_1ARRAY_int_int_long]
    XMLVM_VAR_BYTE_ARRAY(buf, n1);
    XMLVM_VAR_INT(off, n2);
    XMLVM_VAR_INT(len, n3);
    z_stream* stream=(z_stream*)n4;
    
    
    JAVA_BYTE *out;
    JAVA_INT err = 0;
    JAVA_INT sin, sout, inBytes = 0;
    
    /* We need to get the number of bytes already read */
    inBytes = ((java_util_zip_Inflater*)me)->fields.java_util_zip_Inflater.inRead_;
    
    stream->avail_out = len;
    sin = stream->total_in;
    sout = stream->total_out;
    out = buf->fields.org_xmlvm_runtime_XMLVMArray.array_;
    stream->next_out = (Bytef *) out + off;
    err = inflate (stream, Z_SYNC_FLUSH);
    
    if (err != Z_OK)
    {
        if(err == Z_STREAM_ERROR) {
            return 0;
        }
        if (err == Z_STREAM_END || err == Z_NEED_DICT)
        {
            ((java_util_zip_Inflater*)me)->fields.java_util_zip_Inflater.inRead_=stream->total_in - sin + inBytes;
            if (err == Z_STREAM_END)
                ((java_util_zip_Inflater*)me)->fields.java_util_zip_Inflater.finished_=1;
            else
                ((java_util_zip_Inflater*)me)->fields.java_util_zip_Inflater.needsDictionary_=1;
            
            
            return stream->total_out - sout;
        }
        else
        {
            //THROW_ZIP_EXCEPTION(env, err, DataFormatException);
            XMLVM_ERROR("ZIP Error", __FILE__, __FUNCTION__, __LINE__);
            return -1;
        }
    }
    
    /* Need to update the number of input bytes read.
     */
    ((java_util_zip_Inflater*)me)->fields.java_util_zip_Inflater.inRead_=stream->total_in - sin + inBytes;
    
    return stream->total_out - sout;
    //XMLVM_END_NATIVE
}

void java_util_zip_Inflater_resetImpl___long(JAVA_OBJECT me, JAVA_LONG n1)
{
    //XMLVM_BEGIN_NATIVE[java_util_zip_Inflater_resetImpl___long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_util_zip_Inflater_setDictionaryImpl___byte_1ARRAY_int_int_long(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3, JAVA_LONG n4)
{
    //XMLVM_BEGIN_NATIVE[java_util_zip_Inflater_setDictionaryImpl___byte_1ARRAY_int_int_long]
    XMLVM_UNIMPLEMENTED_NATIVE_METHOD();
    //XMLVM_END_NATIVE
}

void java_util_zip_Inflater_setInputImpl___byte_1ARRAY_int_int_long(JAVA_OBJECT me, JAVA_OBJECT n1, JAVA_INT n2, JAVA_INT n3, JAVA_LONG n4)
{
    //XMLVM_BEGIN_NATIVE[java_util_zip_Inflater_setInputImpl___byte_1ARRAY_int_int_long]
    XMLVM_VAR_BYTE_ARRAY(buf, n1);
    XMLVM_VAR_INT(off, n2);
    XMLVM_VAR_INT(len, n3);
    z_stream* stream=(z_stream*)n4;
    
    stream->next_in = buf->fields.org_xmlvm_runtime_XMLVMArray.array_+off;
    stream->avail_in = len;
    
    //XMLVM_END_NATIVE
}

