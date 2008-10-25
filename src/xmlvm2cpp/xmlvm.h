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


#ifndef __XMLVM_H__
#define __XMLVM_H__

#include <string>
#include <map>
#include <iostream>
#include <assert.h>

// todo
#include <typeinfo>

using namespace std;


// forward declarations
namespace java {
	namespace lang {
		class Object;
		typedef Object* Object_ref;

		class Interface;
		typedef Interface* Interface_ref;
	}

	namespace io {
		class InputStream;
	}
}

namespace XMLVM {
	
	// GarbageCollector
	class GarbageCollector {

		private:
			class GC_Impl{
				private:
					typedef pair<java::lang::Object_ref, unsigned long> entry;
					map<java::lang::Object_ref, unsigned long> reference_count;
					GC_Impl();
					GC_Impl(const GC_Impl& gc);
					static GC_Impl& get_singleton();
					void init();
					friend class GarbageCollector;

				public:
					void increment(java::lang::Object_ref obj_ref);
					void decrement(java::lang::Object_ref obj_ref);
			};

		public:
			static void increment(java::lang::Object_ref obj_ref);
			static void decrement(java::lang::Object_ref obj_ref);
	};

	template < class T >
	class Object_Ptr {

		public:
			T* obj_ref; //public for = operator but should be treated as private
			
			Object_Ptr() {
				this->obj_ref = 0;
			}

			Object_Ptr(T* obj_ref) {
				if(obj_ref != 0)
					XMLVM::GarbageCollector::increment( dynamic_cast< java::lang::Object_ref >( obj_ref ));
				this->obj_ref = obj_ref;
			}

			Object_Ptr(const Object_Ptr< T >& op) {
				if(op.obj_ref != 0)
					XMLVM::GarbageCollector::increment( dynamic_cast< java::lang::Object_ref >( op.obj_ref ) );
				this->obj_ref = op.obj_ref;
			}

			template < class U >
			operator U* () {
				if( obj_ref != 0 )
					return dynamic_cast< U* > ( obj_ref );
				else
					return (U*) obj_ref;
			}

			template < class U >
			operator Object_Ptr< U > () {
				if(obj_ref != 0)
					return dynamic_cast< U* > ( obj_ref );
				else
					return (U*) obj_ref;
			}

			T& operator *() {
				if(obj_ref != 0)
					return *( dynamic_cast< T* > ( obj_ref ));
				else
					return *((T*) obj_ref);
			}

			T* operator ->() {
				if(obj_ref != 0)
					return dynamic_cast< T* > ( obj_ref );
				else
					return (T*) obj_ref;
			}

			Object_Ptr< T >& operator =( Object_Ptr< T >& op ) {
				
				if(op.obj_ref != 0)
					XMLVM::GarbageCollector::increment( dynamic_cast< java::lang::Object_ref >( op.obj_ref ));
				if(this->obj_ref != 0)
					XMLVM::GarbageCollector::decrement( dynamic_cast< java::lang::Object_ref >( this->obj_ref ));
				
				if(op.obj_ref != 0)
					this->obj_ref = dynamic_cast< T* > ( op.obj_ref );
				else
					this->obj_ref = (T*) op.obj_ref;

				return *this;
			}

			Object_Ptr< T >& operator =(T* op ) {
				
				if(op != 0)
					XMLVM::GarbageCollector::increment( dynamic_cast< java::lang::Object_ref >( op ));
				if(this->obj_ref != 0)
					XMLVM::GarbageCollector::decrement( dynamic_cast< java::lang::Object_ref >( this->obj_ref ));
				
				if(op != 0)
					this->obj_ref = dynamic_cast< T* > ( op );
				else
					this->obj_ref = (T*) op;

				return *this;
			}

			bool operator==( Object_Ptr< T >& op ) {
				java::lang::Object_ref op1;
				java::lang::Object_ref op2;

				if(this->obj_ref == 0){
					op1 = this->obj_ref;
				}
				else{
					op1 = dynamic_cast< java::lang::Object_ref >( this->obj_ref );
				}

				if(op.obj_ref == 0){
					op2 = op.obj_ref;
				}
				else{
					op2 = dynamic_cast< java::lang::Object_ref >( op.obj_ref );
				}

				return op1 == op2;
			}

			bool operator==( T* op ) {

				java::lang::Object_ref op1;
				java::lang::Object_ref op2;

				if(this->obj_ref == 0){
					op1 = this->obj_ref;
				}
				else{
					op1 = dynamic_cast< java::lang::Object_ref >( this->obj_ref );
				}

				if(op == 0){
					op2 = op;
				}
				else{
					op2 = dynamic_cast< java::lang::Object_ref >( op );
				}

				return op1 == op2;
			}

			bool operator!=( Object_Ptr< T >& op ) {
				java::lang::Object_ref op1;
				java::lang::Object_ref op2;

				if(this->obj_ref == 0){
					op1 = this->obj_ref;
				}
				else{
					op1 = dynamic_cast< java::lang::Object_ref >( this->obj_ref );
				}

				if(op.obj_ref == 0){
					op2 = op.obj_ref;
				}
				else{
					op2 = op.obj_ref;
				}

				return op1 != op2;
			}

