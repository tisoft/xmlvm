<?xml version="1.0"?>

<!DOCTYPE xsl:stylesheet [
<!ENTITY nl "&#xa;"><!--new line-->
]>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs = "http://www.w3.org/2001/XMLSchema"
                xmlns:vm ="http://xmlvm.org"
                xmlns:jvm="http://xmlvm.org/jvm"
                xmlns:dex="http://xmlvm.org/dex"
                version="2.0">


<xsl:param name="pass">emitHeader</xsl:param>
<xsl:param name="header">xmlvm.h</xsl:param>
<xsl:param name="genWrapper">false</xsl:param>

<xsl:output method="text" indent="no"/>

<xsl:template match="vm:xmlvm">
  <xsl:choose>
    <xsl:when test="$pass = 'emitNativeSkeletons'">
      <xsl:call-template name="emitNativeSkeletons"/>
    </xsl:when>
    <xsl:when test="$pass = 'emitHeader'">
      <xsl:call-template name="emitDeclarations"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>&nl;#include "</xsl:text>
      <xsl:value-of select="$header"/>
      <xsl:text>"&nl;&nl;</xsl:text>
      <xsl:call-template name="emitImplementation"/>
      <xsl:if test="vm:class/vm:method/@name = 'main'">
        <xsl:call-template name="emitMainMethod"/>
      </xsl:if>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>



<xsl:template name="emitMainMethod">
  <xsl:text>

//#if 0
int main(int argc, char* argv[])
{
    xmlvm_init();
    </xsl:text>
    <xsl:variable name="cl" as="node()" select="vm:class/vm:method[@name = 'main']/.."/>
    <xsl:value-of select="vm:fixname($cl/@package)"/>
    <xsl:text>_</xsl:text>
    <xsl:value-of select="$cl/@name"/>
    <xsl:text>_main___java_lang_String_ARRAYTYPE(JAVA_NULL);
    return 0;
}
//#endif

</xsl:text>
</xsl:template>



<xsl:template name="emitNativeSkeletons">
  <xsl:for-each select="vm:class">
    <xsl:variable name="cclname" select="concat(@package, '.', @name)"/>
    <xsl:variable name="clname" select="vm:fixname($cclname)"/>
    <xsl:for-each select="vm:method[@isNative = 'true']">
      <xsl:variable name="mangledMethodName">
        <xsl:call-template name="emitMethodName">
          <xsl:with-param name="name" select="@name"/>
          <xsl:with-param name="class-type" select="concat(../@package, '.', ../@name)"/>
        </xsl:call-template>
        <xsl:call-template name="appendSignature"/>
      </xsl:variable>
      <xsl:call-template name="emitMethodSignature">
        <xsl:with-param name="forDeclaration" select="0"/>
      </xsl:call-template>
      <xsl:text>&nl;{&nl;</xsl:text>
      <xsl:text>    //XMLVM_BEGIN_NATIVE[</xsl:text>
      <xsl:value-of select="$mangledMethodName"/>
      <xsl:text>]&nl;</xsl:text>
      <xsl:text>    xmlvm_unimplemented_native_method();&nl;</xsl:text>
      <xsl:text>    //XMLVM_END_NATIVE&nl;}&nl;&nl;</xsl:text>
    </xsl:for-each>
  
    <xsl:if test="vm:method[@isNative = 'true' and not(@isStatic = 'true') and not(@isPrivate = 'true')]">
      <xsl:text>&nl;void xmlvm_init_native_</xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>()&nl;{&nl;</xsl:text>
      <xsl:for-each select="vm:method[@isNative = 'true' and not(@isStatic = 'true') and not(@isPrivate = 'true')]">
        <xsl:variable name="mangledMethodName">
          <xsl:call-template name="emitMethodName">
            <xsl:with-param name="name" select="@name"/>
            <xsl:with-param name="class-type" select="concat(../@package, '.', ../@name)"/>
          </xsl:call-template>
          <xsl:call-template name="appendSignature"/>
        </xsl:variable>
        <xsl:text>    __CLASS_</xsl:text>
        <xsl:value-of select="$clname"/>
        <xsl:text>.vtable[XMLVM_VTABLE_IDX_</xsl:text>
        <xsl:value-of select="$mangledMethodName"/>
        <xsl:text>] = &nl;</xsl:text>
        <xsl:text>        (VTABLE_PTR) </xsl:text>
        <xsl:value-of select="$mangledMethodName"/>
        <xsl:text>;&nl;</xsl:text>
      </xsl:for-each>
      <xsl:text>}&nl;</xsl:text>
    </xsl:if>
  </xsl:for-each>
</xsl:template>



<xsl:template name="emitDeclarations">
  <xsl:for-each select="vm:class">
    <xsl:choose>
      <xsl:when test="@isInterface = 'true'">
        <xsl:call-template name="emitInterfaceDeclarations"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="emitClassDeclarations"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:for-each>
</xsl:template>


<xsl:template name="emitClassDeclarations">
    <xsl:variable name="cclname" select="concat(@package, '.', @name)"/>
    <xsl:variable name="clname" select="vm:fixname($cclname)"/>

    <xsl:text>// Class declarations for </xsl:text>
    <xsl:value-of select="$cclname"/>
    <xsl:text>&nl;XMLVM_DEFINE_CLASS(</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>, </xsl:text>
    <xsl:value-of select="@vtableSize"/>
    <xsl:text>)&nl;&nl;</xsl:text>
    <xsl:if test="$genWrapper = 'true'">
      <xsl:text>//XMLVM_BEGIN_MEMBERS&nl;</xsl:text>
      <xsl:text>#define __ADDITIONAL_INSTANCE_MEMBERS_</xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>&nl;//XMLVM_END_MEMBERS&nl;&nl;</xsl:text>
    </xsl:if>
    <xsl:text>#define __INSTANCE_MEMBERS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text> \&nl;</xsl:text>
    <xsl:if test="@extends ne ''">
      <xsl:text>    __INSTANCE_MEMBERS_</xsl:text>
      <xsl:value-of select="vm:fixname(@extends)"/>
      <xsl:text>; \&nl;</xsl:text>
    </xsl:if>
    <xsl:text>    struct { \&nl;    </xsl:text>
    <!-- Emit declarations for all non-static fields -->
    <xsl:for-each select="vm:field[not(@isStatic = 'true')]">
      <xsl:if test="not($genWrapper = 'true' and @isPrivate = 'true')">
        <xsl:text>    </xsl:text>
        <xsl:call-template name="emitType">
          <xsl:with-param name="type" select="@type"/>
        </xsl:call-template>
        <xsl:text> </xsl:text>
        <xsl:value-of select="vm:fixname(@name)"/>
        <xsl:text>_; \&nl;    </xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:if test="$genWrapper = 'true'">
      <xsl:text>    __ADDITIONAL_INSTANCE_MEMBERS_</xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text> \&nl;    </xsl:text>
    </xsl:if>
    <xsl:text>} </xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>&nl;&nl;</xsl:text>

    <xsl:text>struct </xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text> {&nl;    __CLASS_DEFINITION_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>* __class;
    __INSTANCE_MEMBERS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>;&nl;};&nl;</xsl:text>
    <xsl:text>#ifndef XMLVM_FORWARD_DECL_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>&nl;</xsl:text>
    <xsl:text>#define XMLVM_FORWARD_DECL_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>&nl;</xsl:text>
    <xsl:text>typedef struct </xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>;&nl;</xsl:text>
    <xsl:text>#endif</xsl:text>
    <xsl:text>&nl;&nl;</xsl:text>

    <!--  Emit symbolic constants for Vtable entries -->
    <xsl:text>#define XMLVM_VTABLE_SIZE_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="@vtableSize"/>
    <xsl:text>&nl;</xsl:text>
    <xsl:for-each select="vm:method[@vtableIndex]">
      <xsl:text>#define XMLVM_VTABLE_IDX_</xsl:text>
      <xsl:call-template name="emitMethodName">
        <xsl:with-param name="name" select="@name"/>
        <xsl:with-param name="class-type" select="concat(../@package, '.', ../@name)"/>
      </xsl:call-template>
      <xsl:call-template name="appendSignature"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="@vtableIndex"/>
      <xsl:text>&nl;</xsl:text>
    </xsl:for-each>
    <xsl:text>&nl;</xsl:text>

    <!-- Emit XMLVM-specific class initializer -->
    <xsl:text>void __INIT_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>();&nl;</xsl:text>

    <!-- Emit new-operator -->
    <xsl:text>JAVA_OBJECT __NEW_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>();&nl;</xsl:text>

    <xsl:if test="vm:method[@isNative = 'true' and not(@isStatic = 'true')]">
      <xsl:text>void xmlvm_init_native_</xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>();&nl;</xsl:text>
    </xsl:if>
    
    <!-- Emit declarations for getter and setter methods for all static fields -->
    <xsl:for-each select="vm:field[@isStatic = 'true']">

      <xsl:if test="not($genWrapper = 'true' and @isPrivate = 'true')">
        <!-- Emit getter -->
        <xsl:call-template name="emitType">
          <xsl:with-param name="type" select="@type"/>
        </xsl:call-template>
        <xsl:text> </xsl:text>
        <xsl:value-of select="$clname"/>
        <xsl:text>_GET_</xsl:text>
        <xsl:value-of select="vm:fixname(@name)"/>
        <xsl:text>();&nl;</xsl:text>
      
        <!-- Emit setter -->
        <xsl:text>void </xsl:text>
        <xsl:value-of select="$clname"/>
        <xsl:text>_PUT_</xsl:text>
        <xsl:value-of select="vm:fixname(@name)"/>
        <xsl:text>(</xsl:text>
        <xsl:call-template name="emitType">
          <xsl:with-param name="type" select="@type"/>
        </xsl:call-template>
        <xsl:text> v)</xsl:text>
        <xsl:text>;&nl;</xsl:text>
       </xsl:if>
       
    </xsl:for-each>

    <!-- Emit declarations for all methods -->
    <xsl:for-each select="vm:method">
      <xsl:if test="vm:shouldGenerateCodeForMethod(.)">
        <xsl:if test="@vtableIndex">
          <xsl:text>// Vtable index: </xsl:text>
          <xsl:value-of select="@vtableIndex"/>
          <xsl:text>&nl;</xsl:text>
        </xsl:if>
        <xsl:call-template name="emitMethodSignature">
          <xsl:with-param name="forDeclaration" select="1"/>
        </xsl:call-template>
        <xsl:text>;&nl;</xsl:text>
      </xsl:if>
    </xsl:for-each>
