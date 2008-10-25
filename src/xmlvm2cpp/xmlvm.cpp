/*
 *  XMLVM --- An XML-based Programming Language
 *  Copyright (c) 2004-2005 by Arno Puder
 *
 *  This program is free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 2 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program; if not, write to the Free Software
 *  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
 *
 *  For more information, visit the XMLVM Home Page at
 *  http://www.xml11.org/xmlvm/
 */


#include <iostream>
#include <string>
#include <stdio.h>
#include "xmlvm.h"

using namespace std;

XMLVM::Stack::Stack(int _size) : _stack(new XMLVM::Object_Ptr< java::lang::Object >[_size]), size(_size)
{
    _sp = 0;
}

XMLVM::Stack::~Stack()
{
    delete[] _stack;
}

void XMLVM::Stack::push(XMLVM::Object_Ptr< java::lang::Object > arg)
{
    _stack[_sp++] = arg;
}

void XMLVM::Stack::dup()
{
    _stack[_sp] = _stack[_sp - 1];
	++_sp;
}

XMLVM::Object_Ptr< java::lang::Object > XMLVM::Stack::pop()
{
	--_sp;
	XMLVM::Object_Ptr< java::lang::Object > old_obj_ptr = _stack[_sp];
	_stack[_sp] = XMLVM::NULL_POINTER;

    return old_obj_ptr;
}

XMLVM::Object_Ptr< java::lang::Object >& XMLVM::Stack::top(int offset)
{
    return _stack[_sp - offset - 1];
}

void XMLVM::Stack::remove(int elems)
{
	for(int i = 0; i < elems; i++) {
		_stack[--_sp] = NULL_POINTER;
	}

    // _sp -= elems;
}

void XMLVM::Stack::clear()
{
	while(_sp > 0) {
		_stack[--_sp] = NULL_POINTER;
	}

    // _sp = 0;
}



XMLVM::Locals::Locals(int _size) : _locals(new XMLVM::Object_Ptr< java::lang::Object >[_size]), size(_size) {
}

XMLVM::Locals::~Locals()
{
	delete[] _locals;
}

XMLVM::Object_Ptr< java::lang::Object > & XMLVM::Locals::operator[](int i)
{
	return _locals[i];
}


XMLVM::GarbageCollector::GC_Impl::GC_Impl(){}

XMLVM::GarbageCollector::GC_Impl::GC_Impl(const GC_Impl& gc){}

XMLVM::GarbageCollector::GC_Impl& XMLVM::GarbageCollector::GC_Impl::get_singleton(){
	static GC_Impl gc;
	static bool initialized = false;
	if(!initialized){
		gc.init();
		initialized = true;
	}
	return gc;
}

void XMLVM::GarbageCollector::GC_Impl::init(){
	// prevent static members from being destroyed
	
	//java::lang::System::out
	this->increment(java::lang::System::get_out());
}

void XMLVM::GarbageCollector::GC_Impl::increment(java::lang::Object_ref object_ref)
{

	// ignore null references
	if(object_ref == 0){
		return;
	}

	// is there already a reference?
	map<java::lang::Object_ref, unsigned long>::iterator iter = reference_count.find(object_ref);
	if (iter == reference_count.end()) {
		// no, create one
		reference_count.insert(entry(object_ref, 1));
	}
	else {
		// yes, increment it
		reference_count[object_ref]++;
	}

}

void XMLVM::GarbageCollector::GC_Impl::decrement(java::lang::Object_ref object_ref)
{

	// ignore null references
	if(object_ref == 0){
		return;
	}

	// is there a reference?
	try {
		map<java::lang::Object_ref, unsigned long>::iterator iter = reference_count.find(object_ref);
		if ( iter != reference_count.end() ) {
			reference_count[object_ref]--;
			if( reference_count[object_ref] == 0 ) {
				delete object_ref;
				reference_count.erase(iter);
			}
			// todo else?
		}
	}
	catch(...) {
	}
	
}

void XMLVM::GarbageCollector::increment(java::lang::Object_ref object_ref)
{
	GC_Impl::get_singleton().increment(object_ref);
}

void XMLVM::GarbageCollector::decrement(java::lang::Object_ref object_ref)
{
	GC_Impl::get_singleton().decrement(object_ref);
}


java::lang::Object::Object()
{
}

XMLVM::Object_Ptr< java::lang::Object > java::lang::Object::clone() {
	return new java::lang::Object(*this);
}

java::lang::Object::~Object()
{
}

XMLVM::Object_Ptr< java::lang::String > java::lang::Object::toString() {

	char buf[100];
	sprintf(buf, "Object@:%s", this);
	XMLVM::Object_Ptr< java::lang::String > return_string = new java::lang::String(buf);

	return return_string;
}

XMLVM::Object_Ptr< java::lang::Object >
	java::lang::Class::read_Object(XMLVM::Object_Ptr< java::io::InputStream > is) {
		long size = sizeof(java::lang::Object);
		void * vp = (void *) malloc(size);
		for(int i = 0; i<size; i++) {
			( * (char *) (((char *) vp) + i)) = (char) *((java::lang::INT_ref) is->read() );
		}

		return (java::lang::Object_ref) vp;
}


java::lang::INT::INT()
{
	value = 0;
}

java::lang::INT::INT(long value)
{
	this->value = value;
}

java::lang::INT::operator long()
{
	return this->value;
}

XMLVM::Object_Ptr< java::lang::String > java::lang::INT::toString() {
	return java::lang::String::valueOf(this);
}


java::lang::boolean::boolean() {
	this->value = 0;
}

java::lang::boolean::boolean(long value){
	this->value = value;
}

XMLVM::Object_Ptr< java::lang::String > java::lang::boolean::toString() {
	string ret_val;
	if(value){
		ret_val = "True";
	}
	else{
		ret_val = "False";
	}
	return new java::lang::String(ret_val);
}


java::lang::String::String()
{
    s = "";
}

java::lang::String::String(char* str)
{
    s = str;
}

java::lang::String::String(const char* str)
{
    s = str;
}

java::lang::String::String(string str) {
	s = str;
}

java::lang::String::String(String& str) {
	s = str.s;
}

XMLVM::Object_Ptr< java::lang::String > java::lang::String::valueOf(XMLVM::Object_Ptr< INT > i)
{
    char buf[50];

    sprintf(buf, "%d", (long) *i);
    return new java::lang::String(buf);
}

XMLVM::Object_Ptr< java::lang::String > java::lang::String::toString(){
	return new java::lang::String(this->s);
}

void java::lang::StringBuffer::__init()
{
    s = new java::lang::String;
}

void java::lang::StringBuffer::__init(XMLVM::Object_Ptr< String > str)
{
    s = str;
}

XMLVM::Object_Ptr< java::lang::String > java::lang::StringBuffer::toString()
{	
	return new java::lang::String( *(this->s) );
}

XMLVM::Object_Ptr< java::lang::StringBuffer > java::lang::StringBuffer::append(XMLVM::Object_Ptr< INT > i)
{
    char buf[50];
    
    sprintf(buf, "%d", (long)*i);
    s->s += buf;
    return this;
}

XMLVM::Object_Ptr< java::lang::StringBuffer > java::lang::StringBuffer::append(XMLVM::Object_Ptr< String > str)
{
    s->s += str->s;
    return this;
}

void java::io::PrintStream::println(XMLVM::Object_Ptr< Object > obj_ref)
{
    cout << obj_ref->toString()->s << endl;
}

java::io::PrintStream_ref java::lang::System::out = java::lang::System::get_out();

