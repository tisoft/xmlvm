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
<!ENTITY tab "&#9;"><!--tab-->

<!ENTITY tab2 "&tab;&tab;">
<!ENTITY tab3 "&tab;&tab;&tab;">
<!ENTITY tab4 "&tab;&tab;&tab;&tab;">
<!ENTITY tab5 "&tab;&tab;&tab;&tab;&tab;">
<!ENTITY tab6 "&tab;&tab;&tab;&tab;&tab;&tab;">
<!ENTITY tab7 "&tab;&tab;&tab;&tab;&tab;&tab;&tab;">
]>

<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
                xmlns:vm = "http://xmlvm.org"
                xmlns:xs = "http://www.w3.org/2001/XMLSchema"
                xmlns:jvm = "http://xmlvm.org/jvm"
                xmlns:dex = "http://xmlvm.org/dex"
                version = "2.0">

<xsl:output method="text" indent="no"/>

<xsl:key name="const-string" match="*" use="@vx"/>




<xsl:template match="vm:xmlvm">
  <xsl:text>/*&nl;xmlvm2java test&nl;*/&nl;</xsl:text>
  <xsl:apply-templates/>
</xsl:template>



<xsl:template match="vm:class">
  <xsl:if test="@package != ''">
    <xsl:text>package </xsl:text><xsl:value-of select="@package" /><xsl:text>;&nl;&nl;</xsl:text>
  </xsl:if>
  <xsl:call-template name="emitModifier">
    <xsl:with-param name="public" select="@isPublic"/>
  </xsl:call-template>
  <xsl:text> class </xsl:text>
  <xsl:value-of select="@name" />
  <xsl:if test="@extends != 'java.lang.Object'">
    <xsl:text> extends </xsl:text>
    <xsl:value-of select="@extends"/>
  </xsl:if>
  <xsl:if test="@interfaces != ''">
    <xsl:text>&nl;&tab;implements </xsl:text>
    <xsl:value-of select="@interfaces"/>
  </xsl:if>
  <xsl:text> {&nl;
static class XMLVMElem {
&tab;int i;
&tab;long l;
&tab;float f;
&tab;double d;
&tab;char c;
&tab;Object o;
}
</xsl:text>
    <xsl:for-each select="vm:field[count(@isStatic)=1 and @isStatic='true']">
      <xsl:text>&tab;</xsl:text>
      <xsl:if test="@isPublic = 'true'">
        <xsl:text>public </xsl:text>
      </xsl:if>
      <xsl:if test="@isPrivate = 'true'">
        <xsl:text>private </xsl:text>
      </xsl:if>
      <xsl:text>static </xsl:text>
			<xsl:value-of select="@type" /><xsl:text> </xsl:text>
			<xsl:value-of select="@name" /><xsl:text> = </xsl:text>
      <xsl:call-template name="emitDefaultValue"><xsl:with-param name="has_value" select="count(@value)=1"/><xsl:with-param name="value" select="@value"/><xsl:with-param name="type" select="@type"/></xsl:call-template>
	</xsl:for-each>
	<xsl:for-each select="vm:method[count(@isStatic)=1 and @isStatic='true']">

			<xsl:apply-templates select="."/>
	</xsl:for-each>

    <xsl:text> //statics&nl;&nl;</xsl:text>

    <xsl:for-each select="vm:field[count(@isStatic)=0 or @isStatic='false']">
      <xsl:text>&tab;</xsl:text>
      <xsl:if test="@isPublic = 'true'">
        <xsl:text>public </xsl:text>
      </xsl:if>
      <xsl:if test="@isPrivate = 'true'">
        <xsl:text>private </xsl:text>
      </xsl:if>
      <xsl:value-of select="@type" /><xsl:text> </xsl:text>
      <xsl:value-of select="@name" /><xsl:text> = </xsl:text>
      <xsl:call-template name="emitDefaultValue"><xsl:with-param name="has_value" select="count(@value)=1"/><xsl:with-param name="value" select="@value"/><xsl:with-param name="type" select="@type"/></xsl:call-template>
	</xsl:for-each>
    <xsl:for-each select="vm:method[count(@isStatic)=0 or @isStatic='false']">
      <xsl:apply-templates select="."/>
      <xsl:text>&nl;</xsl:text>
	</xsl:for-each>
<xsl:text>&nl;} //members&nl;</xsl:text>
<!--  <xsl:apply-templates/> -->

</xsl:template>
<!-- END OF TEMPLATE: CLASS -->


<xsl:template match="vm:method">
  <xsl:choose>
    <xsl:when test="not(vm:isDuplicateMethod(.))">
      <xsl:call-template name="emitPrototype"/>
      <xsl:apply-templates/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>//duplicateMethod: 0</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<xsl:template match="vm:method[@isAbstract = 'true']">
 	<xsl:call-template name="emitPrototype"/>
 	<xsl:text>{}</xsl:text>
</xsl:template>

<!-- TODO: make this correct -->
<xsl:template match="vm:method[@isNative = 'true' or count(@nativeInterface) != 0]">
  <xsl:call-template name="emitPrototype"/>
  <xsl:text>
    {
       </xsl:text>
       <xsl:if test="vm:signature/vm:return/@type != 'void'">
         <xsl:text>return </xsl:text>
       </xsl:if>
       <xsl:text>NativeInterface</xsl:text>
       <xsl:value-of select="../@name"/>
       <xsl:text>.</xsl:text>
       <xsl:choose>
         <xsl:when test="count(@nativeInterface) != 0">
           <xsl:value-of select="@nativeInterface"/>
         </xsl:when>
         <xsl:otherwise>
           <xsl:value-of select="@name"/>
         </xsl:otherwise>
       </xsl:choose>
       <xsl:text>(</xsl:text>
       <xsl:if test="not(@isStatic = 'true')">
         <xsl:text>this</xsl:text>
         <xsl:if test="count(vm:signature/vm:parameter) != 0">
           <xsl:text>, </xsl:text>
         </xsl:if>
       </xsl:if>
       <xsl:for-each select="vm:signature/vm:parameter">
         <xsl:if test="position() != 1">
           <xsl:text>, </xsl:text>
         </xsl:if>
         <xsl:text> __arg</xsl:text>
         <xsl:value-of select="position()"/>
       </xsl:for-each>
       <xsl:text>);
    }
</xsl:text>
</xsl:template>