			bool operator!=( T* op ) {
				java::lang::Object_ref op1;
				java::lang::Object_ref op2;

				if(this->obj_ref == 0){
					op1 = this->obj_ref;
				}
				else{
					op1 = this->obj_ref;
				}

				if(op == 0){
					op2 = op;
				}
				else{
					op2 = op;
				}

				return op1 != op2;
			}

			~Object_Ptr() {
				if(this->obj_ref != 0)
					XMLVM::GarbageCollector::decrement( dynamic_cast< java::lang::Object_ref >( this->obj_ref ));
			}

	};

	template < class T >
	class Array;

};


//----------------------------------------------------------------------
//-  Java classes                                                      -
//----------------------------------------------------------------------

namespace java {

    namespace lang {

		// forward declarations
		class String;
		typedef String * String_ref;
		class Class;
		typedef Class * Class_ref;
		class Object;
		typedef Object * Object_ref;


		class Interface;
		typedef Interface * Interface_ref;
		class Interface {
			public:
				virtual ~Interface(){}
				static void __clinit(){}
		};

		class Object;
		typedef Object * Object_ref;
		class Object {

			public:
				Object();
				XMLVM::Object_Ptr< java::lang::Class > class$(java::lang::String_ref class_name);
				void __init(){}
				static void __clinit(){}
				virtual XMLVM::Object_Ptr< String > toString();
				virtual XMLVM::Object_Ptr< Object > clone();
				virtual ~Object();
		};

		class Class;
		typedef Class * Class_ref;
		class Class : public Object
		{
			public:
				virtual XMLVM::Object_Ptr< java::lang::Object >
					read_Object(XMLVM::Object_Ptr< java::io::InputStream > is);

				static XMLVM::Object_Ptr< java::lang::Class > forName(
					XMLVM::Object_Ptr< java::lang::String > className) {
						// todo 
						return new Class();
				}
		};

		class INT;
		typedef INT* INT_ref;
		class INT : public Object {
				
			public:
				long value;
				INT();
				INT(long value);
				operator long ();
				XMLVM::Object_Ptr< String > toString();
		};

		class boolean;
		typedef boolean* boolean_ref;
		class boolean : public INT {
				
			public:
				boolean();
				boolean(long value);
				XMLVM::Object_Ptr< String > toString();
		};

		class String;
		typedef String* String_ref;
		class String : public Object {

			public:
				string s;

				String();
				String(char* str);
				String(const char* str);
				String(string str);
				String(String& str);
				static XMLVM::Object_Ptr< String > valueOf(XMLVM::Object_Ptr< INT > i);
				XMLVM::Object_Ptr< String > toString();			
		};

		class BYTE;
		typedef BYTE* BYTE_ref;
		class BYTE : public Object {
				
			public:
				char value;

				BYTE() {
					value = 0;
				}

				BYTE(char value) {
					this->value = value;
				}

				operator char () {
					return value;
				}

				XMLVM::Object_Ptr< String > toString() {
					char to_str[2];
					memcpy(to_str, &value, 1);
					to_str[1] = 0;
					return new java::lang::String(to_str);
				}
		};


		class Throwable;
		typedef Throwable* Throwable_ref;
		class Throwable : public Object {

			XMLVM::Object_Ptr< java::lang::String > message;
			
			public:

				Throwable(){}
				Throwable(XMLVM::Object_Ptr< java::lang::String > message) {
					this->message = new java::lang::String(((java::lang::String_ref) message)->s);
				}

				XMLVM::Object_Ptr< java::lang::String > getMessage() {
					return message;
				}

				virtual void __init() {}

				virtual void __init(XMLVM::Object_Ptr< java::lang::String > message) {
					this->message = new java::lang::String(((java::lang::String_ref) message)->s);
				}

				virtual XMLVM::Object_Ptr< java::lang::String > toString() {
					return message;
				}
		};

		class Exception;
		typedef Exception* Exception_ref;
		class Exception : public Throwable {
			public:
				Exception(){}
				Exception(XMLVM::Object_Ptr< java::lang::String > message) : Throwable(message) {}
		};

		class NoClassDefFoundError;
		typedef NoClassDefFoundError * NoClassDefFoundError_ref;
		class NoClassDefFoundError : public Exception
		{
			public:
				NoClassDefFoundError(){}
				NoClassDefFoundError(XMLVM::Object_Ptr< java::lang::String > message) : Exception(message) {}
		};

		class ClassNotFoundException;
		typedef ClassNotFoundException * ClassNotFoundException_ref;
		class ClassNotFoundException : public Exception
		{
			public:
				ClassNotFoundException(){}
				ClassNotFoundException(XMLVM::Object_Ptr< java::lang::String > message) : Exception(message) {}
		};

		class ClassCastException;
		typedef ClassCastException * ClassCastException_ref;
		class ClassCastException : public Exception
		{
			public:
				ClassCastException(){}
				ClassCastException(XMLVM::Object_Ptr< java::lang::String > message) : Exception(message) {}
		};
			
