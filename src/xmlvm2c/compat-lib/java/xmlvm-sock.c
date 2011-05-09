
/*
 * Copyright (c) 2002-2011 by XMLVM.org
 *
 * Project Info:  http://www.xmlvm.org
 *
 * This program is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 2.1 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 */

#include <fcntl.h>
#include <errno.h>
//#include <sys/types.h>
//#include <sys/socket.h>
//#include "java_io_FileDescriptor.h"
//#include "java_net_SocketException.h"
//#include "java_lang_Thread.h"

#include "xmlvm.h"
#include "xmlvm-hy.h"
#include "xmlvm-sock.h"

#include "java_lang_String.h"
#include "java_net_InetAddress.h"


#define MAX_RETRIES 50
#define INVALID_SOCKET (hysocket_t) -1

#if NO_R
/*use a mutex if the gethostbyaddr, gethostbyname calls are not threadsafe*/
MUTEX hostentLock = PTHREAD_MUTEX_INITIALIZER;
#endif /*NO_R */


int harmony_supports_ipv6()
{
    return 0;
}


int preferIPv4Stack()
{
    return 1;
}


int preferIPv6Addresses()
{
    return 0;
}


I_32 map_addr_family_Hy_to_OS (I_32 addr_family)
{
    switch (addr_family)
    {
        case HYADDR_FAMILY_AFINET4:
            return OS_AF_INET4;
        case HYADDR_FAMILY_AFINET6:
            return OS_AF_INET6;
    }
    return OS_AF_UNSPEC;
}


static I_32 copy_hostent (OSHOSTENT * source, PortlibPTBuffers_t * ptBuffers)
{
    int h_len = strlen (source->h_name);
    int total = 0;
    int i = 0;
    char *buffer;
    OSHOSTENT *dest = &(*ptBuffers)->hostent;
    /* add trailing NULL, and round off to nearest pointer size */
    h_len = (h_len + 1 + sizeof (void *)) & ~(sizeof (void *) - 1);
    while (source->h_addr_list[i])
        i++;
    total = h_len + ((i + 2) * sizeof (void *)) + (i * sizeof (U_32));
    if (!(*ptBuffers)->gethostBuffer || (*ptBuffers)->gethostBufferSize < total)
    {
        (*ptBuffers)->gethostBuffer = XMLVM_MALLOC(total);
        if (!(*ptBuffers)->gethostBuffer)
        {
            return HYPORT_ERROR_SOCKET_SYSTEMFULL;
        }
        (*ptBuffers)->gethostBufferSize = total;
    }
    buffer = (*ptBuffers)->gethostBuffer;
    dest->h_name = buffer;
    strcpy (buffer, source->h_name);
    buffer += h_len;
    dest->h_aliases = (void *) buffer;
    *((void **) buffer) = NULL;
    buffer += sizeof (void *);
    dest->h_addrtype = source->h_addrtype;
    dest->h_length = source->h_length;
    dest->h_addr_list = (void *) buffer;
    buffer += (i + 1) * sizeof (void *);
    i = 0;
    while (source->h_addr_list[i])
    {
        dest->h_addr_list[i] = (void *) buffer;
        *((U_32 *) buffer) = *((U_32 *) source->h_addr_list[i]);
        buffer += sizeof (U_32);
        i++;
    }
    dest->h_addr_list[i] = NULL;
    
    return 0;
}


JAVA_OBJECT newJavaByteArray (JAVA_ARRAY_BYTE* bytes, JAVA_INT length)
{
    JAVA_OBJECT result = XMLVMArray_createSingleDimensionWithData(__CLASS_byte_1ARRAY, (int) length, bytes);
    return result;
}