<xsl:template match="vm:signature">
  <!-- do nothing -->
</xsl:template>


<!-- ============================================================================
   All templates below are essentially helper functions that are called by
   various other templates.
   ============================================================================
-->

<!-- Added for Dynamic Loading -->
<xsl:template name="checkClass">
  <xsl:param name="string" />
<!--
  <xsl:variable name="typeName">
    <xsl:call-template name="emitScopedName"><xsl:with-param name="string" select="replace($string, '\[\]', '')"/></xsl:call-template>
  </xsl:variable>
  <xsl:if test="vm:isObjectRef($typeName)">
    <xsl:text>
            if (</xsl:text><xsl:copy-of select="$typeName" /><xsl:text>.$$clinit_ != undefined) {</xsl:text>
    <xsl:copy-of select="$typeName" /><xsl:text>.$$clinit_();</xsl:text>
    <xsl:copy-of select="$typeName" /><xsl:text>.$$clinit_ = undefined; }</xsl:text>
  </xsl:if>-->
</xsl:template>


<!--
   emitPrototype
   =============
   Writes the prototype of a method. Called from within context of tag
   <method>.
-->
<xsl:template name="emitPrototype">

<xsl:text>&nl;&tab;</xsl:text>

     <xsl:call-template name="emitPrototypeName">
	  <xsl:with-param name="name" select="@name"/>
    	  <xsl:with-param name="signature" select="vm:signature" />
  	  <!-- <xsl:with-param name="class-type" select="../@name"/> -->
     </xsl:call-template>

	<xsl:text>(</xsl:text>
	<xsl:for-each select="vm:signature/vm:parameter">
    	  <xsl:if test="position() != 1">
      	<xsl:text>, </xsl:text>
	  </xsl:if>
     <xsl:value-of select="@type"/>
    	<xsl:text> __arg</xsl:text>
    	<xsl:value-of select="position()"/>
  	</xsl:for-each>
	<xsl:text>)</xsl:text>
</xsl:template>

<xsl:template name="initArguments">
  <xsl:variable name="numRegs" select="@register-size" as="xs:integer"/>
  <xsl:variable name="numArgs" select="count(../vm:signature/vm:parameter)" as="xs:integer"/>

  <xsl:for-each select="0 to ($numRegs - 1)">
    <xsl:text>&tab2;XMLVMElem __r</xsl:text>
    <xsl:value-of select="position() - 1"/>
    <xsl:text> = new XMLVMElem();&nl;</xsl:text>
  </xsl:for-each>

  <xsl:if test="not(../@isStatic = 'true')">
    <!-- Initialize 'this' parameter
    <xsl:text>    </xsl:text>-->
    <!--<xsl:value-of select="dex:var[count(@name)=1 and @name='this']/@type"/>
    <xsl:text>XMLVMElem</xsl:text>
    <xsl:text> __r</xsl:text>
    <xsl:value-of select="$numRegs - ($numArgs + 1)"/>
    <xsl:text>;&nl;</xsl:text>-->
    <xsl:text>&tab2;</xsl:text>
      <xsl:call-template name="emitTypedAccess">
        <xsl:with-param name="type" select="dex:var[count(@name)=1 and @name='this']/@type"/>
        <xsl:with-param name="register" select="xs:string($numRegs - ($numArgs + 1))"/>
        <xsl:with-param name="nocast">1</xsl:with-param>
      </xsl:call-template>
    <xsl:text> = this;&nl;</xsl:text>
  </xsl:if>
  <xsl:for-each select="../vm:signature/vm:parameter">
      <xsl:text>&tab2;</xsl:text>
      <xsl:call-template name="emitTypedAccess">
        <xsl:with-param name="type" select="@type"/>
        <xsl:with-param name="register" select="xs:string($numRegs - ($numArgs - position()) - 1)"/>
        <xsl:with-param name="nocast">1</xsl:with-param>
      </xsl:call-template>
      <xsl:text> = __arg</xsl:text>
      <xsl:value-of select="position()"/>
      <xsl:text>;&nl;</xsl:text>
  </xsl:for-each>
</xsl:template>



<!--
   emitMethodName
   ==============
   Called whenever a method name has to be written. If the method happens
   to be a constructor, this function will generate $$init_() instead.
   Input: 'name': the name of the method to write.
-->
<xsl:template name="emitPrototypeName">
  <xsl:param name="name"/>
  <xsl:param name="signature" />
  <xsl:param name="class-type" />

  <xsl:choose>
    <xsl:when test="$name = '&lt;init&gt;'">
      <xsl:if test="@isPublic = 'true'">
        <xsl:text>public </xsl:text>
      </xsl:if>
      <xsl:if test="@isPrivate = 'true'">
        <xsl:text>private </xsl:text>
      </xsl:if>
      <xsl:if test="@isStatic = 'true'">
        <xsl:text>static </xsl:text>
      </xsl:if>

       <xsl:call-template name="emitScopedName">
          <xsl:with-param name="string" select="../../vm:class/@name"/>
      </xsl:call-template>

    </xsl:when>
    <xsl:when test="$name = '&lt;clinit&gt;'">
      <xsl:text>&nl;&tab;static { __clinit(); }&nl;&nl;&tab;private static void __clinit</xsl:text>
    </xsl:when>
<!--
    <xsl:when test="$name = '.cctor'">
      <xsl:text>$$cctor</xsl:text>
      <xsl:call-template name="emitScopedName">
          <xsl:with-param name="string" select="$class-type"/>
      </xsl:call-template>
    </xsl:when>-->
    <xsl:otherwise>
      <xsl:if test="@isPublic = 'true'">
        <xsl:text>public </xsl:text>
      </xsl:if>
      <xsl:if test="@isPrivate = 'true'">
        <xsl:text>private </xsl:text>
      </xsl:if>
      <xsl:if test="@isStatic = 'true'">
        <xsl:text>static </xsl:text>
      </xsl:if>

      <xsl:value-of select="vm:signature/vm:return/@type"/>
      <xsl:text> </xsl:text>

      <xsl:value-of select="$name"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<!--
   emitMethodName
   ==============
   Called whenever a method name has to be written. If the method happens
   to be a constructor, this function will generate $$init_() instead.
   Input: 'name': the name of the method to write.
