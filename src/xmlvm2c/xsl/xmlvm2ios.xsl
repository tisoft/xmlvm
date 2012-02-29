<?xml version="1.0"?>

<!--
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
-->

<!DOCTYPE xsl:stylesheet [
<!ENTITY nl "&#xa;"><!--new line-->
]>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs ="http://www.w3.org/2001/XMLSchema"
                xmlns:vm ="http://xmlvm.org"
                xmlns:jvm="http://xmlvm.org/jvm"
                xmlns:dex="http://xmlvm.org/dex"
                version="2.0">


<xsl:import href="xmlvm2c.xsl"/>


<xsl:param name="packageName">org_xmlvm_iphone</xsl:param>


<xsl:template name="emitObjCMethodIdentifier">
    <xsl:param name="cclname"/>

    <xsl:call-template name="emitMethodName">
      <xsl:with-param name="name" select="../@name"/>
      <xsl:with-param name="class-type" select="$cclname"/>
    </xsl:call-template>

    <!-- The following is the same as the "appendSignature" template, but for the parent element -->
    <xsl:text>__</xsl:text>
    <xsl:for-each select="../vm:signature/vm:parameter">
      <xsl:text>_</xsl:text>
      <xsl:value-of select="vm:fixname(@type)"/>
    </xsl:for-each>
</xsl:template>