</xsl:template>


<xsl:template name="emitInterfaceDeclarations">
    <xsl:variable name="cclname" select="concat(@package, '.', @name)"/>
    <xsl:variable name="clname" select="vm:fixname($cclname)"/>
  
    <xsl:text>&nl;XMLVM_DEFINE_CLASS(</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>, </xsl:text>
    <xsl:value-of select="@vtableSize"/>
    <xsl:text>)&nl;&nl;</xsl:text>

    <xsl:text>#ifndef XMLVM_FORWARD_DECL_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>&nl;</xsl:text>
    <xsl:text>#define XMLVM_FORWARD_DECL_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>&nl;</xsl:text>
    <xsl:text>typedef struct </xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>;&nl;</xsl:text>
    <xsl:text>#endif&nl;&nl;</xsl:text>
    
    <!--  Emit symbolic constants for Vtable entries -->
    <xsl:text>#define XMLVM_VTABLE_SIZE_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text> </xsl:text>
    <xsl:value-of select="@vtableSize"/>
    <xsl:text>&nl;</xsl:text>
    <xsl:for-each select="vm:method[@vtableIndex]">
      <xsl:text>#define XMLVM_VTABLE_IDX_</xsl:text>
      <xsl:call-template name="emitMethodName">
        <xsl:with-param name="name" select="@name"/>
        <xsl:with-param name="class-type" select="concat(../@package, '.', ../@name)"/>
      </xsl:call-template>
      <xsl:call-template name="appendSignature"/>
      <xsl:text> </xsl:text>
      <xsl:value-of select="@vtableIndex"/>
      <xsl:text>&nl;</xsl:text>
    </xsl:for-each>
    <xsl:text>&nl;</xsl:text>

    <!-- Emit interface initializers -->
    <xsl:text>void __INIT_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>(__CLASS_DEFINITION_TEMPLATE** interface);&nl;</xsl:text>

    <!-- Emit code for class initializer if there is one -->
    <xsl:for-each select="vm:method[@name = '&lt;clinit&gt;']">
      <xsl:call-template name="emitMethodSignature">
        <xsl:with-param name="forDeclaration" select="1"/>
      </xsl:call-template>
      <xsl:text>;&nl;&nl;</xsl:text>
    </xsl:for-each>

    <!-- Emit declarations for getter for all fields. Note that for interfaces all fields must be static
         and final. Setters are generated but are only called from <clinit>. -->
    <xsl:for-each select="vm:field">

      <!-- Emit getter -->
      <xsl:call-template name="emitType">
        <xsl:with-param name="type" select="@type"/>
      </xsl:call-template>
      <xsl:text> </xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>_GET_</xsl:text>
      <xsl:value-of select="vm:fixname(@name)"/>
      <xsl:text>();&nl;</xsl:text>

      <!-- Emit setter -->
      <xsl:text>void </xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>_PUT_</xsl:text>
      <xsl:value-of select="vm:fixname(@name)"/>
      <xsl:text>(</xsl:text>
      <xsl:call-template name="emitType">
        <xsl:with-param name="type" select="@type"/>
      </xsl:call-template>
      <xsl:text> v)</xsl:text>
      <xsl:text>;&nl;</xsl:text>

    </xsl:for-each>

</xsl:template>


<xsl:template name="emitImplementation">
  <xsl:for-each select="vm:class">
    <xsl:choose>
      <xsl:when test="@isInterface = 'true'">
        <xsl:call-template name="emitInterfaceImplementation"/>
      </xsl:when>
      <xsl:otherwise>
        <xsl:call-template name="emitClassImplementation"/>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:for-each>
</xsl:template>