-->
<xsl:template name="emitMethodName">
  <xsl:param name="name"/>
  <xsl:param name="signature" />
  <xsl:param name="class-type" />

  <xsl:choose>
    <xsl:when test="$name = '&lt;init&gt;'">
       <xsl:call-template name="emitScopedName">
          <xsl:with-param name="string" select="../../vm:class/@name"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="$name = '&lt;clinit&gt;'">
      <xsl:text>static</xsl:text>
    </xsl:when>
<!--
    <xsl:when test="$name = '.cctor'">
      <xsl:text>$$cctor</xsl:text>
      <xsl:call-template name="emitScopedName">
          <xsl:with-param name="string" select="$class-type"/>
      </xsl:call-template>
    </xsl:when>-->
    <xsl:otherwise>
      <xsl:value-of select="$name"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<!--
   emitScopedName
   ==============
   Writes a scoped name. This function basically translates a Java-style scoped
   name (e.g., java.lang.String) to JavaScript. We simply use name mangling
     for this (e.g., java_lang_String).
   Input: 'string': Java-style scoped name.
-->

<xsl:template name="emitScopedName">
  <xsl:param name="string" />
  <xsl:value-of select="$string" />
</xsl:template>

<!--
   emitType
   ========
   Emits a type reference. Basic Java types are mapped to certain C++ types
   (e.g., int is mapped to XMLVM::INT). Object references are mapped to
   C++ types of the same name with the suffix '__ref'.
   Input: 'type': Java type
-->
<xsl:template name="emitType">
  <xsl:param name="type"/>
  <xsl:value-of select="$type" />
</xsl:template>

<xsl:template name="emitModifier">
  <xsl:param name="public"/>
  <xsl:choose>
     <xsl:when test="$public = 'true'">
      <xsl:text>public</xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>private</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<!-- Replace the substring "replace" by "with" in "text" -->
<xsl:template name="replaceString">
  <xsl:param name="text"/>
  <xsl:param name="replace"/>
  <xsl:param name="with"/>
  <xsl:choose>
    <xsl:when test="contains($text,$replace)">
      <xsl:value-of select="substring-before($text,$replace)"/>
      <xsl:value-of select="$with"/>
      <xsl:call-template name="replaceString">
        <xsl:with-param name="text" select="substring-after($text,$replace)"/>
        <xsl:with-param name="replace" select="$replace"/>
        <xsl:with-param name="with" select="$with"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:value-of select="$text"/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="getPackgePlusClassName">
  <xsl:param name="package" />
  <xsl:param name="classname" />

  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="$package"/>
  </xsl:call-template>

  <xsl:choose>
    <xsl:when test="string-length($package) > 0">
      <xsl:text>_</xsl:text>
    </xsl:when>
  </xsl:choose>

  <xsl:value-of select="$classname"/>
</xsl:template>

<xsl:template name="emitTypedAccess">
  <xsl:param name="type"/>
  <xsl:param name="register"/>
  <xsl:param name="nocast"/>
  <xsl:param name="castto"/>

  <xsl:choose>
    <xsl:when test="$type = 'boolean'">
<!--
      <xsl:if test="$register != ''">
        <xsl:text>__r</xsl:text>
          <xsl:value-of select="$register" />
      </xsl:if>
      <xsl:text>.b</xsl:text>
-->
      <xsl:choose>
        <xsl:when test="$nocast != ''">
          <xsl:text>__r</xsl:text>
          <xsl:value-of select="$register" />
          <xsl:text>.i</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>(</xsl:text>
          <xsl:text>__r</xsl:text>
          <xsl:value-of select="$register" />
          <xsl:text>.i == 1)</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:when>
    <xsl:when test="$type = 'byte'">
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
     <xsl:text>.i</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'short'">
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
     <xsl:text>.i</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'int'">
     <xsl:if test="$castto = 'byte' or $castto = 'short' or $castto = 'char'">
       <xsl:text>(</xsl:text><xsl:value-of select="$castto" /><xsl:text>) </xsl:text>
     </xsl:if>
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
     <xsl:text>.i</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'long'">
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
     <xsl:text>.l</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'float'">
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
     <xsl:text>.f</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'double'">
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
     <xsl:text>.d</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'char'">
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
     <xsl:text>.c</xsl:text>
    </xsl:when>
<!--    <xsl:when test="$type = 'boolean[]'">
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
      <xsl:text>.ba</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'byte[]'">
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
      <xsl:text>.bta</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'short[]'">
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
      <xsl:text>.sa</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'int[]'">
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
      <xsl:text>.ia</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'long[]'">
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
      <xsl:text>.la</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'float[]'">
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
      <xsl:text>.fa</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'double[]'">
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
      <xsl:text>.da</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'char[]'">
     <xsl:text>__r</xsl:text>
     <xsl:value-of select="$register" />
      <xsl:text>.ca</xsl:text>
    </xsl:when>
-->    <xsl:otherwise>
      <xsl:choose>
<!--        <xsl:when test="contains($type, '[')">
          <xsl:text>__r</xsl:text>
          <xsl:value-of select="$register" />
          <xsl:text>.oa</xsl:text>
        </xsl:when>
-->     <xsl:when test="$nocast != '' or $type = 'null'">
          <xsl:text>__r</xsl:text>
          <xsl:value-of select="$register" />
          <xsl:text>.o</xsl:text>
        </xsl:when>
        <xsl:otherwise>
          <xsl:text>((</xsl:text>
          <xsl:value-of select="$type" />
          <xsl:text>)__r</xsl:text>
          <xsl:value-of select="$register" />
          <xsl:text>.o)</xsl:text>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>

<xsl:template name="emitBooleanSet">
  <xsl:param name="type"/>

  <xsl:if test="$type = 'boolean'">
    <xsl:text> ? 1 : 0</xsl:text>
  </xsl:if>

</xsl:template>

<xsl:template name="emitDefaultValue">
  <xsl:param name="has_value"/>
  <xsl:param name="value"/>
  <xsl:param name="type"/>

      <xsl:if test="$has_value">
        <xsl:value-of select="$value"/>
      </xsl:if>
      <xsl:if test="not($has_value)">
          <xsl:choose>
          <xsl:when test="$type = 'boolean'">
               <xsl:text>false</xsl:text>
          </xsl:when>
          <xsl:when test="$type = 'byte' or $type = 'short' or $type = 'int'">
               <xsl:text>0</xsl:text>
          </xsl:when>
          <xsl:when test="$type = 'long'">
               <xsl:text>0L</xsl:text>
          </xsl:when>
          <xsl:when test="$type = 'float'">
               <xsl:text>0.0f</xsl:text>
          </xsl:when>
          <xsl:when test="$type = 'double'">
               <xsl:text>0.0d</xsl:text>
          </xsl:when>
          <xsl:when test="$type = 'char'">
               <xsl:text>'\u0000'</xsl:text>
          </xsl:when>
          <xsl:otherwise>
               <xsl:text>null</xsl:text>
          </xsl:otherwise>
          </xsl:choose>
      </xsl:if>
      <xsl:text>;&nl;</xsl:text>
