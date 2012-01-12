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


<xsl:template name="emitExtendedDeclarations">
    <xsl:variable name="cclname" select="concat(@package, '.', @name)"/>
    <xsl:variable name="clname" select="vm:fixname($cclname)"/>
    <xsl:variable name="escapedName" select="vm:fixname(@name)"/>

    <!-- Only consider delegate methods with a void return type -->
    <xsl:for-each select="vm:method/vm:delegateMethod[../vm:signature/vm:return/@type = 'void']">

      <xsl:if test="position() eq 1">

        <xsl:text>&nl;</xsl:text>
        <xsl:text>@interface </xsl:text>
        <xsl:value-of select="$escapedName"/>
        <xsl:text>Wrapper : DelegateWrapper</xsl:text>
        <xsl:if test="../../@delegateProtocolType ne ''">
          <xsl:text> &lt;</xsl:text>
          <xsl:value-of select="../../@delegateProtocolType"/>
          <xsl:text>&gt;</xsl:text>
        </xsl:if>
        <xsl:text>&nl;{&nl;</xsl:text>
        <xsl:text>    @public JAVA_OBJECT delegate_;&nl;</xsl:text>
        <xsl:text>}&nl;&nl;</xsl:text>
        <xsl:text>- (id) initWithDelegate: (JAVA_OBJECT) d_;&nl;&nl;</xsl:text>

      </xsl:if>

      <!-- We are only looping through delegate methods with a void return type. Delegate methods are generally this way. See http://en.wikipedia.org/wiki/Delegation_pattern -->
      <xsl:text>- (void)</xsl:text>
      <xsl:value-of select="@selector"/>
      <xsl:for-each select="vm:param">
        <xsl:if test="@name ne ''">
          <xsl:text> </xsl:text>
          <xsl:value-of select="@name"/>
        </xsl:if>
        <xsl:text>:(</xsl:text>
        <xsl:value-of select="@type"/>
        <xsl:if test="not(@isStruct eq 'true') and vm:isPrimitive(@type) != 'true'">
          <xsl:text> *</xsl:text>
        </xsl:if>
        <xsl:text>)n</xsl:text>
        <xsl:value-of select="position()" />
      </xsl:for-each>
      <xsl:text>;&nl;</xsl:text>

      <xsl:if test="position() eq last()">

        <xsl:text>&nl;@end&nl;&nl;</xsl:text>

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

    </xsl:for-each>

</xsl:template>

<xsl:template name="emitExtendedImplementation">
    <xsl:variable name="cclname" select="concat(@package, '.', @name)"/>
    <xsl:variable name="clname" select="vm:fixname($cclname)"/>
    <xsl:variable name="escapedName" select="vm:fixname(@name)"/>

    <!-- Only consider delegate methods with a void return type -->
    <xsl:for-each select="vm:method/vm:delegateMethod[../vm:signature/vm:return/@type = 'void']">

      <xsl:if test="position() eq 1">

        <xsl:text>&nl;@implementation </xsl:text>
        <xsl:value-of select="$escapedName"/>
        <xsl:text>Wrapper&nl;&nl;</xsl:text>
        <xsl:text>- (id) initWithDelegate:(JAVA_OBJECT) d_&nl;</xsl:text>
        <xsl:text>{&nl;</xsl:text>
        <xsl:text>    [super init];&nl;</xsl:text>
        <xsl:text>    self->delegate_ = d_;&nl;</xsl:text>
        <xsl:text>    return self;&nl;</xsl:text>
        <xsl:text>}&nl;&nl;</xsl:text>

      </xsl:if>


      <!-- We are only looping through delegate methods with a void return type. Delegate methods are generally this way. See http://en.wikipedia.org/wiki/Delegation_pattern -->
      <xsl:text>- (void)</xsl:text>
      <xsl:value-of select="@selector"/>
      <xsl:for-each select="vm:param">
        <xsl:if test="@name ne ''">
          <xsl:text> </xsl:text>
          <xsl:value-of select="@name"/>
        </xsl:if>
        <xsl:text>:(</xsl:text>
        <xsl:value-of select="@type"/>
        <xsl:if test="not(@isStruct eq 'true') and vm:isPrimitive(@type) != 'true'">
          <xsl:text> *</xsl:text>
        </xsl:if>
        <xsl:text>)n</xsl:text>
        <xsl:value-of select="position()" />
      </xsl:for-each>
      <xsl:text>&nl;{&nl;</xsl:text>

      <xsl:for-each select="vm:param">
        <xsl:text>    </xsl:text>
        <xsl:choose>
          <xsl:when test="vm:isPrimitive(@type) = 'true'">
            <xsl:value-of select="@type" />
          </xsl:when>
          <xsl:otherwise>
            <xsl:text>JAVA_OBJECT</xsl:text>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:text> n</xsl:text>
        <xsl:value-of select="position()" />
        <xsl:text>_ = </xsl:text>
        <xsl:choose>
          <xsl:when test="vm:isPrimitive(@type) = 'true'">
            <xsl:text>n</xsl:text>
            <xsl:value-of select="position()" />
          </xsl:when>
          <xsl:when test="@type = 'NSString'">
            <xsl:text>fromNSString(n</xsl:text>
            <xsl:value-of select="position()" />
            <xsl:text>)</xsl:text>
          </xsl:when>
          <xsl:when test="@isSource eq 'true'">
            <xsl:text>[self getSource: n</xsl:text>
            <xsl:value-of select="position()" />
            <xsl:text>]</xsl:text>
          </xsl:when>
          <xsl:otherwise>
            <xsl:text>xmlvm_get_associated_c_object(n</xsl:text>
            <xsl:value-of select="position()" />
            <xsl:text>)</xsl:text>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:text>;&nl;</xsl:text>
      </xsl:for-each>

      <xsl:text>    ((java_lang_Object*) delegate_)->tib->itableBegin[XMLVM_ITABLE_IDX_</xsl:text>

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

      <xsl:text>](delegate_</xsl:text>
      <xsl:for-each select="vm:param">
        <xsl:text>, n</xsl:text>
        <xsl:value-of select="position()" />
        <xsl:text>_</xsl:text>
      </xsl:for-each>
      <xsl:text>);&nl;</xsl:text>

      <xsl:text>}&nl;&nl;</xsl:text>


      <xsl:if test="position() eq last()">
        <xsl:text>@end&nl;&nl;</xsl:text>

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

    </xsl:for-each>

</xsl:template>

</xsl:stylesheet>