JAVA_OBJECT newJavaNetInetAddressGenericBS (JAVA_ARRAY_BYTE* address, U_32 length,
                                const char* hostName, U_32 scope_id)
{
    JAVA_ARRAY_BYTE* byte_array;
    java_lang_String* aString;
    BOOLEAN isAnyAddress = 1;
    static JAVA_ARRAY_BYTE IPv4ANY[4] = { 0, 0, 0, 0 };
    static JAVA_ARRAY_BYTE IPv6ANY[16] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
    U_32 i = 0;
    JAVA_OBJECT result = NULL;
    
    aString = xmlvm_create_java_string(hostName);
    
    /* check if the address being returned is the any address.  If so we need to check the prefer flags to see how it should be returned
     (either as IPv4 Any or IPv6 ANY) */
    
    if (harmony_supports_ipv6 ())
    {
        /* Figure out if it is the any address */
        for (i = 0; i < length; i++)
        {
            if (address[i] != 0)
            {
                isAnyAddress = 0;
                break;
            }
        }
    }
    else
    {
        /* just do what we used to do without checking */
        isAnyAddress = 0;
    }
    
    /* If it is the any address then set up to return appropriately based on the flags */
    if (isAnyAddress)
    {
        if ((!preferIPv4Stack ()) && (preferIPv6Addresses ()))
        {
            if ((byte_array =
                 newJavaByteArray (IPv6ANY, sizeof (IPv6ANY))) == NULL)
            {
                return NULL;
            }
        }
        else
        {
            if ((byte_array =
                 newJavaByteArray (IPv4ANY, sizeof (IPv4ANY))) == NULL)
            {
                return NULL;
            }
        }
    }
    else
    {
        /* not any so just set up to return the address normally */
        if ((byte_array = newJavaByteArray (address, length)) == NULL)
        {
            return NULL;
        }
    }
    
    if (harmony_supports_ipv6 ())
    {
#if 0 //IP V6 not yet supported
        tempMethodWithScope = NULL;
        if (scope_id != 0)
        {
            tempMethodWithScope =
            (*env)->GetStaticMethodID (env,
                                       HARMONY_CACHE_GET (env,
                                                          CLS_java_net_InetAddress),
                                       "getByAddress",
                                       "(Ljava/lang/String;[BI)Ljava/net/InetAddress;");
            
            if ((*env)->ExceptionCheck (env))
            {
                (*env)->ExceptionClear (env);
                tempMethodWithScope = NULL;
            }
        }
        
        if (tempMethodWithScope != NULL)
        {
            /* create using the scope id */
            tempClass = HARMONY_CACHE_GET (env, CLS_java_net_InetAddress);
            result = (*env)->CallStaticObjectMethod (env, tempClass,
                                                     tempMethodWithScope, aString,
                                                     byte_array, scope_id);
            (*env)->ExceptionCheck(env);
            return result;
        }
        else
        {
            tempClass = HARMONY_CACHE_GET (env, CLS_java_net_InetAddress);
            tempMethod =
            HARMONY_CACHE_GET (env,
                               MID_java_net_InetAddress_getByAddress_Ljava_lang_String_byteArray);
            
            result = (*env)->CallStaticObjectMethod (env, tempClass, tempMethod,
                                                     aString, byte_array);
            (*env)->ExceptionCheck(env);
            //return result;
        }
#endif
    }
    else
    {
        result = __NEW_java_net_InetAddress();
        java_net_InetAddress___INIT____byte_1ARRAY_java_lang_String(result, byte_array, aString);
        //return result;
    }
    
    return result;
}