</xsl:template>

<xsl:template name="emitValueSuffix">
  <xsl:param name="type"/>

          <xsl:choose>
          <xsl:when test="$type = 'long'">
               <xsl:text>L</xsl:text>
          </xsl:when>
          <xsl:when test="$type = 'float'">
               <xsl:text>f</xsl:text>
          </xsl:when>
          <xsl:when test="$type = 'double'">
               <xsl:text>d</xsl:text>
          </xsl:when>
          </xsl:choose>

</xsl:template>

<xsl:template name="emitParameters">
    <xsl:text>(</xsl:text>
    <xsl:for-each select="dex:parameters/dex:parameter">
    <xsl:if test="position() != 1">
      <xsl:text>, </xsl:text>
    </xsl:if>
          <xsl:choose>
          <xsl:when test="@type = 'boolean'">
               <xsl:call-template name="emitTypedAccess">
                    <xsl:with-param name="type">int</xsl:with-param>
                    <xsl:with-param name="register" select="@register"/>
               </xsl:call-template>
               <xsl:text> == 1</xsl:text>
          </xsl:when>
          <xsl:otherwise>
               <xsl:call-template name="emitTypedAccess">
                    <xsl:with-param name="type" select="@type"/>
                    <xsl:with-param name="register" select="@register"/>
               </xsl:call-template>
          </xsl:otherwise>
          </xsl:choose>
    </xsl:for-each>
    <xsl:text>)</xsl:text>
    <xsl:if test="dex:move-result/@vx-type = 'boolean'">
      <xsl:text> ? 1 : 0</xsl:text>
    </xsl:if>
</xsl:template>


<xsl:template name="emitOperation">
  <xsl:param name="op"/>

  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
  </xsl:call-template>
  <xsl:text> = </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text> </xsl:text><xsl:value-of select="$op"/><xsl:text> </xsl:text>

          <xsl:choose>
          <xsl:when test="@value != ''">
               <xsl:value-of select="@value" />
          </xsl:when>
          <xsl:when test="@vz != ''">
            <xsl:call-template name="emitTypedAccess">
              <xsl:with-param name="type" select="@vz-type"/>
              <xsl:with-param name="register" select="@vz"/>
            </xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
               <xsl:text>ERROR! Unsupported emitOperation!!!</xsl:text>
          </xsl:otherwise>
          </xsl:choose>

  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<xsl:template name="emitCompare">
  <xsl:param name="op"/>

  <xsl:text>&nl;&tab5;if (</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
  </xsl:call-template>
  <xsl:text> </xsl:text><xsl:value-of select="$op"/><xsl:text> </xsl:text>
          <xsl:choose>
          <xsl:when test="@vy != ''">
            <xsl:call-template name="emitTypedAccess">
              <xsl:with-param name="type" select="@vy-type"/>
              <xsl:with-param name="register" select="@vy"/>
            </xsl:call-template>
          </xsl:when>
          <xsl:otherwise>
               <xsl:text>0</xsl:text>
          </xsl:otherwise>
          </xsl:choose>

  <xsl:text>){ __next_label = </xsl:text>
  <xsl:value-of select="@target" />
  <xsl:text>; break; }</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<xsl:template name="emitDebugComment">
<!-- Comment this out, if you don't want these comments -->
  <xsl:text> // </xsl:text>
  <xsl:value-of select="name()" />

</xsl:template>

<!--  vm:source-position
      =======  -->
<xsl:template match="vm:source-position">
<!-- Comment this out, if you don't want these comments -->
  <xsl:text>&nl;&tab5;// </xsl:text>
  <xsl:value-of select="@file" />
  <xsl:text>:</xsl:text>
  <xsl:value-of select="@line" />
  <xsl:text></xsl:text>