<xsl:template name="emitClassImplementation">
    <xsl:variable name="clname" select="vm:fixname(concat(@package, '.', @name))"/>

    <xsl:text>__CLASS_DEFINITION_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text> __CLASS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text> = {
    0, // classInitialized
    "</xsl:text>
    <xsl:value-of select="concat(@package, '.' , @name)"/>
    <xsl:text>", // className&nl;</xsl:text>
    <xsl:text>    (__CLASS_DEFINITION_TEMPLATE*) </xsl:text>
    <xsl:choose>
      <xsl:when test="@extends ne ''">
        <xsl:text>&amp;__CLASS_</xsl:text>
        <xsl:value-of select="vm:fixname(@extends)"/> 
      </xsl:when>
      <xsl:otherwise>
        <xsl:text>JAVA_NULL</xsl:text>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text>, // extends&nl;};&nl;&nl;</xsl:text>

    <xsl:if test="$genWrapper = 'true'">
      <xsl:text>//XMLVM_BEGIN_IMPLEMENTATION&nl;</xsl:text>
      <xsl:text>//XMLVM_END_IMPLEMENTATION&nl;&nl;</xsl:text>
    </xsl:if>
    
    <!-- Emit global variable definition for all static fields -->
    <xsl:for-each select="vm:field[@isStatic = 'true']">

      <xsl:if test="not($genWrapper = 'true' and @isPrivate = 'true')">
        <xsl:text>static </xsl:text>
        <xsl:call-template name="emitType">
          <xsl:with-param name="type" select="@type"/>
        </xsl:call-template>
        <xsl:text> _STATIC_</xsl:text>
        <xsl:value-of select="$clname"/>
        <xsl:text>_</xsl:text>
        <xsl:value-of select="vm:fixname(@name)"/>
        <xsl:text>;&nl;</xsl:text>
      </xsl:if>
      
    </xsl:for-each>
    <xsl:text>&nl;</xsl:text>

    <!-- Emit XMLVM-specific class initializer -->
    <xsl:text>void __INIT_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>()&nl;{&nl;</xsl:text>
    <xsl:text>    __CLASS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>.classInitialized = 1;&nl;</xsl:text>
    <xsl:if test="@extends ne ''">
      <xsl:text>    // Initialize base class if necessary&nl;</xsl:text>
      <xsl:text>    if (!__CLASS_</xsl:text>
      <xsl:value-of select="vm:fixname(@extends)"/>
      <xsl:text>.classInitialized) __INIT_</xsl:text>
      <xsl:value-of select="vm:fixname(@extends)"/>
      <xsl:text>();&nl;</xsl:text>
      <xsl:text>    // Copy vtable from base class&nl;</xsl:text>
      <xsl:text>    XMLVM_MEMCPY(__CLASS_</xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>.vtable, __CLASS_</xsl:text>
      <xsl:value-of select="vm:fixname(@extends)"/>
      <xsl:text>.vtable, sizeof(__CLASS_</xsl:text>
      <xsl:value-of select="vm:fixname(@extends)"/>
      <xsl:text>.vtable));&nl;</xsl:text>
    </xsl:if>
    <xsl:text>    // Initialize vtable for this class
    </xsl:text>
    <xsl:for-each select="vm:method[@vtableIndex and not(@isAbstract = 'true')]">
      <xsl:text>__CLASS_</xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>.vtable[</xsl:text>
      <xsl:value-of select="@vtableIndex"/>
      <xsl:text>] = (VTABLE_PTR) &amp;</xsl:text>
      <xsl:choose>
        <xsl:when test="@isNative = 'true'">
          <xsl:text>xmlvm_unimplemented_native_method</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:call-template name="emitMethodName">
            <xsl:with-param name="name" select="@name"/>
            <xsl:with-param name="class-type" select="concat(../@package, '.', ../@name)"/>
          </xsl:call-template>
          <xsl:call-template name="appendSignature"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:text>;&nl;    </xsl:text>
    </xsl:for-each>

    <!-- If there are non-static native methods, call the appropriate init method. -->
    <xsl:if test="vm:method[@isNative = 'true' and not(@isStatic = 'true') and not(@isPrivate = 'true')]">
      <xsl:text>xmlvm_init_native_</xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>();&nl;    </xsl:text>
    </xsl:if>
    
    <xsl:variable name="numImplementedInterfaces" select="count(vm:vtable[@kind='interface-vtable'])"/>
    <xsl:text>// Initialize vtable for implementing interfaces
    __CLASS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>.numImplementedInterfaces = </xsl:text>
    <xsl:value-of select="$numImplementedInterfaces"/>
    <xsl:text>;
    __CLASS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>.implementedInterfaces = (__CLASS_DEFINITION_TEMPLATE* (*)[1]) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_TEMPLATE*) * </xsl:text>
    <xsl:value-of select="$numImplementedInterfaces"/>
    <xsl:text>);</xsl:text>
    <xsl:for-each select="vm:vtable[@kind='interface-vtable']">
      <xsl:variable name="iname" select="vm:fixname(@name)"/>
      <xsl:variable name="idx" select="position() - 1"/>
      <xsl:text>&nl;    __INIT_</xsl:text>
      <xsl:value-of select="$iname"/>
      <xsl:text>(&amp;__CLASS_</xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>.implementedInterfaces[0][</xsl:text>
      <xsl:value-of select="$idx"/>
      <xsl:text>]);</xsl:text>
      <xsl:for-each select="vm:map">
        <xsl:text>&nl;    __CLASS_</xsl:text>
        <xsl:value-of select="$clname"/>
        <xsl:text>.implementedInterfaces[0][</xsl:text>
        <xsl:value-of select="$idx"/>
        <xsl:text>]->vtable[</xsl:text>
        <xsl:value-of select="@vtableIndexInterface"/>
        <xsl:text>] = __CLASS_</xsl:text>
        <xsl:value-of select="$clname"/>
        <xsl:text>.vtable[</xsl:text>
        <xsl:value-of select="@vtableIndexClass"/>
        <xsl:text>];</xsl:text>
      </xsl:for-each>
    </xsl:for-each>
    
    <!-- Initialize static members -->
    <xsl:for-each select="vm:field[@isStatic = 'true']">
      <xsl:if test="not($genWrapper = 'true' and @isPrivate = 'true')">
        <xsl:text>&nl;    _STATIC_</xsl:text>
        <xsl:value-of select="vm:fixname(../@package)"/>
        <xsl:text>_</xsl:text>
        <xsl:value-of select="vm:fixname(../@name)"/>
        <xsl:text>_</xsl:text>
        <xsl:value-of select="vm:fixname(@name)"/>
        <xsl:text> = </xsl:text>
        <xsl:choose>
          <xsl:when test="vm:isObjectRef(@type)">
            <xsl:text>(</xsl:text>
            <xsl:call-template name="emitTrueType">
              <xsl:with-param name="type" select="@type"/>
            </xsl:call-template>
            <xsl:text>) </xsl:text>
            <xsl:choose>
              <xsl:when test="@value">
                <!-- TODO need to create a java.lang.String! -->
                <!-- We assume that @value is always a string -->
                <xsl:text>XMLVMArray_createFromString(</xsl:text>
                <xsl:value-of select="vm:escapeString(@value)"/>
                <xsl:text>)</xsl:text>
              </xsl:when>
              <xsl:otherwise>
                <xsl:text>JAVA_NULL</xsl:text>
              </xsl:otherwise>          
            </xsl:choose>
          </xsl:when>
          <xsl:otherwise>
            <xsl:value-of select="if (@value) then @value else '0'"/>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:text>;</xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:text>&nl;&nl;</xsl:text>
    
    <!-- If there is a Java class initializer, call it. -->
    <xsl:if test="vm:method[@name = '&lt;clinit&gt;']">
      <xsl:text>    </xsl:text>
      <xsl:value-of select="vm:fixname(@package)"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="vm:fixname(@name)"/>
      <xsl:text>___CLINIT_();</xsl:text>
    </xsl:if>
    
    <xsl:if test="$genWrapper = 'true'">
      <xsl:text>&nl;    //XMLVM_BEGIN_WRAPPER[__INIT_</xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>]&nl;</xsl:text>
      <xsl:text>    //XMLVM_END_WRAPPER</xsl:text>
    </xsl:if>

    <xsl:text>&nl;}&nl;&nl;</xsl:text>
    
    <!-- Emit 'new' method -->
    <xsl:text>JAVA_OBJECT __NEW_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>()&nl;{
    if (!__CLASS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>.classInitialized) __INIT_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>();
    </xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>* me = (</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>*) XMLVM_MALLOC(sizeof(</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>));
    me->__class = &amp;__CLASS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>;&nl;</xsl:text>
    
    <!-- Emit initializations for all non-static member fields -->
    <xsl:for-each select="vm:field[not(@isStatic = 'true')]">
      <xsl:if test="not($genWrapper = 'true' and @isPrivate = 'true')">
        <xsl:text>    me-></xsl:text>
        <xsl:value-of select="$clname"/>
        <xsl:text>.</xsl:text>
        <xsl:value-of select="vm:fixname(@name)"/>
        <xsl:text>_ = </xsl:text>
        <xsl:choose>
          <xsl:when test="vm:isObjectRef(@type)">
            <xsl:text>(</xsl:text>
            <xsl:call-template name="emitTrueType">
              <xsl:with-param name="type" select="@type"/>
            </xsl:call-template>
            <xsl:text>) </xsl:text>
            <xsl:text>JAVA_NULL</xsl:text>
          </xsl:when>
          <xsl:otherwise>
            <xsl:text>0</xsl:text>
          </xsl:otherwise>
        </xsl:choose>
        <xsl:text>;&nl;</xsl:text>
      </xsl:if>
    </xsl:for-each>
    <xsl:if test="$genWrapper = 'true'">
      <xsl:text>    //XMLVM_BEGIN_WRAPPER[__NEW_</xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>]&nl;</xsl:text>
      <xsl:text>    //XMLVM_END_WRAPPER&nl;</xsl:text>
    </xsl:if>
    <xsl:text>    return me;&nl;}&nl;&nl;</xsl:text>

    <!-- Emit destructor -->
    <xsl:text>void __DELETE_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>(JAVA_OBJECT me)&nl;{&nl;</xsl:text>
    <xsl:if test="$genWrapper = 'true'">
      <xsl:text>    //XMLVM_BEGIN_WRAPPER[__DELETE_</xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>]&nl;</xsl:text>
      <xsl:text>    //XMLVM_END_WRAPPER&nl;</xsl:text>
    </xsl:if>
    <xsl:if test="vm:method[@name='finalize' and 
                        not(vm:signature/vm:parameter) and 
                        vm:signature/vm:return[@type='void']]">
      <xsl:text>    // Call finalize()&nl;</xsl:text>
      <xsl:text>    (*(void (*)(JAVA_OBJECT)) ((java_lang_Object*) me)->__class->vtable[XMLVM_VTABLE_IDX_java_lang_Object_finalize_java_lang_Object__])(me);&nl;</xsl:text>
    </xsl:if>
	<xsl:text>}&nl;&nl;</xsl:text>

	<!-- Emit getters and setters for all static fields -->
    <xsl:for-each select="vm:field[@isStatic = 'true']">
      <xsl:if test="not($genWrapper = 'true' and @isPrivate = 'true')">

        <!-- Emit getter -->
        <xsl:variable name="field">
          <xsl:value-of select="vm:fixname(../@package)"/>
          <xsl:text>_</xsl:text>
          <xsl:value-of select="vm:fixname(../@name)"/>
          <xsl:text>_</xsl:text>
          <xsl:value-of select="vm:fixname(@name)"/>
        </xsl:variable>
        <xsl:call-template name="emitType">
          <xsl:with-param name="type" select="@type"/>
        </xsl:call-template>
        <xsl:text> </xsl:text>
        <xsl:value-of select="$clname"/>
        <xsl:text>_GET_</xsl:text>
        <xsl:value-of select="vm:fixname(@name)"/>
        <xsl:text>()&nl;{&nl;    if (!__CLASS_</xsl:text>
        <xsl:value-of select="$clname"/>
        <xsl:text>.classInitialized) __INIT_</xsl:text>
        <xsl:value-of select="$clname"/>
        <xsl:text>();&nl;    return </xsl:text>
        <xsl:text>_STATIC_</xsl:text>
        <xsl:value-of select="$field"/>
        <xsl:text>;&nl;}&nl;&nl;</xsl:text>
      
        <!-- Emit setter -->
        <xsl:text>void </xsl:text>
        <xsl:value-of select="$clname"/>
        <xsl:text>_PUT_</xsl:text>
        <xsl:value-of select="vm:fixname(@name)"/>
        <xsl:text>(</xsl:text>
        <xsl:call-template name="emitType">
          <xsl:with-param name="type" select="@type"/>
        </xsl:call-template>
        <xsl:text> v)&nl;{&nl;    if (!__CLASS_</xsl:text>
        <xsl:value-of select="$clname"/>
        <xsl:text>.classInitialized) __INIT_</xsl:text>
        <xsl:value-of select="$clname"/>
        <xsl:text>();&nl;    </xsl:text>
        <xsl:text>_STATIC_</xsl:text>
        <xsl:value-of select="$field"/>
        <xsl:text> = v;&nl;}&nl;&nl;</xsl:text>
      </xsl:if>
    </xsl:for-each>
    
    <xsl:for-each select="vm:method">
      <xsl:if test="vm:shouldGenerateCodeForMethod(.) and not(../.[@isInterface = 'true'] or @isAbstract = 'true')">
        <xsl:if test="@isNative = 'true'">
          <xsl:text>//XMLVM_NATIVE[</xsl:text>
        </xsl:if>
        <xsl:call-template name="emitMethodSignature">
          <xsl:with-param name="forDeclaration" select="0"/>
        </xsl:call-template>
        <xsl:if test="@isNative = 'true'">
          <xsl:text>]</xsl:text>
        </xsl:if>
        <xsl:if test="not(@isNative = 'true') and dex:code">
          <xsl:text>&nl;{&nl;</xsl:text>
          <xsl:if test="@isStatic = 'true'">
            <xsl:text>    if (!__CLASS_</xsl:text>
            <xsl:value-of select="$clname"/>
            <xsl:text>.classInitialized) __INIT_</xsl:text>
            <xsl:value-of select="$clname"/>
            <xsl:text>();&nl;</xsl:text>
          </xsl:if>
          <xsl:choose>
            <xsl:when test="$genWrapper = 'true'">
              <xsl:text>    //XMLVM_BEGIN_WRAPPER[</xsl:text>
              <xsl:call-template name="emitMethodName">
                <xsl:with-param name="name" select="@name"/>
                <xsl:with-param name="class-type" select="$clname"/>
              </xsl:call-template>
              <xsl:call-template name="appendSignature"/>
              <xsl:text>]&nl;</xsl:text>
              <xsl:text>    XMLVM_NOT_IMPLEMENTED();&nl;</xsl:text>
              <xsl:text>    //XMLVM_END_WRAPPER&nl;</xsl:text>
            </xsl:when>
            <xsl:otherwise>
              <xsl:call-template name="initArguments"/>
              <xsl:apply-templates/>
            </xsl:otherwise>
          </xsl:choose>
          <xsl:text>}</xsl:text>
        </xsl:if>
        <xsl:text>&nl;&nl;</xsl:text>
      </xsl:if>
    </xsl:for-each>
</xsl:template>



<xsl:template name="emitInterfaceImplementation">
    <xsl:variable name="cclname" select="concat(@package, '.', @name)"/>
    <xsl:variable name="clname" select="vm:fixname($cclname)"/>
    <xsl:variable name="numBaseInterfaces" select="count(tokenize(@interfaces, ','))"/>
    
    <xsl:text>__CLASS_DEFINITION_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text> __CLASS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>;