		class StringBuffer;
		typedef StringBuffer* StringBuffer_ref;
		class StringBuffer : public Object {

			public:
				XMLVM::Object_Ptr< String > s;
				
				void __init();
				void __init(XMLVM::Object_Ptr< String > str);
				XMLVM::Object_Ptr< String > toString();
				XMLVM::Object_Ptr< StringBuffer > append(XMLVM::Object_Ptr< INT > i);
				XMLVM::Object_Ptr< StringBuffer > append(XMLVM::Object_Ptr< String > str);
		};

    }
    
    namespace io {


		class InputStream;
		typedef InputStream* InputStream_ref;
		class InputStream : public java::lang::Object {

			public:
				XMLVM::Object_Ptr< java::lang::INT > read(){
					long l;
					cin >> l;
					return new java::lang::INT(l);
				}
		};

		class OutputStream;
		typedef OutputStream* OutputStream_ref;
		class OutputStream : public java::lang::Object {
			
			// todo ostream __ostream;
			public:
				void close() {}
				void flush() { cout.flush(); }
				void write(XMLVM::Array< java::lang::BYTE > b);
				void write(XMLVM::Array< java::lang::BYTE > b, java::lang::INT off, java::lang::INT len);

				void write(java::lang::INT b) {
					write((char) b);
				}

			private:
				void write(char b) {
					cout << b << endl;
				}	
		};
		
		class PrintStream;
		typedef PrintStream* PrintStream_ref;
		class PrintStream : public java::lang::Object {
			
			public:
				void println(XMLVM::Object_Ptr< Object > obj);
		};

		class ObjectInputStream;
		typedef ObjectInputStream * ObjectInputStream_ref;
		class ObjectInputStream : public java::lang::Object
		{
			public:
				XMLVM::Object_Ptr< java::lang::String > readUTF() {
					string s;
					cin >> s;
					return new java::lang::String(s);
				}
		};

		class ObjectOutputStream;
		typedef ObjectOutputStream * ObjectOutputStream_ref;
		class ObjectOutputStream : public java::lang::Object
		{
			public:
				void writeUTF(XMLVM::Object_Ptr< java::lang::String > str) {
					cout << str->s;
				}
		};
    }
    
    
    namespace lang {
		
		class System;
		typedef System* System_ref;
		class System : public java::lang::Object {
			public:
				static java::io::PrintStream* out;
				static java::io::PrintStream_ref get_out() {
					if(out == 0)
						out = new java::io::PrintStream;
					return out;
				}
		};

	}

	namespace util {

		class Properties;
		typedef Properties * Properties_ref;
		class Properties {
		};

	}
}

namespace XMLVM {

	class ArrayBase;
	typedef ArrayBase * ArrayBase_ref;
	class ArrayBase : public java::lang::Object {
		public:
			// for use when you don't know the array type
			virtual Object_Ptr< java::lang::Object > get(unsigned long index) = 0;
			virtual void set(unsigned long index, Object_Ptr< java::lang::Object > obj_ptr) = 0;
	};

	template < class T >
	class Array : public ArrayBase
	{
		private:
			Object_Ptr< T > * array;
			friend class ArrayHelper;
		
		public:

			const unsigned long size;

			Array(unsigned long _size) : size(_size) {
				array = new Object_Ptr< T >[size];
			}

			Object_Ptr< T >& operator[](unsigned long index) {
				return array[index];
			}

			// for use when you don't know the array type
			// note can't manipulate the address pointed to by
			// the array with this
			Object_Ptr< java::lang::Object > get(unsigned long index){
				return array[index];
			}

			void set(unsigned long index, Object_Ptr< java::lang::Object > obj_ptr){
				array[index] = (T*) obj_ptr.obj_ref;
			}

			~Array() {
				delete[] array;
			}
	};


	static Object_Ptr< java::lang::Object > NULL_POINTER;

    class Stack {

		 private:
			Object_Ptr< java::lang::Object > * _stack;
			int  _sp;
			const int size;

		 public:
			Stack(int size);
			~Stack();
			void push(Object_Ptr< java::lang::Object > arg);
			void dup();
			Object_Ptr< java::lang::Object > pop();
			Object_Ptr< java::lang::Object >& top(int offset);
			void remove(int elems);
			void clear();
    };

	class Locals {

		private:
			Object_Ptr< java::lang::Object > * _locals;
			const int size;

		public:
			Locals(int size);
			~Locals();
			Object_Ptr< java::lang::Object >& operator[](int i);

	};

}

//----------------------------------------------------------------------
//-  CIL classes                                                       -
//----------------------------------------------------------------------

namespace System 
{

    class Object;
    typedef Object* Object_ref;
    class Object : public java::lang::Object
    {
    };
    

    class Console;
    typedef Console* Console_ref;
    class Console : public java::lang::Object
    {
    public:
	static void WriteLine(java::lang::String_ref str)
	    {
		cout << str->s << endl;
	    }
	static void WriteLine(java::lang::INT_ref i)
	    {
		cout << i->value << endl;
	    }
    };
    
}

#endif