<!-- You probably definitly want to comment this out, just for debug
  <xsl:text>&nl;            System.out.println("</xsl:text>
  <xsl:value-of select="@file" />
  <xsl:text>:</xsl:text>
  <xsl:value-of select="@line" />
  <xsl:text>");</xsl:text>
-->
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  javac will sometimes generate two methods that only differ in their return type.
      This can happen e.g. with type erasures. Function vm:isDuplicateMethod will determine
      if the given method is a duplicate that is not needed when generating JavaScript.
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


<!--
    =============================================================================
  All templates below create code for the various Java VM bytecode instructions
  =============================================================================
-->


<!-- label -->
<xsl:template match="jvm:label|dex:label">
    <xsl:text>&nl;&tab4;case </xsl:text>
  <xsl:value-of select="@id"/>
  <xsl:text>:</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--
 _____    _____  __    __
|  _  \  | ____| \ \  / /
| | |  | | |__    \ \/ /
| | |  | |  __|    }  {
| |_|  | | |___   / /\ \
|_____/  |_____| /_/  \_\
-->

<xsl:template match="dex:code">
  <xsl:text> {&nl;</xsl:text>

  <xsl:call-template name="initArguments"/>

  <xsl:text>&nl;&tab2;int __next_label = -1;&nl;&tab2;while(true) {&nl;&tab3;switch(__next_label) {&nl;&tab4;case -1:</xsl:text>
  <xsl:apply-templates/>
  <xsl:text>&nl;&tab4;default:&nl;&tab5;System.err.println("XMLVM internal error: reached default of switch");&nl;&tab3;}&nl;&tab2;}</xsl:text>
  <xsl:text>&nl;&tab;}</xsl:text>
</xsl:template>

<xsl:template match="vm:define-register">
  <!-- Do nothing -->
</xsl:template>

<xsl:template match="vm:move-argument">
  <!-- Do nothing -->
</xsl:template>

<xsl:template match="vm:tmp-equals-r">
  <xsl:text>    __rtmp =  __r</xsl:text>
  <xsl:value-of select="@reg" />
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<xsl:template match="vm:comment">
  <xsl:text>    //INFO: </xsl:text>
    <xsl:value-of select="@text" />
  <xsl:call-template name="emitDebugComment"/>
  <xsl:text>
  </xsl:text>
</xsl:template>

<xsl:template match="vm:reg-release">
  <!-- Do nothing -->
</xsl:template>

<xsl:template match="vm:reg-retain">
  <!-- Do nothing -->
</xsl:template>

<xsl:template match="vm:i-release">
  <!-- Do nothing -->
</xsl:template>

<xsl:template match="vm:s-release">
  <!-- Do nothing -->
</xsl:template>

<xsl:template match="vm:a-release">
  <!-- Do nothing -->
</xsl:template>

<xsl:template match="vm:set-null">
  <!-- Do nothing -->
</xsl:template>

<xsl:template match="dex:monitor-enter">
  <!-- Do nothing -->
</xsl:template>

<xsl:template match="dex:monitor-exit">
  <!-- Do nothing -->
</xsl:template>

<xsl:template match="dex:const-class">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="'java.lang.Class'"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = new java.lang.Class("</xsl:text>
  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="@value"/>
  </xsl:call-template>
  <xs:text>");&nl;</xs:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:return-void
      ===============  -->
<xsl:template match="dex:return-void">
  <xsl:text>&nl;&tab5;return;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:return-object
      =================  -->
<xsl:template match="dex:return|dex:return-object|dex:return-wide">
  <xsl:text>&nl;&tab5;return </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="../../vm:signature/vm:return/@type"/>
    <xsl:with-param name="register" select="@vx"/>
  </xsl:call-template>
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:var
      =======  -->
<xsl:template match="dex:var">
  <!-- do nothing -->
</xsl:template>

<!--  dex:const-string
      ================  -->
<xsl:template match="dex:const-string">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="'java.lang.String'"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = new java.lang.String("</xsl:text>
  <xsl:value-of select="replace(replace(replace(replace(replace(replace(replace(@value,'\\','\\\\'),
                           '\\\\011','\\t'),'\\\\012','\\n'),'\\\\015','\\r'),'\\\\014','\\f'),'\\\\010','\\b'),
                           '&quot;','\\&quot;')"/>
  <xsl:text>");</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:const*
      ================  -->
<xsl:template match="dex:const|dex:const-4|dex:const-16|dex:const-wide|dex:const-wide-16|dex:const-wide-32|dex:const-high16|dex:const-wide-high16">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = </xsl:text>
  <xsl:value-of select="@value" />
  <xsl:call-template name="emitValueSuffix">
    <xsl:with-param name="type" select="@type"/>
  </xsl:call-template>
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:add-*
      ================  -->
<xsl:template match="dex:add-int|dex:add-int-2addr|dex:add-double|dex:add-double-2addr|dex:add-float|dex:add-float-2addr|dex:add-long|dex:add-long-2addr|dex:add-int-lit8|add-int-lit16">
  <xsl:call-template name="emitOperation">
    <xsl:with-param name="op">+</xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!--  dex:mul-*
      ================  -->
<xsl:template match="dex:mul-int|dex:mul-int-2addr|dex:mul-double|dex:mul-double-2addr|dex:mul-float|dex:mul-float-2addr|dex:mul-long|dex:mul-long-2addr|dex:mul-int-lit8|dex:mul-int-lit16">
  <xsl:call-template name="emitOperation">
    <xsl:with-param name="op">*</xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!--  dex:div-int*
      ================  -->
<xsl:template match="dex:div-int|dex:div-int-2addr|dex:div-long|dex:div-long-2addr|dex:div-double|dex:div-double-2addr|dex:div-float|dex:div-float-2addr|dex:div-int-lit8|dex:div-int-lit16">
  <xsl:call-template name="emitOperation">
    <xsl:with-param name="op">/</xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!--  dex:subint-*
      ================  -->
<xsl:template match="dex:sub-int|dex:sub-int-2addr|dex:sub-double|dex:sub-double-2addr|dex:sub-float|dex:sub-float-2addr|dex:sub-long|dex:sub-long-2addr">
  <xsl:call-template name="emitOperation">
    <xsl:with-param name="op">-</xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!--  dex:rem-*
      ============  -->
<xsl:template match="dex:rem-int|dex:rem-int-2addr|dex:rem-long|dex:rem-long-2addr|dex:rem-int-lit8|dex:rem-int-lit16">
  <xsl:call-template name="emitOperation">
    <xsl:with-param name="op">%</xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!--  dex:and-int*
      ===========  -->
<xsl:template match="dex:and-int|dex:and-int-2addr|dex:and-int-lit8|dex:and-int-lit16">
  <xsl:call-template name="emitOperation">
    <xsl:with-param name="op">&amp;</xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!--  dex:or-int-lit*
      ===============  -->
<xsl:template match="dex:or-int-lit8|dex:or-int-lit16">
  <xsl:call-template name="emitOperation">
    <xsl:with-param name="op">|</xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!--  dex:xor-int*
      ============  -->
<xsl:template match="dex:xor-int|dex:xor-int-2addr|dex:xor-int-lit8|dex:xor-int-lit16">
  <xsl:call-template name="emitOperation">
    <xsl:with-param name="op">^</xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!--  dex:if-lt
      ================  -->
<xsl:template match="dex:if-lt|dex:if-ltz">
  <xsl:call-template name="emitCompare">
    <xsl:with-param name="op">&lt;</xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!--  dex:if-le
      ================  -->
<xsl:template match="dex:if-le|dex:if-lez">
  <xsl:call-template name="emitCompare">
    <xsl:with-param name="op">&lt;=</xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!--  dex:if-gt
      ================  -->
<xsl:template match="dex:if-gt|dex:if-gtz">
  <xsl:call-template name="emitCompare">
    <xsl:with-param name="op">&gt;</xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!--  dex:if-ne
      ================  -->
<xsl:template match="dex:if-ne|dex:if-nez">
  <xsl:call-template name="emitCompare">
    <xsl:with-param name="op">!=</xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!--  dex:if-ge
      ================  -->
<xsl:template match="dex:if-ge|dex:if-gez">
  <xsl:call-template name="emitCompare">
    <xsl:with-param name="op">&gt;=</xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!--  dex:if-eqz
      ==========  -->