</xsl:text>

    <!-- Emit global variable definition for all fields (which must be final and static for interfaces) -->
    <xsl:for-each select="vm:field">
      <xsl:text>static </xsl:text>
      <xsl:call-template name="emitType">
        <xsl:with-param name="type" select="@type"/>
      </xsl:call-template>
      <xsl:text> _STATIC_</xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="vm:fixname(@name)"/>
      <xsl:text>;&nl;</xsl:text>
    </xsl:for-each>
    <xsl:text>&nl;</xsl:text>

    <!-- Emit interface initializers -->
    <xsl:text>void __INIT_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>(__CLASS_DEFINITION_TEMPLATE** interface)&nl;{
    if (!__CLASS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>.classInitialized) {
        __CLASS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>.className = "</xsl:text>
    <xsl:value-of select="$cclname"/>
    <xsl:text>";
        __CLASS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>.extends = (__CLASS_DEFINITION_TEMPLATE*) &amp;__CLASS_</xsl:text>
    <xsl:value-of select="vm:fixname(@extends)"/>
    <xsl:text>;
        __CLASS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>.numInterfaces = </xsl:text>
    <xsl:value-of select="$numBaseInterfaces"/>
    <xsl:text>;</xsl:text>
    <xsl:if test="$numBaseInterfaces gt 0">
      <xsl:for-each select="tokenize(@interfaces, ',')">
        <xsl:text>
        //__CLASS_</xsl:text>
        <xsl:value-of select="$clname"/>
        <xsl:text>.baseInterfaces[</xsl:text>
        <xsl:value-of select="position() - 1"/>
        <xsl:text>] = &amp;__INTERFACE_</xsl:text>
        <xsl:value-of select="vm:fixname(.)"/>
        <xsl:text>;</xsl:text>
      </xsl:for-each>
    </xsl:if>
    <!-- Initialize static members -->
    <xsl:for-each select="vm:field">
      <xsl:text>&nl;        _STATIC_</xsl:text>
      <xsl:value-of select="vm:fixname(../@package)"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="vm:fixname(../@name)"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="vm:fixname(@name)"/>
      <xsl:text> = </xsl:text>
      <xsl:choose>
        <xsl:when test="vm:isObjectRef(@type)">
          <xsl:text>(</xsl:text>
          <xsl:call-template name="emitTrueType">
            <xsl:with-param name="type" select="@type"/>
          </xsl:call-template>
          <xsl:text>) </xsl:text>
          <xsl:choose>
            <xsl:when test="@value">
              <!-- We assume that @value is always a string -->
              <xsl:text>XMLVMArray_createFromString(</xsl:text>
              <xsl:value-of select="vm:escapeString(@value)"/>
              <xsl:text>)</xsl:text>
            </xsl:when>
            <xsl:otherwise>
              <xsl:text>JAVA_NULL</xsl:text>
            </xsl:otherwise>          
          </xsl:choose>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="if (@value) then @value else '0'"/>
        </xsl:otherwise>
      </xsl:choose>
      <xsl:text>;</xsl:text>
    </xsl:for-each>
    
    <xsl:text>&nl;        __CLASS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>.classInitialized = 1;
    }
    if (interface != JAVA_NULL) {
        *interface = (__CLASS_DEFINITION_TEMPLATE*) XMLVM_MALLOC(sizeof(__CLASS_DEFINITION_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>));
        XMLVM_MEMCPY(*interface, &amp;__CLASS_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>, sizeof(__CLASS_DEFINITION_</xsl:text>
    <xsl:value-of select="$clname"/>
    <xsl:text>));</xsl:text>

    <!-- If there is a Java class initializer, call it. -->
    <xsl:if test="vm:method[@name = '&lt;clinit&gt;']">
      <xsl:text>&nl;        </xsl:text>
      <xsl:value-of select="vm:fixname(@package)"/>
      <xsl:text>_</xsl:text>
      <xsl:value-of select="vm:fixname(@name)"/>
      <xsl:text>___CLINIT_();</xsl:text>
    </xsl:if>
    
    <xsl:text>&nl;    }&nl;}&nl;&nl;</xsl:text>

    <!-- Emit code for class initializer if there is one -->
    <xsl:for-each select="vm:method[@name = '&lt;clinit&gt;']">
      <xsl:call-template name="emitMethodSignature">
        <xsl:with-param name="forDeclaration" select="0"/>
      </xsl:call-template>
      <xsl:text>&nl;</xsl:text>
      <xsl:text>{&nl;</xsl:text>
      <xsl:call-template name="initArguments"/>
      <xsl:apply-templates/>
      <xsl:text>}&nl;&nl;</xsl:text>
    </xsl:for-each>

	<!-- Emit getters and setters for all fields -->
    <xsl:for-each select="vm:field">
      <!-- Emit getter -->
      <xsl:variable name="field">
        <xsl:value-of select="vm:fixname(../@package)"/>
        <xsl:text>_</xsl:text>
        <xsl:value-of select="vm:fixname(../@name)"/>
        <xsl:text>_</xsl:text>
        <xsl:value-of select="vm:fixname(@name)"/>
      </xsl:variable>
      <xsl:call-template name="emitType">
        <xsl:with-param name="type" select="@type"/>
      </xsl:call-template>
      <xsl:text> </xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>_GET_</xsl:text>
      <xsl:value-of select="vm:fixname(@name)"/>
      <xsl:text>()&nl;{&nl;    if (!__CLASS_</xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>.classInitialized) __INIT_</xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>(JAVA_NULL);&nl;    return </xsl:text>
      <xsl:text>_STATIC_</xsl:text>
      <xsl:value-of select="$field"/>
      <xsl:text>;&nl;}&nl;&nl;</xsl:text>

      <!-- Emit setter -->
      <xsl:text>void </xsl:text>
      <xsl:value-of select="$clname"/>
      <xsl:text>_PUT_</xsl:text>
      <xsl:value-of select="vm:fixname(@name)"/>
      <xsl:text>(</xsl:text>
      <xsl:call-template name="emitType">
        <xsl:with-param name="type" select="@type"/>
      </xsl:call-template>
      <xsl:text> v)&nl;{&nl;    </xsl:text>
      <xsl:text>_STATIC_</xsl:text>
      <xsl:value-of select="$field"/>
      <xsl:text> = v;&nl;}&nl;&nl;</xsl:text>

    </xsl:for-each>
    
</xsl:template>


<xsl:template match="vm:signature">
  <!-- Do nothing -->
</xsl:template>


<xsl:template match="jvm:var">
  <!-- Do nothing -->
</xsl:template>


<xsl:template match="jvm:label">
  <xsl:text>    label</xsl:text>
  <xsl:value-of select="@id"/>
  <xsl:text>:;
</xsl:text>
</xsl:template>



<xsl:template name="emitTrueType">
  <xsl:param name="type"/>
  <xsl:choose>
    <xsl:when test="$type = 'void'">
      <xsl:text>void</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'char'">
      <xsl:text>JAVA_CHAR</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'byte'">
      <xsl:text>JAVA_BYTE</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'short'">
      <xsl:text>JAVA_SHORT</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'int'">
      <xsl:text>JAVA_INT</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'long'">
      <xsl:text>JAVA_LONG</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'float'">
      <xsl:text>JAVA_FLOAT</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'double'">
      <xsl:text>JAVA_DOUBLE</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'boolean'">
      <xsl:text>JAVA_BOOLEAN</xsl:text>
    </xsl:when>
    <xsl:when test="ends-with($type, '[]')">
      <xsl:text>XMLVMArray*</xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="vm:fixname($type)"/>
      <xsl:text>*</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<!-- The difference between emitType and emitTrueType is that the latter
     emits the proper type for reference types while the former emits JAVA_OBJECT -->
<xsl:template name="emitType">
  <xsl:param name="type"/>
  <xsl:choose>
    <xsl:when test="$type = 'void'">
      <xsl:text>void</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'char'">
      <xsl:text>JAVA_CHAR</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'byte'">
      <xsl:text>JAVA_BYTE</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'short'">
      <xsl:text>JAVA_SHORT</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'int'">
      <xsl:text>JAVA_INT</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'long'">
      <xsl:text>JAVA_LONG</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'float'">
      <xsl:text>JAVA_FLOAT</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'double'">
      <xsl:text>JAVA_DOUBLE</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'boolean'">
      <xsl:text>JAVA_BOOLEAN</xsl:text>
    </xsl:when>
    <xsl:when test="ends-with($type, '[]')">
      <xsl:text>JAVA_OBJECT</xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>JAVA_OBJECT</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<xsl:template name="emitMethodName">
  <xsl:param name="name"/>
  <xsl:param name="class-type"/>

  <xsl:value-of select="vm:fixname($class-type)"/>
  <xsl:text>_</xsl:text>
  <xsl:choose>
    <xsl:when test="$name = '&lt;init&gt;'">
      <xsl:text>__INIT_</xsl:text>
    </xsl:when>
    <xsl:when test="$name = '&lt;clinit&gt;'">
      <xsl:text>__CLINIT_</xsl:text>
    </xsl:when>
    <xsl:when test="$name = 'finalize'">
      <xsl:text>finalize_</xsl:text>
      <xsl:value-of select="vm:fixname($class-type)"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="$name"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<xsl:template name="emitMethodSignature">
  <xsl:param name="forDeclaration"/>
  
  <xsl:call-template name="emitType">
    <xsl:with-param name="type" select="vm:signature/vm:return/@type"/>
  </xsl:call-template>
  <xsl:text> </xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="name" select="@name"/>
    <xsl:with-param name="class-type" select="concat(../@package, '.', ../@name)"/>
  </xsl:call-template>
  <xsl:if test="@name != '&lt;clinit&gt;'">
    <xsl:call-template name="appendSignature"/>
    <xsl:text>(</xsl:text>
    <xsl:if test="not(@isStatic = 'true')">
      <xsl:text>JAVA_OBJECT me</xsl:text>
    </xsl:if>
    <xsl:for-each select="vm:signature/vm:parameter">
      <xsl:if test="position() != 1 or not(../../@isStatic = 'true')">
        <xsl:text>, </xsl:text>
      </xsl:if>
      <xsl:call-template name="emitType">
        <xsl:with-param name="type" select="@type"/>
      </xsl:call-template>
      <xsl:text> n</xsl:text>
      <xsl:value-of select="position()"/>
    </xsl:for-each>
    <xsl:text>)</xsl:text>
  </xsl:if>
  <xsl:if test="@name = '&lt;clinit&gt;'">
    <xsl:text>()</xsl:text>
  </xsl:if>
</xsl:template>


<xsl:template name="appendSignature">
  <xsl:text>__</xsl:text>
  <xsl:choose>
    <xsl:when test="count(vm:signature/vm:parameter) != 0">
      <xsl:for-each select="vm:signature/vm:parameter">
        <xsl:text>_</xsl:text>
        <xsl:value-of select="vm:fixname(@type)"/>
      </xsl:for-each>
    </xsl:when>
  </xsl:choose>
</xsl:template>

    
<xsl:template name="emitTypedAccess">
  <xsl:param name="type"/>
  
  <xsl:text>.</xsl:text>
  <xsl:choose>
    <xsl:when test="$type = 'boolean' or $type = 'byte' or $type = 'char' or $type = 'short' or $type = 'int'">
      <xsl:text>i</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'float'">
      <xsl:text>f</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'double'">
      <xsl:text>d</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'long'">
      <xsl:text>l</xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>o</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<xsl:template name="emitTypedArrayAccess">
  <xsl:param name="type"/>
  
  <xsl:text>.</xsl:text>
  <xsl:choose>
    <xsl:when test="$type = 'boolean[]' or $type = 'byte[]'">
      <xsl:text>b</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'char[]'">
      <xsl:text>c</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'short[]'">
      <xsl:text>s</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'int[]'">
      <xsl:text>i</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'float[]'">
      <xsl:text>f</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'double[]'">
      <xsl:text>d</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'long[]'">
      <xsl:text>l</xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>o</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<!-- This function determines, if code for a method should be emitted. No code is emitted
     if this method is a duplicate (see below) or if wrappers are to be generated and this
     is a private method. -->
