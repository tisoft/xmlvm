
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

#include "xmlvm.h"
#include "xmlvm-hy.h"

void* hyport_tls_get ()
{
    java_lang_Thread* curThread = (java_lang_Thread*) java_lang_Thread_currentThread__();
    if (curThread->fields.java_lang_Thread.ptBuffers_ == JAVA_NULL) {
        curThread->fields.java_lang_Thread.ptBuffers_ = XMLVM_MALLOC(sizeof(PortlibPTBuffers_struct));
        XMLVM_BZERO(curThread->fields.java_lang_Thread.ptBuffers_, sizeof(PortlibPTBuffers_struct));
    }
    
    return curThread->fields.java_lang_Thread.ptBuffers_;
}