<xsl:template match="dex:if-eq|dex:if-eqz">
  <xsl:call-template name="emitCompare">
    <xsl:with-param name="op">==</xsl:with-param>
  </xsl:call-template>
</xsl:template>

<!--  dex:goto
      ========  -->
<xsl:template match="dex:goto|dex:goto-16">
  <xsl:text>&nl;&tab5;__next_label = </xsl:text>
  <xsl:value-of select="@target" />
  <xsl:text>; break;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:invoke-virtual*, dex:invoke-virtual*
      ========================================  -->
<xsl:template match="dex:invoke-virtual|dex:invoke-virtual-range|dex:invoke-interface|dex:invoke-interface-range">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:if test="dex:move-result/@vx">
        <xsl:call-template name="emitTypedAccess">
          <xsl:with-param name="type" select="dex:move-result/@vx-type"/>
          <xsl:with-param name="register" select="dex:move-result/@vx"/>
          <xsl:with-param name="nocast">1</xsl:with-param>
        </xsl:call-template>
    <xsl:text> = </xsl:text>
  </xsl:if>

  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@class-type"/>
    <xsl:with-param name="register" select="@register"/>
  </xsl:call-template>
  <xsl:text>.</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="name" select="@method"/>
  </xsl:call-template>
  <xsl:call-template name="appendSignatureDex">
    <xsl:with-param name="signature" select="dex:parameters"/>
  </xsl:call-template>
  <xsl:call-template name="emitParameters"/>
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<xsl:template match="dex:invoke-super|dex:invoke-super-range">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:if test="dex:move-result/@vx">
        <xsl:call-template name="emitTypedAccess">
          <xsl:with-param name="type" select="dex:move-result/@vx-type"/>
          <xsl:with-param name="register" select="dex:move-result/@vx"/>
          <xsl:with-param name="nocast">1</xsl:with-param>
        </xsl:call-template>
    <xsl:text> = </xsl:text>
  </xsl:if>

  <xsl:text>super.</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="name" select="@method"/>
  </xsl:call-template>
  <xsl:call-template name="appendSignatureDex">
    <xsl:with-param name="signature" select="dex:parameters"/>
  </xsl:call-template>
  <xsl:call-template name="emitParameters"/>
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>



<!--  dex:new-instance
      ================  -->
<xsl:template match="dex:new-instance">
<!-- ignore this, this call is made on dex:invoke-direct instead, to call the constructor
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@value"/>
  </xsl:call-template>
  <xsl:text>
            __r</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>.o = new </xsl:text>
  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="@value"/>
  </xsl:call-template>
  <xsl:text>();</xsl:text>-->
</xsl:template>

<!--  dex:invoke-direct*
      ==================
      This is used to call super-constructors. Hence the special handling. -->
<xsl:template match="dex:invoke-direct|dex:invoke-direct-range">

  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