<xsl:function name="vm:shouldGenerateCodeForMethod" as="xs:boolean">
  <xsl:param name="method" as="node()"/>
  
  <xsl:choose>
    <xsl:when test="vm:isDuplicateMethod($method)">
      <xsl:value-of select="false()"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="not($genWrapper = 'true' and $method/@isPrivate = 'true')"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:function>


<!--  javac will sometimes generate two methods that only differ in their return type.
      This can happen e.g. with type erasures. Function vm:isDuplicateMethod will determine
      if the given method is a duplicate that is not needed when generating Objective-C (in fact,
      Objective-C does not permit two methods that only differ in their return type).
      A method is a duplicate if it is (1) synthetic, (2) a method with the same name exists
      in the class, and (3) signatures only differ in their return types.  -->
<xsl:function name="vm:isDuplicateMethod" as="xs:boolean">
  <xsl:param name="method" as="node()"/>

  <xsl:choose>
    <xsl:when test="not($method/@isSynthetic = 'true')">
      <xsl:value-of select="false()"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:variable name="name" select="$method/@name"/>
      <xsl:variable name="methodsWithSameName" select="$method/../vm:method[@name = $name]"/>
      <xsl:variable name="duplicateMethods">
        <xsl:for-each select="$methodsWithSameName">
          <xsl:if test="deep-equal($method/vm:signature/vm:parameter, ./vm:signature/vm:parameter)">
            <xsl:copy-of select="."/>
          </xsl:if>
        </xsl:for-each>
      </xsl:variable>
      <xsl:value-of select="count($duplicateMethods/vm:method) gt 1"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:function>


<xsl:function name="vm:isObjectRef" as="xs:boolean">
  <xsl:param name="type" as="xs:string"/>
  
  <xsl:value-of select="not($type='byte' or $type='short' or $type='int' or $type='float' or $type='long' or $type='double' or
                            $type='char' or $type='boolean' or $type='void')"/>
</xsl:function>


<xsl:function name="vm:typeID" as="xs:integer">
  <xsl:param name="type" as="xs:string"/>
  
  <xsl:choose>
    <xsl:when test="$type='boolean'">
      <xsl:value-of select="1"/>
    </xsl:when>
    <xsl:when test="$type='char'">
      <xsl:value-of select="2"/>
    </xsl:when>
    <xsl:when test="$type='byte'">
      <xsl:value-of select="3"/>
    </xsl:when>
    <xsl:when test="$type='short'">
      <xsl:value-of select="4"/>
    </xsl:when>
    <xsl:when test="$type='int'">
      <xsl:value-of select="5"/>
    </xsl:when>
    <xsl:when test="$type='float'">
      <xsl:value-of select="6"/>
    </xsl:when>
    <xsl:when test="$type='double'">
      <xsl:value-of select="7"/>
    </xsl:when>
    <xsl:when test="$type='long'">
      <xsl:value-of select="8"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="0"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:function>


<xsl:function name="vm:fixname">
  <xsl:param  name="a"/>
  <xsl:value-of  select="replace(replace(replace($a,'\$', '_'),'\.','_'), '\[\]', '_ARRAYTYPE')"/>
</xsl:function>
  

<xsl:function name="vm:escapeString">
  <xsl:param  name="string"/>
  <!-- Escape all \\ \t(011) \n(012) \r(015) \f(014) \b(010) \" -->
  <!-- Single quotes don't need to be escaped. -->
  <!-- PROBLEM! Because backslashes aren't already escaped in @value, there
       is no way to differ both Java Strings of "\\011" and "\t". So they'll
       both be translated to "\t". That is also true for the other escaped characters. -->
  <xsl:text>"</xsl:text>
  <xsl:value-of select="replace(replace(replace(replace(replace(replace(replace($string,'\\','\\\\'),
                           '\\\\011','\\t'),'\\\\012','\\n'),'\\\\015','\\r'),'\\\\014','\\f'),'\\\\010','\\b'),
                           '&quot;','\\&quot;')"/>
  <xsl:text>"</xsl:text>
</xsl:function>


<xsl:function name="vm:cast">
  <xsl:param name="type"/>
  <xsl:choose>
    <xsl:when test="vm:isObjectRef($type)">
      <xsl:text>dynamic_cast&lt;</xsl:text>
      <xsl:call-template name="emitTrueType">
        <xsl:with-param name="type" select="$type"/>
      </xsl:call-template>
      <xsl:text>&gt;</xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>(</xsl:text>
      <xsl:call-template name="emitTrueType">
        <xsl:with-param name="type" select="$type"/>
      </xsl:call-template>
      <xsl:text>)</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:function>


<xsl:function name="vm:cast-register">
  <xsl:param name="type"/>
  <xsl:param name="reg"/>
  <xsl:choose>
    <xsl:when test="vm:isObjectRef($type)">
      <xsl:text>((</xsl:text>
      <xsl:call-template name="emitTrueType">
        <xsl:with-param name="type" select="$type"/>
      </xsl:call-template>
      <xsl:text>) _r</xsl:text>
      <xsl:value-of select="$reg"/>
      <xsl:text>.o)</xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>((</xsl:text>
      <xsl:call-template name="emitTrueType">
        <xsl:with-param name="type" select="$type"/>
      </xsl:call-template>
      <xsl:text>) _r</xsl:text>
      <xsl:value-of select="$reg"/>
      <xsl:call-template name="emitTypedAccess">
        <xsl:with-param name="type" select="$type"/>
      </xsl:call-template>
      <xsl:text>)</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:function>


<xsl:template name="initArguments">
  <xsl:variable name="numRegs" select="dex:code/@register-size" as="xs:integer"/>
  <xsl:variable name="numArgs" select="count(vm:signature/vm:parameter)" as="xs:integer"/>
  <xsl:for-each select="1 to $numRegs">
    <xsl:text>    XMLVMElem _r</xsl:text>
    <xsl:value-of select="position() - 1"/>
    <xsl:text>;&nl;</xsl:text>
  </xsl:for-each>
  <xsl:if test="not(@isStatic = 'true')">
    <!-- Initialize 'this' parameter -->
    <xsl:text>    _r</xsl:text>
    <xsl:value-of select="$numRegs - ($numArgs + 1)"/>
    <xsl:text>.o = me;&nl;</xsl:text>
  </xsl:if>
  <xsl:for-each select="vm:signature/vm:parameter">
    <xsl:text>    _r</xsl:text>
    <xsl:value-of select="$numRegs - ($numArgs - position()) - 1"/>
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="@type"/>
    </xsl:call-template>
    <xsl:text> = n</xsl:text>
    <xsl:value-of select="position()"/>
    <xsl:text>;&nl;</xsl:text>
  </xsl:for-each>
</xsl:template>


<xsl:template match="vm:annotations">
  <!-- Ignore annotations -->
</xsl:template>


<!-- ********************************************************************************** -->
<!-- ********************************************************************************** -->
<!-- ********************************************************************************** -->
<!-- ********************************************************************************** -->
<!-- ********************************************************************************** -->
<!-- ********************************************************************************** -->
<!-- DEX Templates -->
<!-- http://www.netmite.com/android/mydroid/dalvik/docs/dalvik-bytecode.html -->
<!-- http://pallergabor.uw.hu/androidblog/dalvik_opcodes.html -->


<xsl:template match="dex:code">
  <xsl:apply-templates/>
</xsl:template>

<xsl:template match="dex:var">
  <!-- Do nothing -->
</xsl:template>

<xsl:template match="vm:source-position">
  <!-- TODO -->
</xsl:template>


<xsl:template match="dex:nop">
</xsl:template>


<xsl:template match="dex:invoke-static|dex:invoke-static-range">
  <xsl:variable name="returnTypedAccess">
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="dex:parameters/dex:return/@type"/>
    </xsl:call-template>
  </xsl:variable>
  <xsl:text>    </xsl:text>
  <xsl:if test="dex:parameters/dex:return/@type != 'void' and dex:move-result">
    <xsl:text>_r</xsl:text>
    <xsl:value-of select="dex:move-result/@vx"/>
    <xsl:value-of select="$returnTypedAccess"/>
    <xsl:text> = </xsl:text>
  </xsl:if>
  <xsl:value-of select="vm:fixname(@class-type)"/>
  <xsl:text>_</xsl:text>
  <xsl:value-of select="@method"/>
  <xsl:call-template name="appendDexSignature"/>
  <xsl:text>(</xsl:text>
  <xsl:for-each select="dex:parameters/dex:parameter">
    <xsl:if test="position() != 1">
      <xsl:text>, </xsl:text>
    </xsl:if>
    <xsl:text>_r</xsl:text>
    <xsl:value-of select="@register"/>
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="@type"/>
    </xsl:call-template>
  </xsl:for-each>
  <xsl:text>);&nl;</xsl:text>
</xsl:template>


<xsl:template match="dex:invoke-virtual|dex:invoke-virtual-range">
  <xsl:variable name="vtable-index" select="if (@vtable-index) then @vtable-index else -1"/>
  <xsl:if test="$vtable-index = -1">
    <xsl:text>XMLVM_ERROR("Missing @vtable-index");&nl;</xsl:text>
  </xsl:if>
  <xsl:text>    //</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="name" select="@method"/>
    <xsl:with-param name="class-type" select="@class-type"/>
  </xsl:call-template>
  <xsl:call-template name="appendDexSignature"/>
  <xsl:text>[</xsl:text>
  <xsl:value-of select="$vtable-index"/>
  <xsl:text>]&nl;</xsl:text>

  <xsl:variable name="returnTypedAccess">
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="dex:parameters/dex:return/@type"/>
    </xsl:call-template>
  </xsl:variable>
  <xsl:text>    </xsl:text>
  <xsl:if test="dex:parameters/dex:return/@type != 'void' and dex:move-result">
    <xsl:text>_r</xsl:text>
    <xsl:value-of select="dex:move-result/@vx"/>
    <xsl:value-of select="$returnTypedAccess"/>
    <xsl:text> = </xsl:text>
  </xsl:if>
  
  <xsl:text>(*(</xsl:text>
  <xsl:call-template name="emitType">
    <xsl:with-param name="type" select="dex:parameters/dex:return/@type"/>
  </xsl:call-template>
  <xsl:text> (*)(JAVA_OBJECT</xsl:text>
  <xsl:for-each select="dex:parameters/dex:parameter">
    <xsl:text>, </xsl:text>
    <xsl:call-template name="emitType">
      <xsl:with-param name="type" select="@type"/>
    </xsl:call-template>
  </xsl:for-each>
  <xsl:text>)) ((</xsl:text>
  <xsl:call-template name="emitTrueType">
    <xsl:with-param name="type" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>) _r</xsl:text>
  <xsl:value-of select="@register"/>
  <xsl:text>.o)->__class->vtable[</xsl:text>
  <xsl:value-of select="$vtable-index"/>
  <xsl:text>])</xsl:text>
  <xsl:text>(_r</xsl:text>
  <xsl:value-of select="@register"/>
  <xsl:text>.o</xsl:text>
  <xsl:for-each select="dex:parameters/dex:parameter">
    <xsl:text>, </xsl:text>
    <xsl:text>_r</xsl:text>
    <xsl:value-of select="@register"/>
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="@type"/>
    </xsl:call-template>
    <xsl:text></xsl:text>
  </xsl:for-each>
  <xsl:text>);&nl;</xsl:text>