<xsl:template name="emitExtendedDeclarations">

  <xsl:if test="@skeletonOnly = 'true'">

    <xsl:variable name="cclname" select="concat(@package, '.', @name)"/>
    <xsl:variable name="clname" select="vm:fixname($cclname)"/>
    <xsl:variable name="escapedName" select="vm:fixname(@name)"/>
    <xsl:variable name="isDelegate" select="@isInterface = 'true'"/>
    <xsl:variable name="baseClass" select="vm:fixname(@extends)"/>
    <xsl:variable name="delegateProtocolType" select="@delegateProtocolType" />

    <xsl:for-each select="vm:method/vm:delegateMethod">

      <xsl:variable name="methodIdentifier">
        <xsl:call-template name="emitObjCMethodIdentifier">
          <xsl:with-param name="cclname" select="$cclname"/>
        </xsl:call-template>
      </xsl:variable>

      <xsl:if test="position() eq 1">
        <xsl:text>&nl;</xsl:text>
        <xsl:text>// Define Obj-C method wrapper contents which invoke the Java methods&nl;&nl;</xsl:text>
      </xsl:if>

      <xsl:if test="not($isDelegate)">
        <xsl:text>#ifdef XMLVM_VTABLE_IDX_</xsl:text>
        <xsl:value-of select="$methodIdentifier" />
        <xsl:text>&nl;</xsl:text>
      </xsl:if>

      <xsl:variable name="returnType" select="../vm:signature/vm:return/@type" />

      <xsl:variable name="methodSignature">
        <xsl:text>- (</xsl:text>
        <xsl:choose>
          <xsl:when test="vm:isPrimitive($returnType) = 'true' or $returnType = 'void'">
            <xsl:call-template name="emitType">
              <xsl:with-param name="type" select="$returnType"/>
            </xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
            <xsl:text>id</xsl:text>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:text>)</xsl:text>
        <xsl:value-of select="@selector"/>
        <xsl:for-each select="vm:param">
          <xsl:if test="@name ne ''">
            <xsl:text> </xsl:text>
            <xsl:value-of select="@name"/>
          </xsl:if>
          <xsl:text>:(</xsl:text>
          <xsl:value-of select="@type"/>
          <xsl:if test="not(@isStruct eq 'true') and vm:isPrimitive(@type) != 'true' and @type != 'BOOL'">
            <xsl:text> *</xsl:text>
          </xsl:if>
          <xsl:text>)n</xsl:text>
          <xsl:value-of select="position()" />
        </xsl:for-each>
      </xsl:variable>

      <xsl:text>#define XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_</xsl:text>
      <xsl:value-of select="$methodIdentifier" />
      <xsl:text> \&nl;</xsl:text>
      <xsl:value-of select="$methodSignature" />
      <xsl:text>;&nl;</xsl:text>


      <xsl:text>#define XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_</xsl:text>
      <xsl:value-of select="$methodIdentifier" />
      <xsl:text> \&nl;</xsl:text>
      <xsl:value-of select="$methodSignature" />
      <xsl:text> \&nl;{ \&nl;</xsl:text>

      <xsl:if test="not($isDelegate)">
        <xsl:text>    JAVA_OBJECT jthiz = xmlvm_get_associated_c_object(self); \&nl;</xsl:text>
      </xsl:if>

      <xsl:for-each select="vm:param">
        <xsl:variable name="paramInitialization">
          <xsl:text>    </xsl:text>
          <xsl:choose>
            <xsl:when test="vm:isPrimitive(@type) = 'true' or @type = 'BOOL'">
              <xsl:value-of select="@type" />
            </xsl:when>
            <xsl:otherwise>
              <xsl:text>JAVA_OBJECT</xsl:text>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:text> n</xsl:text>
          <xsl:value-of select="position()" />
          <xsl:text>_ = </xsl:text>
        </xsl:variable>
        <xsl:choose>
          <xsl:when test="vm:isPrimitive(@type) = 'true' or @type = 'BOOL'">
            <xsl:value-of select="$paramInitialization" />
            <xsl:text>n</xsl:text>
            <xsl:value-of select="position()" />
          </xsl:when>
          <xsl:when test="@isStruct eq 'true' or @type = 'NSString'">
            <xsl:value-of select="$paramInitialization" />
            <xsl:text>from</xsl:text>
            <xsl:value-of select="@type" />
            <xsl:text>(n</xsl:text>
            <xsl:value-of select="position()" />
            <xsl:text>)</xsl:text>
          </xsl:when>
          <xsl:when test="@isSource eq 'true'">
            <xsl:value-of select="$paramInitialization" />
            <xsl:text>[self getSource: n</xsl:text>
            <xsl:value-of select="position()" />
            <xsl:text>]</xsl:text>
          </xsl:when>
          <xsl:otherwise>
            <xsl:text>    if (!__TIB_</xsl:text>
            <xsl:value-of select="$packageName" />
            <xsl:text>_</xsl:text>
            <xsl:value-of select="@type" />
            <xsl:text>.classInitialized) __INIT_</xsl:text>
            <xsl:value-of select="$packageName" />
            <xsl:text>_</xsl:text>
            <xsl:value-of select="@type" />
            <xsl:text>(); \&nl;</xsl:text>

            <xsl:value-of select="$paramInitialization" />
            <xsl:text>xmlvm_get_associated_c_object(n</xsl:text>
            <xsl:value-of select="position()" />
            <xsl:text>)</xsl:text>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:text>; \&nl;</xsl:text>
      </xsl:for-each>

      <xsl:text>    </xsl:text>
      <xsl:choose>
        <xsl:when test="not($returnType = 'void')">
          <xsl:text>return (</xsl:text>
          <xsl:if test="not(vm:isPrimitive($returnType) = 'true')">
            <xsl:text>id)(</xsl:text>
<!-- TODO need a better solution for classes with a base class besides NSObject or types such as CGRect -->
            <xsl:text>((</xsl:text>
            <xsl:value-of select="$packageName" />
            <xsl:text>_NSObject*)(</xsl:text>
          </xsl:if>
        </xsl:when>
        <xsl:otherwise>(</xsl:otherwise>
      </xsl:choose>

      <xsl:choose>
        <xsl:when test="$isDelegate">
          <xsl:text>((java_lang_Object*) delegate_)->tib->itableBegin[XMLVM_ITABLE_IDX_</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>jthiz->tib->vtable[XMLVM_VTABLE_IDX_</xsl:text>
        </xsl:otherwise>
      </xsl:choose>

      <xsl:value-of select="$methodIdentifier" />

      <xsl:text>](</xsl:text>
      <xsl:choose>
        <xsl:when test="$isDelegate">
          <xsl:text>delegate_</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>jthiz</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:for-each select="vm:param">
        <xsl:text>, n</xsl:text>
        <xsl:value-of select="position()" />
        <xsl:text>_</xsl:text>
      </xsl:for-each>
      <xsl:text>)</xsl:text>
      <xsl:if test="not($returnType = 'void') and not(vm:isPrimitive($returnType) = 'true')">
<!-- TODO need a better solution for classes with a base class besides NSObject or types such as CGRect -->
        <xsl:text>))->fields.</xsl:text>
        <xsl:value-of select="$packageName" />
        <xsl:text>_NSObject.wrappedObjCObj</xsl:text>
      </xsl:if>
      <xsl:text>); \&nl;</xsl:text>

      <xsl:text>}&nl;</xsl:text>

      <xsl:if test="not($isDelegate)">
        <xsl:text>#else&nl;</xsl:text>

        <xsl:text>// If the application does not override the method, define nothing for it&nl;</xsl:text>
        <xsl:text>#define XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_</xsl:text>
        <xsl:value-of select="$methodIdentifier" />
        <xsl:text>&nl;</xsl:text>

        <xsl:text>#define XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_</xsl:text>
        <xsl:value-of select="$methodIdentifier" />
        <xsl:text>&nl;</xsl:text>

        <xsl:text>#endif&nl;</xsl:text>

      </xsl:if>

      <xsl:text>&nl;</xsl:text>

    </xsl:for-each>


    <xsl:text>&nl;</xsl:text>
    <xsl:text>// Define a Macro for the method declarations of the Obj-C wrapper class so that subclass wrappers may easily include these too&nl;</xsl:text>
    <xsl:text>#define XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_</xsl:text>
    <xsl:value-of select="$clname" />
    <xsl:text> \&nl;</xsl:text>

    <!-- Now combine all method declarations for a class into a single Macro -->
    <xsl:for-each select="vm:method/vm:delegateMethod">

      <xsl:variable name="methodIdentifier">
        <xsl:call-template name="emitObjCMethodIdentifier">
          <xsl:with-param name="cclname" select="$cclname"/>
        </xsl:call-template>
      </xsl:variable>

      <xsl:text>XMLVM_OBJC_OVERRIDE_METHOD_DECLARATION_</xsl:text>
      <xsl:value-of select="$methodIdentifier" />
      <xsl:text> \&nl;</xsl:text>

    </xsl:for-each>

    <xsl:if test="$baseClass ne '' and $baseClass ne 'java_lang_Object'">
      <!-- Include the super's "XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_" -->
      <xsl:text>XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_</xsl:text>
      <xsl:value-of select="$baseClass" />
      <xsl:text> \&nl;</xsl:text>
    </xsl:if>
    <xsl:text>&nl;</xsl:text>


    <xsl:text>// Define a Macro for the entire contents of the Obj-C wrapper class&nl;</xsl:text>
    <xsl:text>#define XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_</xsl:text>
    <xsl:value-of select="$clname" />
    <xsl:text> \&nl;</xsl:text>

    <!-- Now combine all method definitions for a class into a single Macro -->
    <xsl:for-each select="vm:method/vm:delegateMethod">

      <xsl:variable name="methodIdentifier">
        <xsl:call-template name="emitObjCMethodIdentifier">
          <xsl:with-param name="cclname" select="$cclname"/>
        </xsl:call-template>
      </xsl:variable>

      <xsl:text>XMLVM_OBJC_OVERRIDE_METHOD_DEFINITION_</xsl:text>
      <xsl:value-of select="$methodIdentifier" />
      <xsl:text> \&nl;</xsl:text>

    </xsl:for-each>

    <xsl:if test="$baseClass ne '' and $baseClass ne 'java_lang_Object'">
      <!-- Include the super's "XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_" -->
      <xsl:text>XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_</xsl:text>
      <xsl:value-of select="$baseClass" />
      <xsl:text> \&nl;</xsl:text>
    </xsl:if>
    <xsl:text>&nl;</xsl:text>


    <xsl:if test="vm:method/vm:delegateMethod">

      <xsl:text>&nl;</xsl:text>
      <xsl:text>#include "xmlvm-ios.h"&nl;&nl;</xsl:text>
      <xsl:text>@interface </xsl:text>
      <xsl:value-of select="$escapedName"/>
      <xsl:text>Wrapper : </xsl:text>
      <xsl:choose>
        <xsl:when test="$isDelegate">
          <xsl:text>DelegateWrapper</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="$escapedName"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:if test="$delegateProtocolType ne ''">
        <xsl:text> &lt;</xsl:text>
        <xsl:value-of select="$delegateProtocolType"/>
        <xsl:text>&gt;</xsl:text>
      </xsl:if>
      <xsl:text>&nl;</xsl:text>
      <xsl:if test="$isDelegate">
        <xsl:text>{&nl;</xsl:text>
        <xsl:text>    @public JAVA_OBJECT delegate_;&nl;</xsl:text>
        <xsl:text>}&nl;</xsl:text>
      </xsl:if>
      <xsl:text>&nl;</xsl:text>
      <xsl:if test="$isDelegate">
        <xsl:text>- (id) initWithDelegate: (JAVA_OBJECT) d_;&nl;&nl;</xsl:text>
      </xsl:if>

      <xsl:text>// Append the wrapper method declarations defined in the class Macro&nl;</xsl:text>
      <xsl:text>XMLVM_OBJC_OVERRIDE_CLASS_DECLARATIONS_</xsl:text>
      <xsl:value-of select="$clname" />
      <xsl:text>&nl;&nl;</xsl:text>

      <xsl:text>@end&nl;&nl;</xsl:text>

      <xsl:if test="$isDelegate">

        <xsl:text>typedef struct </xsl:text>
        <xsl:value-of select="$clname" />
        <xsl:text>_Wrapper {&nl;</xsl:text>
        <xsl:text>    JAVA_OBJECT delegate_; // the Java delegate interface implementation. This also maintains a reference so that the instance is not garbage collected early.&nl;</xsl:text>
        <xsl:text>    </xsl:text>
        <xsl:value-of select="$escapedName"/>
        <xsl:text>Wrapper* nativeDelegateWrapper_; // the Obj-C delegate which will forward its invocations to the Java interface implementation's appropriate method&nl;</xsl:text>
        <xsl:text>} </xsl:text>
        <xsl:value-of select="$clname" />
        <xsl:text>_Wrapper;&nl;&nl;</xsl:text>

        <xsl:text>void __DELETE_</xsl:text>
        <xsl:value-of select="$clname" />
        <xsl:text>_Wrapper(void* me, void* client_data);&nl;</xsl:text>

        <xsl:value-of select="$clname" />
        <xsl:text>_Wrapper* __ALLOC_INIT_DELEGATE_WRAPPER_</xsl:text>
        <xsl:value-of select="$clname" />
        <xsl:text>(</xsl:text>
        <xsl:value-of select="$clname" />
        <xsl:text>* delegate);&nl;</xsl:text>

        <xsl:text>&nl;</xsl:text>

      </xsl:if>

    </xsl:if>

  </xsl:if>

</xsl:template>

<xsl:template name="emitExtendedImplementation">

  <xsl:if test="@skeletonOnly = 'true'">

    <xsl:variable name="cclname" select="concat(@package, '.', @name)"/>
    <xsl:variable name="clname" select="vm:fixname($cclname)"/>
    <xsl:variable name="escapedName" select="vm:fixname(@name)"/>
    <xsl:variable name="isDelegate" select="@isInterface = 'true'"/>

    <xsl:if test="vm:method/vm:delegateMethod">

      <xsl:text>&nl;@implementation </xsl:text>
      <xsl:value-of select="$escapedName"/>
      <xsl:text>Wrapper&nl;&nl;</xsl:text>
      <xsl:if test="$isDelegate">
        <xsl:text>- (id) initWithDelegate:(JAVA_OBJECT) d_&nl;</xsl:text>
        <xsl:text>{&nl;</xsl:text>
        <xsl:text>    [super init];&nl;</xsl:text>
        <xsl:text>    self->delegate_ = d_;&nl;</xsl:text>
        <xsl:text>    return self;&nl;</xsl:text>
        <xsl:text>}&nl;&nl;</xsl:text>
      </xsl:if>

      <xsl:text>// Append the wrapper methods defined in the class Macro&nl;</xsl:text>
      <xsl:text>XMLVM_OBJC_OVERRIDE_CLASS_DEFINITIONS_</xsl:text>
      <xsl:value-of select="$clname" />
      <xsl:text>&nl;&nl;</xsl:text>

      <xsl:text>@end&nl;&nl;</xsl:text>

      <xsl:if test="$isDelegate">

        <xsl:text>void __DELETE_</xsl:text>
        <xsl:value-of select="$clname" />
        <xsl:text>_Wrapper(void* me, void* client_data)&nl;</xsl:text>
        <xsl:text>{&nl;</xsl:text>

        <xsl:text>    </xsl:text>
        <xsl:value-of select="$clname" />
        <xsl:text>_Wrapper* jthiz = (</xsl:text>
        <xsl:value-of select="$clname" />
        <xsl:text>_Wrapper*) me;&nl;</xsl:text>

        <xsl:text>    [(jthiz-&gt;nativeDelegateWrapper_) release];&nl;</xsl:text>

        <xsl:text>}&nl;&nl;</xsl:text>

        <xsl:value-of select="$clname" />
        <xsl:text>_Wrapper* __ALLOC_INIT_DELEGATE_WRAPPER_</xsl:text>
        <xsl:value-of select="$clname" />
        <xsl:text>(</xsl:text>
        <xsl:value-of select="$clname" />
        <xsl:text>* delegate)&nl;</xsl:text>
        <xsl:text>{&nl;</xsl:text>

        <xsl:text>    </xsl:text>
        <xsl:value-of select="$escapedName"/>
        <xsl:text>Wrapper* nativeDelegateWrapper = [[</xsl:text>
        <xsl:value-of select="$escapedName"/>
        <xsl:text>Wrapper alloc] initWithDelegate:delegate];&nl;</xsl:text>

        <xsl:text>    </xsl:text>
        <xsl:value-of select="$clname" />
        <xsl:text>_Wrapper* delegateWrapper = (</xsl:text>
        <xsl:value-of select="$clname" />
        <xsl:text>_Wrapper*) XMLVM_MALLOC(sizeof(</xsl:text>
        <xsl:value-of select="$clname" />
        <xsl:text>_Wrapper));&nl;</xsl:text>

        <xsl:text>    delegateWrapper-&gt;delegate_ = delegate;&nl;</xsl:text>
        <xsl:text>    delegateWrapper-&gt;nativeDelegateWrapper_ = nativeDelegateWrapper;&nl;</xsl:text>

        <xsl:text>    XMLVM_FINALIZE(delegateWrapper, __DELETE_</xsl:text>
        <xsl:value-of select="$clname" />
        <xsl:text>_Wrapper);&nl;</xsl:text>

        <xsl:text>    return delegateWrapper;&nl;</xsl:text>

        <xsl:text>}&nl;</xsl:text>

        <xsl:text>&nl;</xsl:text>

      </xsl:if>

    </xsl:if>

  </xsl:if>

</xsl:template>

</xsl:stylesheet>