<!-- ignore this for now
  <xsl:text>
            if (__r</xsl:text>
  <xsl:value-of select="@register" />
  <xsl:text> == this &amp;&amp; &quot;</xsl:text>
  <xsl:call-template name="getPackgePlusClassName">
    <xsl:with-param name="package" select="../../../@package"/>
    <xsl:with-param name="classname" select="../../../@name"/>
  </xsl:call-template>
  <xsl:text>&quot; != &quot;</xsl:text>
  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>&quot;){
              </xsl:text>
  <xsl:if test="dex:move-result/@vx">
    <xsl:text>  __r</xsl:text>
    <xsl:value-of select="dex:move-result/@vx" />
    <xsl:text> = </xsl:text>
  </xsl:if>
  <xsl:text>__r</xsl:text>
  <xsl:value-of select="@register" />
  <xsl:text>.self(arguments).superclass.prototype.</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="name" select="@method"/>
  </xsl:call-template>
  <xsl:call-template name="appendSignatureDex">
    <xsl:with-param name="signature" select="dex:parameters"/>
  </xsl:call-template>
  <xsl:text>.call(__r</xsl:text>
  <xsl:value-of select="@register" />
  <xsl:for-each select="dex:parameters/dex:parameter">
    <xsl:text>, </xsl:text>
    <xsl:text>__r</xsl:text>
    <xsl:value-of select="@register"/>
  </xsl:for-each>
  <xsl:text>);
            } else {
            </xsl:text>
  <xsl:if test="dex:move-result/@vx">
    <xsl:text>  __r</xsl:text>
    <xsl:value-of select="dex:move-result/@vx" />
    <xsl:text> = </xsl:text>
  </xsl:if>
-->
      <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:choose>
    <xsl:when test="@method = '&lt;init&gt;' and @class-type = 'java.lang.Object'">
      <xsl:text>// super-constructor implicitly called, shouldn't call it again</xsl:text>
    </xsl:when>
  <!--  then we want a constructor -->
    <xsl:when test="@method = '&lt;init&gt;'">
      <xsl:call-template name="emitTypedAccess">
        <xsl:with-param name="type" select="@class-type"/>
        <xsl:with-param name="register" select="@register"/>
        <xsl:with-param name="nocast">1</xsl:with-param>
      </xsl:call-template>
      <xsl:text> = </xsl:text>
      <xsl:text>new </xsl:text>
      <xsl:call-template name="emitMethodName">
        <xsl:with-param name="name" select="@class-type"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:if test="dex:move-result/@vx">
        <xsl:call-template name="emitTypedAccess">
          <xsl:with-param name="type" select="dex:move-result/@vx-type"/>
          <xsl:with-param name="register" select="dex:move-result/@vx"/>
          <xsl:with-param name="nocast">1</xsl:with-param>
        </xsl:call-template>
        <xsl:text> = </xsl:text>
      </xsl:if>
      <xsl:call-template name="emitTypedAccess">
        <xsl:with-param name="type" select="@class-type"/>
        <xsl:with-param name="register" select="@register"/>
      </xsl:call-template>
      <xsl:text>.</xsl:text>
      <xsl:call-template name="emitMethodName">
        <xsl:with-param name="name" select="@method"/>
      </xsl:call-template>
    </xsl:otherwise>
  </xsl:choose>

  <xsl:call-template name="emitParameters"/>

  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:invoke-super*
      =================
TODO: incomplete-->
<xsl:template match="dex:invoke-superkiii|dex:invoke-super-rangeiiii">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>
            </xsl:text>
  <xsl:if test="dex:move-result/@vx">
    <xsl:text>__r</xsl:text>
    <xsl:value-of select="dex:move-result/@vx" />
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@class-type"/>
    <xsl:with-param name="register" select="dex:move-result/@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
    <xsl:text> = </xsl:text>
  </xsl:if>
  <xsl:text>__r</xsl:text>
  <xsl:value-of select="@register" />
  <xsl:text>.self(arguments).superclass.prototype.</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="name" select="@method"/>
  </xsl:call-template>
  <xsl:call-template name="appendSignatureDex">
    <xsl:with-param name="signature" select="dex:parameters"/>
  </xsl:call-template>
  <xsl:text>.call(__r</xsl:text>
  <xsl:value-of select="@register" />

  <xsl:call-template name="emitParameters"/>

  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:invoke-static*
      ==================  -->
<xsl:template match="dex:invoke-static|dex:invoke-static-range">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>

  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:if test="dex:move-result/@vx">
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="@type"/>
      <xsl:with-param name="register" select="dex:move-result/@vx"/>
      <xsl:with-param name="nocast">1</xsl:with-param>
    </xsl:call-template>
    <xsl:text> = </xsl:text>
  </xsl:if>
  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>.</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="name" select="@method"/>
    <xsl:with-param name="class-type" select="@class-type" />
  </xsl:call-template>
  <xsl:call-template name="appendSignatureDex">
    <xsl:with-param name="signature" select="dex:parameters"/>
  </xsl:call-template>
  <xsl:call-template name="emitParameters"/>
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:sget-*
      ==========  -->
<xsl:template match="dex:sget|dex:sget-wide|dex:sget-boolean|dex:sget-object|dex:sget-byte|dex:sget-short|dex:sget-char">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>

  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast">1</xsl:with-param>
  </xsl:call-template>
  <xsl:text> = </xsl:text>
  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>.</xsl:text>
  <xsl:value-of select="@member-name" />
  <xsl:call-template name="emitBooleanSet">
    <xsl:with-param name="type" select="@vx-type"/>
  </xsl:call-template>
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:sput-*
      ==========  -->
<xsl:template match="dex:sput|dex:sput-wide|dex:sput-object|dex:sput-byte|dex:sput-short|dex:sput-char">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>.</xsl:text>
  <xsl:value-of select="@member-name" />
  <xsl:text> = </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="castto" select="@member-type"/>
  </xsl:call-template>
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:sput-boolean
      ==========  -->
<xsl:template match="dex:sput-boolean">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>.</xsl:text>
  <xsl:value-of select="@member-name" />
  <xsl:text> = (</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="castto" select="@member-type"/>
  </xsl:call-template>
  <xsl:text> == 1);</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:iget*
      ===============  -->
<xsl:template match="dex:iget|dex:iget-wide|dex:iget-object|dex:iget-byte|dex:iget-boolean|dex:iget-short|dex:iget-char">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast">1</xsl:with-param>
  </xsl:call-template>
  <xsl:text> = </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text>.</xsl:text>
  <xsl:value-of select="@member-name" />
  <xsl:call-template name="emitBooleanSet">
    <xsl:with-param name="type" select="@vx-type"/>
  </xsl:call-template>
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:iput*
      ================  -->
<xsl:template match="dex:iput|dex:iput-wide|dex:iput-object|dex:iput-byte|dex:iput-short|dex:iput-char">
  <xsl:text>&nl;&tab5;</xsl:text>
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="@vy-type"/>
      <xsl:with-param name="register" select="@vy"/>
    </xsl:call-template>
  <xsl:text>.</xsl:text>
  <xsl:value-of select="@member-name" />
  <xsl:text> = </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="castto" select="@member-type"/>
  </xsl:call-template>
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:iput-boolean
      ================  -->
<xsl:template match="dex:iput-boolean">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text>.</xsl:text>
  <xsl:value-of select="@member-name" />
  <xsl:text> = (</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
  </xsl:call-template>
  <xsl:text> == 1);</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:new-array
      ==============  -->
<xsl:template match="dex:new-array">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = new </xsl:text>
  <xsl:value-of select="replace(@value, '\[\]', '')"/>
  <xsl:text>[</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text>];</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:fill-array-data
      ==============  -->
<xsl:template match="dex:fill-array-data">
  <xsl:for-each select="dex:constant">
    <xsl:text>&nl;&tab5;</xsl:text>
    <xsl:call-template name="emitTypedAccess">
      <xsl:with-param name="type" select="../@vx-type"/>
      <xsl:with-param name="register" select="../@vx"/>
    </xsl:call-template>
    <xsl:text>[</xsl:text><xsl:value-of select="position()-1"/><xsl:text>] = </xsl:text>
    <xsl:value-of select="@value"/>
    <xsl:text>;</xsl:text>
  </xsl:for-each>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:aget*
      ========  -->
<xsl:template match="dex:aget|dex:aget-wide|dex:aget-byte|dex:aget-char|dex:aget-object|dex:aget-short">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text>[</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vz-type"/>
    <xsl:with-param name="register" select="@vz"/>
  </xsl:call-template>
  <xsl:text>];</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:aget-boolean
      ========  -->
<xsl:template match="dex:aget-boolean">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text>[</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vz-type"/>
    <xsl:with-param name="register" select="@vz"/>
  </xsl:call-template>
  <xsl:text>] ? 1 : 0;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:aput*
      =========  -->
<xsl:template match="dex:aput|dex:aput-wide|dex:aput-char|dex:aput-object|dex:aput-byte|dex:aput-short">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text>[</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vz-type"/>
    <xsl:with-param name="register" select="@vz"/>
  </xsl:call-template>
  <xsl:text>] = </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="castto" select="replace(@vy-type, '\[\]', '')"/>
  </xsl:call-template>
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:aput-boolean
      =========  -->
<xsl:template match="dex:aput-boolean">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text>[</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vz-type"/>
    <xsl:with-param name="register" select="@vz"/>
  </xsl:call-template>
  <xsl:text>] = (</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="castto" select="replace(@vy-type, '\[\]', '')"/>
  </xsl:call-template>
  <xsl:text> == 1);</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:array-length
      ================  -->
<xsl:template match="dex:array-length">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text>.length;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:*-to-*
      ===============  -->
<xsl:template match="dex:int-to-byte|dex:int-to-short|dex:int-to-char|dex:int-to-long|dex:int-to-float|dex:int-to-double|dex:long-to-int|dex:double-to-int|dex:float-to-int|dex:float-to-long|dex:double-to-long|dex:double-to-float|dex:long-to-double|dex:long-to-float|dex:float-to-double">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = (</xsl:text><xsl:value-of select="@vx-type"/><xsl:text>)</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:check-cast
      ==============  -->
<xsl:template match="dex:check-cast">
  <!-- TODO: finish this method
  I'm not going to do anything here, according to the docs:
Checks whether the object reference in vx can be cast to an instance of a class referenced by type_id. Throws ClassCastException if the cast is not possible, continues execution otherwise.
a ClassCastException will be thrown regardless
  <xsl:text>&nl;&tab5;// what should dex:check-cast do?</xsl:text>
  <xsl:call-template name="emitDebugComment"/>-->
</xsl:template>

<!--  dex:instnce-of
      ==============  -->
<xsl:template match="dex:instance-of">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = (</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> instanceof </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>) ? 1 : 0;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:cmp-long
      ============  -->
<xsl:template match="dex:cmp-long">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text> &gt; </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vz-type"/>
    <xsl:with-param name="register" select="@vz"/>
  </xsl:call-template>
  <xsl:text> ? 1 : (</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text> == </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vz-type"/>
    <xsl:with-param name="register" select="@vz"/>
  </xsl:call-template>
  <xsl:text> ? 0 : -1);</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:cmpg-*
      TODO: Implement NaN bias.
      =========================  -->
<xsl:template match="dex:cmpg-double|dex:cmpg-float">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text> &gt; </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vz-type"/>
    <xsl:with-param name="register" select="@vz"/>
  </xsl:call-template>
  <xsl:text> ? 1 : (</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text> == </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vz-type"/>
    <xsl:with-param name="register" select="@vz"/>
  </xsl:call-template>
  <xsl:text> ? 0 : -1);</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:cmpl-*
      TODO: Implement NaN bias.
      =========================  -->
<xsl:template match="dex:cmpl-double|dex:cmpl-float">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text> &gt; </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vz-type"/>
    <xsl:with-param name="register" select="@vz"/>
  </xsl:call-template>
  <xsl:text> ? 1 : (</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text> == </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vz-type"/>
    <xsl:with-param name="register" select="@vz"/>
  </xsl:call-template>
  <xsl:text> ? 0 : -1);</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:neg-*
      =========  -->
<xsl:template match="dex:neg-int|dex:neg-long|dex:neg-float|dex:neg-double">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = -</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
  </xsl:call-template>
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:move*
      =========  -->
<xsl:template match="dex:move|dex:move-from16|dex:move-wide|dex:move-wide-from16|dex:move-object|dex:move-object-from16">
  <xsl:text>&nl;&tab5;</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = </xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vy-type"/>
    <xsl:with-param name="register" select="@vy"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>

<!--  dex:catches
      ===========  -->
<xsl:template match="dex:catches">
<!-- DO NOTHING (exceptions seem to always be stored in r0, if that ever isn't the case then we need to fix something)
  <xsl:for-each select="dex:entry/dex:handler">
<xsl:text>&nl;&tab5;</xsl:text>
<xsl:value-of select="@type"/>
<xsl:text> __ex</xsl:text>
<xsl:value-of select="@target"/>
<xsl:text>;</xsl:text>
  </xsl:for-each>-->
</xsl:template>


<!--  dex:*-switch
      ============  -->
<xsl:template match="dex:sparse-switch|dex:packed-switch">
  <xsl:text>&nl;&tab5;boolean default_case = false;&nl;&tab5;switch (</xsl:text>
  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
  </xsl:call-template>
  <xsl:text>) {</xsl:text>
  <xsl:for-each select="dex:case">
    <xsl:text>&nl;&tab6;case </xsl:text>
    <xsl:value-of select="@key"/>
    <xsl:text>: __next_label = </xsl:text>
    <xsl:value-of select="@label"/>
    <xsl:text>; break;</xsl:text>
  </xsl:for-each>
  <xsl:text>&nl;&tab6;default: default_case = true; break;&nl;&tab5;}&nl;&tab5;if (!default_case) break;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:try-catch
      =============  -->
<xsl:template match="dex:try-catch">
  <xsl:apply-templates/>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:try
      =======  -->
<xsl:template match="dex:try">
  <xsl:text>
            try {
</xsl:text>
  <xsl:apply-templates/>
  <xsl:text>
            }</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:catch
      =========  -->
<xsl:template match="dex:catch">
    <xsl:text>
            catch (Exception ex) {
              __r0.o = ex;
              __next_label = </xsl:text>
    <xsl:value-of select="@target"/>
    <xsl:text>;
              break;
            }</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:move-exception
      ==================  -->
<xsl:template match="dex:move-exception">
  <xsl:text>&nl;&tab5;</xsl:text>
<!--  <xsl:call-template name="emitTypedAccess">
    <xsl:with-param name="type" select="@vx-type"/>
    <xsl:with-param name="register" select="@vx"/>
    <xsl:with-param name="nocast" select="'1'"/>
  </xsl:call-template>
  <xsl:text> = __ex</xsl:text>
    <xsl:value-of select="$currentLabel"/>
 <xsl:text>;
</xsl:text>-->
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  dex:throw
      =========  -->
<xsl:template match="dex:throw">
  <xsl:text>
            throw __r</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>;</xsl:text>
  <xsl:call-template name="emitDebugComment"/>
</xsl:template>


<!--  isObjectRef
      ===========  -->
<xsl:function name="vm:isObjectRef" as="xs:boolean">
  <xsl:param name="type" as="xs:string"/>

  <xsl:value-of select="not($type='byte' or $type='short' or $type='int' or $type='float' or $type='long' or $type='double' or
                            $type='char' or $type='boolean' or $type='void')"/>
</xsl:function>



<!--  appendSignatureDex
      ==================  -->
<xsl:template name="appendSignatureDex">
  <xsl:param name="signature" />
</xsl:template>


<!--
   Default template. If the XMLVM file should contain an instruction
   that is not handled by this stylesheet, this default template
   will make sure we notice it by writing a special error function
   to the output stream.
-->
<xsl:template match="*">
  <xsl:text>&nl;&tab5;// FATAL ERROR!&nl;&tab5;System.err.println("</xsl:text>
  <xsl:value-of select="name()"/>
    <xsl:text>");</xsl:text>
</xsl:template>

</xsl:stylesheet>
