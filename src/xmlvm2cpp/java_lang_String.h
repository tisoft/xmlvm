/*
 * Copyright (c) 2004-2009 XMLVM --- An XML-based Programming Language
 * 
 * This program is free software; you can redistribute it and/or modify it under
 * the terms of the GNU General Public License as published by the Free Software
 * Foundation; either version 2 of the License, or (at your option) any later
 * version.
 * 
 * This program is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
 * FOR A PARTICULAR PURPOSE. See the GNU General Public License for more
 * details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program; if not, write to the Free Software Foundation, Inc., 675 Mass
 * Ave, Cambridge, MA 02139, USA.
 * 
 * For more information, visit the XMLVM Home Page at http://www.xmlvm.org
 */

#import "java_lang_Object.h"
#import <cstdio>
#import <cstring>



class java_lang_String : public java_lang_Object {
public:
  const char* str;

  java_lang_String() {
    str = "";
  }

  virtual void __init_java_lang_String___char_ARRAYTYPE(XMLVMArray* s) {
    str = new char[s->length + 1];
    for (int i = 0; i < s->length; i++) {
        ((char*) str)[i] = s->array.b[i];
    }
    ((char*) str)[s->length] = '\0';
  }
  
  static java_lang_String* valueOf___int(int i) {
    java_lang_String* s = new java_lang_String();
    s->str = new char[20];
    sprintf((char*) s->str, "%d", i);
    return s;
  }

  int length__() {
    return strlen(str);
  }


};

