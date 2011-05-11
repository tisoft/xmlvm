
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


#include "hysock.h"


#ifndef __XMLVM_SOCK_H__
#define __XMLVM_SOCK_H__


int harmony_supports_ipv6();
int preferIPv4Stack();
int preferIPv6Addresses();

U_16 hysock_htons(U_16 port);
I_32 hysock_socketIsValid (hysocket_t handle);
void* getJavaIoFileDescriptorContentsAsAPointer (JAVA_OBJECT fd);
void netGetJavaNetInetAddressValue (JAVA_OBJECT anInetAddress, U_8* buffer, U_32* length);
void netGetJavaNetInetAddressScopeId (JAVA_OBJECT anInetAddress, U_32* scope_id);

JAVA_OBJECT newJavaNetInetAddressGenericBS (JAVA_ARRAY_BYTE* address, U_32 length,
                                            const char* hostName, U_32 scope_id);

I_32 hysock_socket (hysocket_t * handle, I_32 family, I_32 socktype, I_32 protocol);

I_32 hysock_sockaddr_init6 (hysockaddr_t handle, U_8 * addr, I_32 addrlength,
                            I_16 family, U_16 nPort, U_32 flowinfo, U_32 scope_id,
                            hysocket_t sock);

I_32 hysock_getnameinfo (hysockaddr_t in_addr, I_32 sockaddr_size, char *name, 
                         I_32 name_length, int flags);

I_32 hysock_bind (hysocket_t sock, hysockaddr_t addr);

#endif