I_32 hysock_socket (hysocket_t * handle, I_32 family, I_32 socktype, I_32 protocol)
{
    I_32 rc = 0;
    int sock;
    
    /* initialize return hysocket_t to invalid socket */
    *handle = INVALID_SOCKET;
    
    if (protocol != HYSOCK_DEFPROTOCOL)
    {
        rc = HYPORT_ERROR_SOCKET_BADPROTO;
    }
    else if ((socktype != HYSOCK_STREAM) && (socktype != HYSOCK_DGRAM))
    {
        rc = HYPORT_ERROR_SOCKET_BADTYPE;
    }
    else if (family != HYADDR_FAMILY_AFINET6 && family != HYADDR_FAMILY_AFINET4
             && family != HYADDR_FAMILY_UNSPEC)
    {
        rc = HYPORT_ERROR_SOCKET_BADAF;
    }
    
    if (rc == 0)
    {
        
#if defined(IPv6_FUNCTION_SUPPORT)
        if (family != HYADDR_FAMILY_AFINET4)
        {
            family = HYADDR_FAMILY_AFINET6;
            sock =
            socket (AF_INET6,
                    ((socktype == HYSOCK_STREAM) ? SOCK_STREAM : SOCK_DGRAM),
                    0);
            if (sock < 0)
            {
                rc = errno;
                HYSOCKDEBUG ("<socket failed, err=%d>\n", rc);
                return portLibrary->error_set_last_error (portLibrary, rc,
                                                          findError (rc));
            }
        }
        else
        {
#endif
            
            sock =
            socket (AF_INET,
                    ((socktype == HYSOCK_STREAM) ? SOCK_STREAM : SOCK_DGRAM),
                    0);
            
            if (sock < 0)
            {
                rc = errno;
                return rc;
                
                //                HYSOCKDEBUG ("<socket failed, err=%d>\n", rc);
                //                return portLibrary->error_set_last_error (portLibrary, rc,
                //                                                          findError (rc));
            }
            
#if defined(IPv6_FUNCTION_SUPPORT)
        }
#endif
        
    }
    
    if (rc == 0)
    {
        /*Tag this descriptor as being non-inheritable */
        I_32 fdflags = fcntl (sock, F_GETFD, 0);
        fcntl (sock, F_SETFD, fdflags | FD_CLOEXEC);
        
        /* set up the socket structure */
        *handle = XMLVM_MALLOC(sizeof (struct hysocket_struct));
        
#if (defined(VALIDATE_ALLOCATIONS))
        if (*handle == NULL)
        {
            close (sock);
            *handle = INVALID_SOCKET;
            return HYPORT_ERROR_SOCKET_NOBUFFERS;
        }
#endif
        
        (*handle)->sock = sock;
        (*handle)->family = family;
    }
    return rc;
}


I_32 hysock_sockaddr_init6 (hysockaddr_t handle, U_8 * addr, I_32 addrlength,
                            I_16 family, U_16 nPort, U_32 flowinfo, U_32 scope_id,
                            hysocket_t sock)
{
    OSSOCKADDR *sockaddr;
#if defined(IPv6_FUNCTION_SUPPORT)
    OSSOCKADDR_IN6 *sockaddr_6;
#endif
    
    XMLVM_BZERO(handle, sizeof (struct hysockaddr_struct));
    
    if (family == HYADDR_FAMILY_AFINET4)
    {
#if defined(IPv6_FUNCTION_SUPPORT)
        if (hysock_socketIsValid (portLibrary, sock) &&
            (((struct hysocket_struct *) sock)->family ==
             HYADDR_FAMILY_AFINET6))
        {
            /* to talk IPv4 on an IPv6 socket we need to map the IPv4 address to an IPv6 format.  If mapAddress is true then we do this */
            sockaddr_6 = (OSSOCKADDR_IN6 *) & handle->addr;
            memset (sockaddr_6->sin6_addr.s6_addr, 0, 16);
            memcpy (&(sockaddr_6->sin6_addr.s6_addr[12]), addr, addrlength);
            /* do a check if it is the any address.  we know the top 4 bytes of sockaddr_6->sin6_addr.s6_addr are 0's as we just cleared the,
             so we use them to do the check */
            if (memcmp (sockaddr_6->sin6_addr.s6_addr, addr, addrlength) != 0)
            {
                /* if it is the any address then use the IPv6 any address */
                sockaddr_6->sin6_addr.s6_addr[10] = 0xFF;
                sockaddr_6->sin6_addr.s6_addr[11] = 0xFF;
            }
            sockaddr_6->sin6_port = nPort;
            sockaddr_6->sin6_family = OS_AF_INET6;
            sockaddr_6->sin6_scope_id = scope_id;
            sockaddr_6->sin6_flowinfo = htonl (flowinfo);
#if defined(FREEBSD)
            sockaddr_6->sin6_len = sizeof(OSSOCKADDR_IN6);
#endif
        }
        else
        {
#endif
            
            /* just initialize the IPv4 address as is as it will be used with an IPv4 Socket */
            sockaddr = (OSSOCKADDR *) & handle->addr;
            XMLVM_MEMCPY (&sockaddr->sin_addr.s_addr, addr, addrlength);
            sockaddr->sin_port = nPort;
            sockaddr->sin_family = OS_AF_INET4;
#if defined(FREEBSD)
            sockaddr->sin_len = sizeof(OSSOCKADDR);
#endif
            
#if defined(IPv6_FUNCTION_SUPPORT)
        }
#endif
        
    }
#if defined(IPv6_FUNCTION_SUPPORT)
    else if (family == HYADDR_FAMILY_AFINET6)
    {
        sockaddr_6 = (OSSOCKADDR_IN6 *) & handle->addr;
        memcpy (&sockaddr_6->sin6_addr.s6_addr, addr, addrlength);
        sockaddr_6->sin6_port = nPort;
        sockaddr_6->sin6_family = OS_AF_INET6;
        sockaddr_6->sin6_scope_id = scope_id;
        sockaddr_6->sin6_flowinfo = htonl (flowinfo);
#if defined(SIN6_LEN)
        sockaddr_6->sin6_len = sizeof(OSSOCKADDR_IN6);
#endif
    }
#endif
    
    else
    {
        sockaddr = (OSSOCKADDR *) & handle->addr;
        memcpy (&sockaddr->sin_addr.s_addr, addr, HYSOCK_INADDR_LEN);
        sockaddr->sin_port = nPort;
        sockaddr->sin_family = map_addr_family_Hy_to_OS (family);
#if defined(FREEBSD)
        sockaddr->sin_len = sizeof(OSSOCKADDR);
#endif
    }
    
    return 0;
}