</xsl:template>


<xsl:template match="dex:invoke-direct|dex:invoke-direct-range|dex:invoke-super|dex:invoke-super-range">
  <xsl:variable name="returnTypedAccess">
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="dex:parameters/dex:return/@type"/>
    </xsl:call-template>
  </xsl:variable>
  <xsl:text>    </xsl:text>
  <xsl:if test="dex:parameters/dex:return/@type != 'void' and dex:move-result">
    <xsl:text>_r</xsl:text>
    <xsl:value-of select="dex:move-result/@vx"/>
    <xsl:value-of select="$returnTypedAccess"/>
    <xsl:text> = </xsl:text>
  </xsl:if>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="name" select="@method"/>
    <xsl:with-param name="class-type" select="@class-type"/>
  </xsl:call-template>
  <xsl:call-template name="appendDexSignature"/>
  <xsl:text>(_r</xsl:text>
  <xsl:value-of select="@register"/>
  <xsl:text>.o</xsl:text>
  <xsl:for-each select="dex:parameters/dex:parameter">
    <xsl:text>, </xsl:text>
    <xsl:text>_r</xsl:text>
    <xsl:value-of select="@register"/>
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="@type"/>
    </xsl:call-template>
    <xsl:text></xsl:text>
  </xsl:for-each>
  <xsl:text>);&nl;</xsl:text>
</xsl:template>


<xsl:template match="dex:invoke-interface|dex:invoke-interface-range">
  <xsl:variable name="vtable-index" select="if (@vtable-index) then @vtable-index else -1"/>
  <xsl:if test="$vtable-index = -1">
    <xsl:text>XMLVM_ERROR("Missing @vtable-index");&nl;</xsl:text>
  </xsl:if>
  <xsl:text>    //</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="name" select="@method"/>
    <xsl:with-param name="class-type" select="@class-type"/>
  </xsl:call-template>
  <xsl:call-template name="appendDexSignature"/>
  <xsl:text>[</xsl:text>
  <xsl:value-of select="$vtable-index"/>
  <xsl:text>]&nl;</xsl:text>

  <xsl:variable name="returnTypedAccess">
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="dex:parameters/dex:return/@type"/>
    </xsl:call-template>
  </xsl:variable>
  <xsl:text>    </xsl:text>
  <xsl:if test="dex:parameters/dex:return/@type != 'void' and dex:move-result">
    <xsl:text>_r</xsl:text>
    <xsl:value-of select="dex:move-result/@vx"/>
    <xsl:value-of select="$returnTypedAccess"/>
    <xsl:text> = </xsl:text>
  </xsl:if>

  <xsl:text>(*(</xsl:text>
  <xsl:call-template name="emitType">
    <xsl:with-param name="type" select="dex:parameters/dex:return/@type"/>
  </xsl:call-template>
  <xsl:text> (*)(JAVA_OBJECT</xsl:text>
  <xsl:for-each select="dex:parameters/dex:parameter">
    <xsl:text>, </xsl:text>
    <xsl:call-template name="emitType">
      <xsl:with-param name="type" select="@type"/>
    </xsl:call-template>
  </xsl:for-each>
  <xsl:text>)) XMLVM_LOOKUP_INTERFACE_METHOD(</xsl:text>
  <xsl:text>_r</xsl:text>
  <xsl:value-of select="@register"/>
  <xsl:text>.o, "</xsl:text>
  <xsl:value-of select="@class-type"/>
  <xsl:text>", </xsl:text>
  <xsl:value-of select="$vtable-index"/>
  <xsl:text>))</xsl:text>
  <xsl:text>(_r</xsl:text>
  <xsl:value-of select="@register"/>
  <xsl:text>.o</xsl:text>
  <xsl:for-each select="dex:parameters/dex:parameter">
    <xsl:text>, </xsl:text>
    <xsl:text>_r</xsl:text>
    <xsl:value-of select="@register"/>
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="@type"/>
    </xsl:call-template>
    <xsl:text></xsl:text>
  </xsl:for-each>
  <xsl:text>);&nl;</xsl:text>
</xsl:template>


<xsl:template match="dex:monitor-enter">
  <!-- TODO we can't map this to @synchronized {} because DEX may
       generate multiple monitor-exit for one monitor-enter -->
</xsl:template>


<xsl:template match="dex:monitor-exit">
  <!-- TODO we can't map this to @synchronized {} because DEX may
       generate multiple monitor-exit for one monitor-enter -->
</xsl:template>


<xsl:template match="dex:try-catch">
  <xsl:variable name="id" select="generate-id(.)"/>
  <xsl:text>    XMLVM_JMP_BUF local_env_</xsl:text>
  <xsl:value-of select="$id"/>
  <xsl:text>;&nl;</xsl:text>
  <xsl:text>    XMLVM_MEMCPY(local_env_</xsl:text>
  <xsl:value-of select="$id"/>
  <xsl:text>, xmlvm_exception_env, sizeof(XMLVM_JMP_BUF));&nl;</xsl:text>
  <xsl:text>    if (XMLVM_SETJMP(xmlvm_exception_env)) {&nl;</xsl:text>
  <xsl:text>        XMLVM_MEMCPY(xmlvm_exception_env, local_env_</xsl:text>
  <xsl:value-of select="$id"/>
  <xsl:text>, sizeof(XMLVM_JMP_BUF));&nl;</xsl:text>
  <xsl:for-each select="dex:catch">
    <xsl:text>        if (XMLVM_ISA(xmlvm_exception, &amp;__CLASS_</xsl:text>
    <xsl:value-of select="vm:fixname(@exception-type)"/>
    <xsl:text>)) goto label</xsl:text>
    <xsl:value-of select="@target"/>
    <xsl:text>;&nl;</xsl:text>
  </xsl:for-each>
  <xsl:text>        XMLVM_LONGJMP(xmlvm_exception_env);&nl;</xsl:text>
  <xsl:text>    }&nl;</xsl:text>
  <xsl:text>    else {&nl;</xsl:text>
  <xsl:apply-templates/>
  <xsl:text>    }&nl;</xsl:text>
</xsl:template>


<xsl:template match="dex:try">
  <xsl:text>    // Begin try&nl;</xsl:text>
  <xsl:apply-templates/>
  <xsl:text>    // End try&nl;</xsl:text>
</xsl:template>

<xsl:template match="dex:catch">
  <!-- Do nothing -->
</xsl:template>



<xsl:template match="dex:catches">
  <!-- do nothing -->
</xsl:template>


<xsl:template match="dex:throw">
  <xsl:text>    xmlvm_exception = _r</xsl:text> <xsl:value-of select="@vx"/>.o<xsl:text>;&nl;</xsl:text>
  <xsl:text>    XMLVM_LONGJMP(xmlvm_exception_env);&nl;</xsl:text>
</xsl:template>


<xsl:template match="dex:move-exception">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.o = xmlvm_exception;
</xsl:text>
</xsl:template>


<xsl:template match="dex:add-int|dex:add-int-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i + _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.i;
</xsl:text>
</xsl:template>

  
<xsl:template match="dex:sub-int|dex:sub-int-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i - _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.i;
</xsl:text>
</xsl:template>

  
<xsl:template match="dex:mul-int|dex:mul-int-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i * _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.i;
</xsl:text>
</xsl:template>

  
<xsl:template match="dex:div-int|dex:div-int-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i / _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.i;
</xsl:text>
</xsl:template>

  
<xsl:template match="dex:rem-int|dex:rem-int-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i % _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.i;
</xsl:text>
</xsl:template>

  
<xsl:template match="dex:add-float|dex:add-float-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.f = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.f + _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.f;
</xsl:text>
</xsl:template>


<xsl:template match="dex:sub-float|dex:sub-float-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.f = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.f - _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.f;
</xsl:text>
</xsl:template>


<xsl:template match="dex:div-float|dex:div-float-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.f = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.f / _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.f;
</xsl:text>
</xsl:template>


<xsl:template match="dex:mul-float|dex:mul-float-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.f = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.f * _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.f;
</xsl:text>
</xsl:template>


<xsl:template match="dex:add-double|dex:add-double-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.d = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.d + _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.d;
</xsl:text>
</xsl:template>


<xsl:template match="dex:sub-double|dex:sub-double-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.d = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.d - _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.d;
</xsl:text>
</xsl:template>


<xsl:template match="dex:div-double|dex:div-double-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.d = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.d / _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.d;
</xsl:text>
</xsl:template>


<xsl:template match="dex:add-long|dex:add-long-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l + _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.l;
</xsl:text>
</xsl:template>


<xsl:template match="dex:sub-long|dex:sub-long-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l - _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.l;
</xsl:text>
</xsl:template>


<xsl:template match="dex:mul-long|dex:mul-long-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l * _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.l;
</xsl:text>
</xsl:template>

  
<xsl:template match="dex:div-long|dex:div-long-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l / _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.l;
</xsl:text>
</xsl:template>


<xsl:template match="dex:rem-long|dex:rem-long-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l % _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.l;
</xsl:text>
</xsl:template>

  
<xsl:template match="dex:and-int|dex:and-int-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i &amp; _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.i;
</xsl:text>
</xsl:template>


<xsl:template match="dex:and-long|dex:and-long-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l &amp; _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.l;
</xsl:text>
</xsl:template>


