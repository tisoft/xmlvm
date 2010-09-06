
#if 0
#ifndef __STRINGBUILDER_H__
#define __STRINGBUILDER_H__

#include "java_lang_String.h"

class java_lang_StringBuilder : public java_lang_String {
public:

void __init_java_lang_StringBuilder__()
{
  str = "";
}

void __init_java_lang_StringBuilder___java_lang_String(java_lang_String* other) {
  str = other->str;
}

java_lang_StringBuilder* append___java_lang_String(java_lang_String* other) {
  char* buf = new char[100];
  sprintf(buf, "%s%s", str, other->str);
  str = buf;
  return this;
}

java_lang_StringBuilder* append___int(int n) {
  char* buf = new char[100];
  sprintf(buf, "%s%d", str, n);
  str = buf;
  return this;
}


java_lang_String* toString__() {
  return this;
}

};

#endif