I_32 hysock_getnameinfo (hysockaddr_t in_addr, I_32 sockaddr_size, char *name, 
                         I_32 name_length, int flags)
{
    
    /* If we have the IPv6 functions available we will call them, otherwise we'll call the IPv4 function */
#if defined(IPv6_FUNCTION_SUPPORT)
    int rc = 0;
    rc =
    getnameinfo ((OSADDR *) & in_addr->addr, sizeof (in_addr->addr), name,
                 name_length, NULL, 0, flags);
    if (rc != 0)
    {
        rc = errno;
        HYSOCKDEBUG ("<gethostbyaddr failed, err=%d>\n", rc);
        return portLibrary->error_set_last_error (portLibrary, rc,
                                                  findError (rc));
    }
    return 0;
#else /* IPv6_FUNCTION_SUPPORT */
#if !HOSTENT_DATA_R
    OSHOSTENT *result;
#endif
    
#if GLIBC_R||OTHER_R
    BOOLEAN allocBuffer = FALSE;
#endif
    int herr = 0;
    int i = 0;
    int rc = 0;
    int length;
    OSSOCKADDR *addr;
#if HOSTENT_DATA_R||GLIBC_R||OTHER_R||NO_R
    PortlibPTBuffers_t ptBuffers;
#endif /* HOSTENT_DATA_R || GLIBC_R || OTHER_R || NO_R */
    addr = (OSSOCKADDR *) & in_addr->addr;
    if (addr->sin_family == OS_AF_INET4)
    {
        length = 4;
    }
    else
    {
        length = 16;
    }
#if HOSTENT_DATA_R||GLIBC_R||OTHER_R||NO_R
    ptBuffers = hyport_tls_get ();
    if (NULL == ptBuffers)
    {
        return HYPORT_ERROR_SOCKET_SYSTEMFULL;
    }
#define hostentBuffer (&ptBuffers->hostent)
#endif /* HOSTENT_DATA_R || GLIBC_R || OTHER_R || NO_R */
    /* one of several threadsafe gethostbyaddr calls must be made depending on the current platform */
    /* if there is a transient error (HYPORT_ERROR_SOCKET_UNIX_TRYAGAIN), try making the call again */
    for (i = 0; i < MAX_RETRIES; i++)
    {
#if HOSTENT_DATA_R
#define dataBuffer (ptBuffers->hostent_data)
        if (!dataBuffer)
        {
            dataBuffer =
            portLibrary->mem_allocate_memory (portLibrary,
                                              sizeof (OSHOSTENT_DATA));
            if (!dataBuffer)
            {
                return HYPORT_ERROR_SOCKET_SYSTEMFULL;
            }
        }
        herr =
        gethostbyaddr_r (&addr->sin_addr, length, addr->sin_family,
                         hostentBuffer, dataBuffer);
#undef dataBuffer
#elif ORIGINAL_R || NO_R
#if NO_R
        MUTEX_ENTER (hostentLock);
#endif
        result = gethostbyaddr (&addr->sin_addr, length, addr->sin_family);
#if NO_R
        if (result)
        {
            herr = copy_hostent (result, &ptBuffers);
        }
        MUTEX_EXIT (hostentLock);
        if (herr != 0)
        {
            return herr;
        }
#endif
        herr = h_errno;
#elif GLIBC_R || OTHER_R
#define buffer (ptBuffers->gethostBuffer)
#define bufferSize (ptBuffers->gethostBufferSize)
        if (!buffer)
        {
            bufferSize = GET_HOST_BUFFER_SIZE;
        }
        while (TRUE)
        {
            if (allocBuffer == TRUE || !buffer)
            {
                /* The buffer is allocated bufferSize + EXTRA_SPACE, while gethostby*_r is only aware of bufferSize
                 * because there seems to be a bug on Linux 386 where gethostbyname_r writes past the end of the
                 * buffer.  This bug has not been observed on other platforms, but EXTRA_SPACE is added anyway as a precaution.*/
                buffer =
                portLibrary->mem_allocate_memory (portLibrary,
                                                  bufferSize + EXTRA_SPACE);
                if (!buffer)
                {
                    return HYPORT_ERROR_SOCKET_SYSTEMFULL;
                }
                allocBuffer = FALSE;
            }
#if GLIBC_R
            gethostbyaddr_r ((char *) &addr->sin_addr, length, addr->sin_family,
                             hostentBuffer, buffer, bufferSize, &result, &herr);
#elif OTHER_R
            result =
            gethostbyaddr_r ((char *) &addr->sin_addr, length,
                             addr->sin_family, hostentBuffer, buffer,
                             bufferSize, &herr);
#endif /* GLIBC_R */
            /* allocate more space if the buffer is too small */
            if (errno == ERANGE || herr == ERANGE)
            {
                portLibrary->mem_free_memory (portLibrary, buffer);
                bufferSize *= 2;
                allocBuffer = TRUE;
            }
            else
            {
                break;
            }
        }
#undef buffer
#undef bufferSize
#endif
        if (herr != HYPORT_ERROR_SOCKET_UNIX_TRYAGAIN)
        {
            break;
        }
    }
#if HOSTENT_DATA_R
    if (herr != 0)
    {
        herr = h_errno;
        HYSOCKDEBUGH ("<gethostbyaddr failed, err=%d>\n", herr);
        return portLibrary->error_set_last_error (portLibrary, herr,
                                                  findHostError (herr));
    }
#else
    if (result == NULL)
    {
        HYSOCKDEBUGH ("<gethostbyaddr failed, err=%d>\n", herr);
        return herr;
        //return portLibrary->error_set_last_error (portLibrary, herr,
        //                                          findHostError (herr));
    }
#endif
    else
    {
        memset (name, 0, sizeof (char) * name_length);
#if HOSTENT_DATA_R||NO_R
        strcpy (name, hostentBuffer->h_name);
#else
        strcpy (name, result->h_name);
#endif
    }
#if HOSTENT_DATA_R||GLIBC_R||OTHER_R
#undef hostentBuffer
#endif /*HOSTENT_DATA_R || GLIBC_R || OTHER_R */
    return 0;
#endif /* IPv6_FUNCTION_SUPPORT */
    
}