<xsl:template match="dex:shl-int|dex:shl-int-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i &lt;&lt; _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.i;
</xsl:text>
</xsl:template>


<xsl:template match="dex:shl-long|dex:shl-long-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l &lt;&lt; (0x3f &amp; _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.l);
</xsl:text>
</xsl:template>


<xsl:template match="dex:mul-double|dex:mul-double-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.d = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.d * _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.d;
</xsl:text>
</xsl:template>


<xsl:template match="dex:and-int-lit8|dex:and-int-lit16">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i &amp; </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:shl-int-lit8|dex:shl-int-lit16">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i &lt;&lt; </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:shr-int-lit8|dex:shr-int-lit16">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i &gt;&gt; </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:shr-int|dex:shr-int-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i &gt;&gt; (0x1f &amp; _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.i);
</xsl:text>
</xsl:template>


<xsl:template match="dex:shr-long|dex:shr-long-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l &gt;&gt; (0x3f &amp; _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.l);
</xsl:text>
</xsl:template>


<xsl:template match="dex:ushr-int-lit8|dex:ushr-int-lit16">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i &gt;&gt; (0x1f &amp; </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>);
</xsl:text>
</xsl:template>


<xsl:template match="dex:ushr-int|dex:ushr-int-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = ((unsigned int) _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i) &gt;&gt; (0x1f &amp; ((unsigned int) _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.i));
</xsl:text>
</xsl:template>


<xsl:template match="dex:ushr-long|dex:ushr-long-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = ((unsigned long) _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l) &gt;&gt; (0x3f &amp; ((unsigned long) _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.l));
</xsl:text>
</xsl:template>


<xsl:template match="dex:or-int-lit8|dex:or-int-lit16">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i | </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:xor-int-lit8|dex:xor-int-lit16">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i ^ </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:xor-int|dex:xor-int-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i ^ _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.i;
</xsl:text>
</xsl:template>

  
<xsl:template match="dex:xor-long|dex:xor-long-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l ^ _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.l;
</xsl:text>
</xsl:template>

  
<xsl:template match="dex:or-int|dex:or-int-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i | _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.i;
</xsl:text>
</xsl:template>

  
<xsl:template match="dex:or-long|dex:or-long-2addr">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l | _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.l;
</xsl:text>
</xsl:template>

  
<xsl:template match="dex:return-void">
  <xsl:text>    return;&nl;</xsl:text>
</xsl:template>


<xsl:template match="dex:return|dex:return-wide|dex:return-object">
  <xsl:variable name="return-type" select="ancestor::vm:method/vm:signature/vm:return/@type" />
  <xsl:text>    return </xsl:text>
  <xsl:value-of select="vm:cast-register($return-type, @vx)"/>
  <xsl:text>;&nl;</xsl:text>
</xsl:template>


<xsl:template match="dex:new-instance">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>.o = __NEW_</xsl:text>
  <xsl:value-of select="vm:fixname(@value)" />
  <xsl:text>();
</xsl:text>
</xsl:template>


<xsl:template match="dex:iget|dex:iget-wide|dex:iget-boolean|dex:iget-byte|dex:iget-char|dex:iget-short">
  <xsl:variable name="m">
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="@member-type"/>
    </xsl:call-template>
  </xsl:variable>
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:value-of select="$m"/>
  <xsl:text> = </xsl:text>
  <xsl:value-of select="vm:cast-register(@class-type, @vy)"/>
  <xsl:text>-></xsl:text>
  <xsl:value-of select="vm:fixname(@class-type)"/>
  <xsl:text>.</xsl:text>
  <xsl:value-of select="vm:fixname(@member-name)"/>
  <xsl:text>_;
</xsl:text>
</xsl:template>


<xsl:template match="dex:iget-object">
  <xsl:variable name="m">
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="@member-type" />
    </xsl:call-template>
  </xsl:variable>
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:value-of select="$m" />
  <xsl:text> = </xsl:text>
  <xsl:value-of select="vm:cast-register(@class-type, @vy)"/>
  <xsl:text>-></xsl:text>
  <xsl:value-of select="vm:fixname(@class-type)" />
  <xsl:text>.</xsl:text>
  <xsl:value-of select="vm:fixname(@member-name)" />
  <xsl:text>_;
</xsl:text>
</xsl:template>


<xsl:template match="dex:iput|dex:iput-wide|dex:iput-boolean|dex:iput-byte|dex:iput-char|dex:iput-short">
  <xsl:variable name="m">
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="@member-type"/>
    </xsl:call-template>
  </xsl:variable>
  <xsl:text>    </xsl:text>
  <xsl:value-of select="vm:cast-register(@class-type, @vy)"/>
  <xsl:text>-></xsl:text>
  <xsl:value-of select="vm:fixname(@class-type)"/>
  <xsl:text>.</xsl:text>
  <xsl:value-of select="vm:fixname(@member-name)"/>
  <xsl:text>_ = </xsl:text>
  <xsl:text> _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:value-of select="$m"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="vm:comment">
  <xsl:text>    //INFO: </xsl:text>
    <xsl:value-of select="@text" />
  <xsl:text>
  </xsl:text>
</xsl:template>


<xsl:template match="dex:iput-object">
  <xsl:text>    </xsl:text>
  <xsl:value-of select="vm:cast-register(@class-type, @vy)"/>
  <xsl:text>-></xsl:text>
  <xsl:value-of select="vm:fixname(@class-type)" />
  <xsl:text>.</xsl:text>
  <xsl:value-of select="vm:fixname(@member-name)" />
  <xsl:text>_ = </xsl:text>
  <xsl:value-of select="vm:cast-register(@member-type, @vx)"/>
  <xsl:text>;
</xsl:text>
</xsl:template>



<xsl:template match="dex:sget|dex:sget-wide|dex:sget-boolean|dex:sget-char|dex:sget-short|dex:sget-object">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@member-type"/>
  </xsl:call-template>
  <xsl:text> = </xsl:text>
  <xsl:value-of select="vm:fixname(@class-type)"/>
  <xsl:text>_GET_</xsl:text>
  <xsl:value-of select="vm:fixname(@member-name)"/>
  <xsl:text>();
</xsl:text>
</xsl:template>


<xsl:template match="dex:sput|dex:sput-wide|dex:sput-boolean|dex:sput-char|dex:sput-short|dex:sput-object">
  <xsl:text>    </xsl:text>
  <xsl:value-of select="vm:fixname(@class-type)"/>
  <xsl:text>_PUT_</xsl:text>
  <xsl:value-of select="vm:fixname(@member-name)"/>
  <xsl:text>(</xsl:text>
  <xsl:value-of select="vm:cast-register(@member-type, @vx)"/>
  <xsl:text>);
</xsl:text>
</xsl:template>



<xsl:template match="dex:const-4[@kind='known-null']|dex:const-8[@kind='known-null']|dex:const-16[@kind='known-null']"> 
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.o = JAVA_NULL;
</xsl:text>
</xsl:template>


<xsl:template match="dex:const|dex:const-4|dex:const-16|dex:const-wide|dex:const-wide-16|dex:const-wide-32|dex:const-high16|dex:const-wide-high16"> 
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@type"/>
  </xsl:call-template>
  <xsl:text> = </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:const-string"> 
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.o = __NEW_java_lang_String();
    java_lang_String___INIT____char_ARRAYTYPE(_r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.o, XMLVMArray_createFromString(</xsl:text>
  <xsl:value-of select="vm:escapeString(@value)"/>
  <xsl:text>));&nl;</xsl:text>
</xsl:template>


<xsl:template match="dex:const-class"> 
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.o = __NEW_XMLVMClass((__CLASS_DEFINITION_TEMPLATE*) &amp;__CLASS_</xsl:text>
  <xsl:value-of select="vm:fixname(@value)"/>
  <xsl:text>);&nl;</xsl:text>
</xsl:template>


<xsl:template match="dex:float-to-int">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = (JAVA_INT) _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.f;
</xsl:text>
</xsl:template>


<xsl:template match="dex:float-to-long">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = (JAVA_LONG) _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.f;
</xsl:text>
</xsl:template>


<xsl:template match="dex:float-to-double">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.d = (JAVA_DOUBLE) _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.f;
</xsl:text>
</xsl:template>


<xsl:template match="dex:int-to-byte">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = (_r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i &lt;&lt; 24) &gt;&gt; 24;
</xsl:text>
</xsl:template>


<xsl:template match="dex:int-to-short">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = (_r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i &lt;&lt; 16) &gt;&gt; 16;
</xsl:text>
</xsl:template>


<xsl:template match="dex:int-to-float">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.f = (JAVA_FLOAT) _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i;
</xsl:text>
</xsl:template>


<xsl:template match="dex:int-to-long">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = (JAVA_LONG) _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i;
</xsl:text>
</xsl:template>


<xsl:template match="dex:int-to-double">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.d = (JAVA_DOUBLE) _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i;
</xsl:text>
</xsl:template>


<xsl:template match="dex:int-to-char">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i &amp; 0xffff;
</xsl:text>
</xsl:template>


<xsl:template match="dex:long-to-int">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = (JAVA_INT) _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l;
</xsl:text>
</xsl:template>


<xsl:template match="dex:long-to-float">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.f = (JAVA_FLOAT) _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l;
</xsl:text>
</xsl:template>


<xsl:template match="dex:long-to-double">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.d = (JAVA_DOUBLE) _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l;
</xsl:text>
</xsl:template>


<xsl:template match="dex:double-to-long">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = (JAVA_LONG) _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.d;
</xsl:text>
</xsl:template>


<xsl:template match="dex:double-to-float">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.f = (JAVA_FLOAT) _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.d;
</xsl:text>
</xsl:template>


<xsl:template match="dex:double-to-int">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = (JAVA_INT) _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.d;
</xsl:text>
</xsl:template>


<xsl:template match="dex:cmpl-float">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.f &gt; _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.f ? 1 : (_r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.f == _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.f ? 0 : -1);
</xsl:text>
</xsl:template>


<xsl:template match="dex:cmpg-float">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.f &gt; _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.f ? 1 : (_r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.f == _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.f ? 0 : -1);
</xsl:text>
</xsl:template>


<xsl:template match="dex:cmpl-double">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.d &gt; _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.d ? 1 : (_r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.d == _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.d ? 0 : -1);
</xsl:text>
</xsl:template>


<xsl:template match="dex:cmpg-double">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.d &gt; _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.d ? 1 : (_r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.d == _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.d ? 0 : -1);
</xsl:text>
</xsl:template>


<xsl:template match="dex:cmp-long">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l &gt; _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.l ? 1 : (_r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l == _r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.l ? 0 : -1);
</xsl:text>
</xsl:template>


<xsl:template match="dex:neg-int">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = -_r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i;
</xsl:text>
</xsl:template>


<xsl:template match="dex:neg-long">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.l = -_r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.l;
</xsl:text>
</xsl:template>


<xsl:template match="dex:neg-float">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.f = -_r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.f;
</xsl:text>
</xsl:template>


<xsl:template match="dex:neg-double">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.d = -_r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.d;
</xsl:text>
</xsl:template>


<xsl:template match="dex:add-int-lit8|dex:add-int-lit16">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i + </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:mul-int-lit8|dex:mul-int-lit16">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i * </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:div-int-lit8|dex:div-int-lit16">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i / </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:rem-int-lit8|dex:rem-int-lit16">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i % </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:label">
  <xsl:text>    label</xsl:text>
  <xsl:value-of select="@id"/>
  <xsl:text>:;
</xsl:text>
</xsl:template>


<xsl:template match="dex:goto|dex:goto-16">
  <xsl:text>    goto label</xsl:text>
  <xsl:value-of select="@target"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:if-eqz">
  <xsl:text>    if (_r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:choose>
    <xsl:when test="vm:isObjectRef(@vx-type)">
      <xsl:text>.o == JAVA_NULL</xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="emitTypedAccess">
        <xsl:with-param name="type" select="@vx-type"/>
      </xsl:call-template>
      <xsl:text> == 0</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:text>) goto label</xsl:text>
  <xsl:value-of select="@target"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:if-nez">
  <xsl:text>    if (_r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:choose>
    <xsl:when test="vm:isObjectRef(@vx-type)">
      <xsl:text>.o != JAVA_NULL</xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:call-template name="emitTypedAccess">
        <xsl:with-param name="type" select="@vx-type"/>
      </xsl:call-template>
      <xsl:text> != 0</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
  <xsl:text>) goto label</xsl:text>
  <xsl:value-of select="@target"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:if-gez">
  <xsl:text>    if (_r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
  </xsl:call-template>
  <xsl:text> &gt;= 0) goto label</xsl:text>
  <xsl:value-of select="@target"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:if-ltz">
  <xsl:text>    if (_r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
  </xsl:call-template>
  <xsl:text> &lt; 0) goto label</xsl:text>
  <xsl:value-of select="@target"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:if-lez">
  <xsl:text>    if (_r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
  </xsl:call-template>
  <xsl:text> &lt;= 0) goto label</xsl:text>
  <xsl:value-of select="@target"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:if-gtz">
  <xsl:text>    if (_r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
  </xsl:call-template>
  <xsl:text> &gt; 0) goto label</xsl:text>
  <xsl:value-of select="@target"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:if-ge">
  <xsl:text>    if (_r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
  </xsl:call-template>
  <xsl:text> &gt;= _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
  </xsl:call-template>
  <xsl:text>) goto label</xsl:text>
  <xsl:value-of select="@target"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:if-gt">
  <xsl:text>    if (_r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
  </xsl:call-template>
  <xsl:text> &gt; _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
  </xsl:call-template>
  <xsl:text>) goto label</xsl:text>
  <xsl:value-of select="@target"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:if-le">
  <xsl:text>    if (_r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
  </xsl:call-template>
  <xsl:text> &lt;= _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
  </xsl:call-template>
  <xsl:text>) goto label</xsl:text>
  <xsl:value-of select="@target"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:if-lt">
  <xsl:text>    if (_r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
  </xsl:call-template>
  <xsl:text> &lt; _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
  </xsl:call-template>
  <xsl:text>) goto label</xsl:text>
  <xsl:value-of select="@target"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:if-eq">
  <xsl:text>    if (_r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
  </xsl:call-template>
  <xsl:text> == _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
  </xsl:call-template>
  <xsl:text>) goto label</xsl:text>
  <xsl:value-of select="@target"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:if-ne">
  <xsl:text>    if (_r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
  </xsl:call-template>
  <xsl:text> != _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
  </xsl:call-template>
  <xsl:text>) goto label</xsl:text>
  <xsl:value-of select="@target"/>
  <xsl:text>;
</xsl:text>
</xsl:template>


<xsl:template match="dex:sparse-switch|dex:packed-switch">
  <xsl:text>    switch (_r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i) {
</xsl:text>
  <xsl:for-each select="dex:case">
    <xsl:text>    case </xsl:text>
    <xsl:value-of select="@key"/>
    <xsl:text>: goto label</xsl:text>
    <xsl:value-of select="@label"/>
    <xsl:text>;
</xsl:text>
  </xsl:for-each>
  <xsl:text>    }
</xsl:text>
</xsl:template>


<xsl:template match="dex:filled-new-array|dex:filled-new-array-range">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="dex:move-result/@vx"/>
  <xsl:text>.o = ((XMLVMElem[]) {</xsl:text>
  <xsl:for-each select="dex:value">
    <xsl:text>_r</xsl:text>
    <xsl:value-of select="@register"/>
    <xsl:text>, </xsl:text>
  </xsl:for-each>
  <xsl:text>});&nl;</xsl:text>
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="dex:move-result/@vx"/>
  <xsl:text>.o = XMLVMArray_createSingleDimensionWithData(5, </xsl:text>
  <xsl:value-of select="count(dex:value)"/>
  <xsl:text>, _r</xsl:text>
  <xsl:value-of select="dex:move-result/@vx"/>
  <xsl:text>.o);
</xsl:text>
</xsl:template>


<xsl:template match="dex:fill-array-data">
  <xsl:variable name="base-type" select="replace(@vx-type, '\[\]', '')"/>
  <xsl:text>    XMLVMArray_fillArray(</xsl:text>
  <xsl:value-of select="vm:cast-register('XMLVMArray', @vx)"/>
  <xsl:text>, (</xsl:text>
  <xsl:call-template name="emitTrueType">
    <xsl:with-param name="type" select="$base-type"/>
  </xsl:call-template>
  <xsl:text>[]){</xsl:text>
  <xsl:for-each select="dex:constant">
    <xsl:value-of select="@value"/>
    <xsl:text>, </xsl:text>
  </xsl:for-each>
  <xsl:text>});
</xsl:text>
</xsl:template>


<xsl:template match="dex:new-array">
  <xsl:variable name="base-type" select="replace(@value, '\[\]', '')"/>
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.o = XMLVMArray_createSingleDimension(</xsl:text>
  <xsl:value-of select="vm:typeID($base-type)"/>
  <xsl:text>, _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.i);
</xsl:text>
</xsl:template>


<xsl:template match="dex:array-length">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = XMLVMArray_count(</xsl:text>
  <xsl:value-of select="vm:cast-register('XMLVMArray', @vy)"/>
  <xsl:text>);
</xsl:text>
</xsl:template>


<xsl:template match="dex:aget|dex:aget-wide|dex:aget-boolean|dex:aget-byte|dex:aget-char|dex:aget-short">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
  </xsl:call-template>
  <xsl:text> = </xsl:text>
  <xsl:value-of select="vm:cast-register('XMLVMArray', @vy)"/>
  <xsl:text>->array</xsl:text>
  <xsl:call-template name="emitTypedArrayAccess">
    <xsl:with-param name="type" select="@vy-type"/>
  </xsl:call-template>
  <xsl:text>[_r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.i];
</xsl:text>
</xsl:template>


<xsl:template match="dex:aget-object">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>.o = </xsl:text>
  <xsl:value-of select="vm:cast-register('XMLVMArray', @vy)"/>
  <xsl:text>->array.o[_r</xsl:text>
  <xsl:value-of select="@vz" />
  <xsl:text>.i];
</xsl:text>
</xsl:template>


<xsl:template match="dex:aput|dex:aput-wide|dex:aput-boolean|dex:aput-char|dex:aput-byte|dex:aput-short">
  <xsl:text>    </xsl:text>
  <xsl:value-of select="vm:cast-register('XMLVMArray', @vy)"/>
  <xsl:text>->array</xsl:text>
  <xsl:call-template name="emitTypedArrayAccess">
    <xsl:with-param name="type" select="@vy-type"/>
  </xsl:call-template>
  <xsl:text>[_r</xsl:text>
  <xsl:value-of select="@vz"/>
  <xsl:text>.i] = _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
  </xsl:call-template>
  <xsl:text>;
</xsl:text>
</xsl:template>

  
<xsl:template match="dex:aput-object">
  <xsl:text>    </xsl:text>
  <xsl:value-of select="vm:cast-register('XMLVMArray', @vy)"/>
  <xsl:text>->array.o[_r</xsl:text>
  <xsl:value-of select="@vz" />
  <xsl:text>.i] = _r</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>.o;
</xsl:text>
</xsl:template>


<xsl:template match="dex:check-cast">
  <!-- TODO should do a runtime type check -->
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.o = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.o;
</xsl:text>
</xsl:template>



<xsl:template match="dex:instance-of">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>.i = XMLVM_ISA(_r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>.o, (JAVA_OBJECT) &amp;__CLASS_</xsl:text>
  <xsl:value-of select="vm:fixname(@value)"/>
  <xsl:text>);
</xsl:text>
</xsl:template>


<xsl:template match="dex:move|dex:move-from16|dex:move-wide|dex:move-wide-from16|dex:move-object|dex:move-object-from16">
  <xsl:text>    _r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text> = _r</xsl:text>
  <xsl:value-of select="@vy"/>
  <xsl:text>;
</xsl:text>
</xsl:template>





<xsl:template name="appendDexSignature">
  <xsl:text>__</xsl:text>
  <xsl:choose>
    <xsl:when test="count(dex:parameters/dex:parameter) != 0">
      <xsl:for-each select="dex:parameters/dex:parameter">
        <xsl:text>_</xsl:text>
        <xsl:value-of select="replace(vm:fixname(@type), '\[\]', '_ARRAYTYPE')"/>
      </xsl:for-each>
    </xsl:when>
  </xsl:choose>
</xsl:template>



<!--
   Default template. If the XMLVM file should contain an instruction
   that is not handled by this stylesheet, this default template
   will make sure we notice it by writing a special error function
   to the output stream.
-->
<xsl:template match="*">
  <xsl:text>      XMLVM_ERROR("</xsl:text>
  <xsl:value-of select="name()"/>
    <xsl:text>");
</xsl:text>
  <xsl:message select="."/>
</xsl:template>


</xsl:stylesheet>
