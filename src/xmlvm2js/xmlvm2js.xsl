<?xml version="1.0"?>

<!--
 *
 *  XMLVM - An XML-based Programming Language
 *  Copyright (c) 2004-2010 XMLVM
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
 *  http://www.xmlvm.org
 *
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:vm="http://xmlvm.org"
                xmlns:jvm="http://xmlvm.org/jvm"
                xmlns:dex="http://xmlvm.org/dex"
                version="2.0">

<xsl:output method="text" indent="no"/>

<xsl:template match="vm:xmlvm">
  <xsl:text>
    function ERROR(text) {
      if (window.console) {
        window.console.log("ERROR: " + text);
      }
    }
</xsl:text>
  <xsl:apply-templates/>
</xsl:template>



<xsl:template match="vm:class">

<!-- Added for Dynamic Loading -->
<xsl:call-template name="checkClass">
  <xsl:with-param name="string" select="@extends"/>
</xsl:call-template>

 <xsl:text>
qx.Class.define("</xsl:text><xsl:call-template name="getPackgePlusClassName"><xsl:with-param name="package" select="@package"/><xsl:with-param name="classname" select="@name"/></xsl:call-template><xsl:text>", {
  extend: </xsl:text><xsl:call-template name="emitScopedName"><xsl:with-param name="string" select="@extends"/></xsl:call-template><xsl:text>,
  construct: function() {
  	this.base(arguments);
  },
  statics:
  {
    initClass: function() {
      this.classInitialized = true;
      //__clinit_();
    }</xsl:text>
    <xsl:for-each select="vm:field[count(@isStatic)=1 and @isStatic='true']">
			<xsl:text>,
    $</xsl:text>
			<xsl:value-of select="@name" /><xsl:text>: </xsl:text>
			<xsl:value-of select="if (@value) then @value else 0"/>
	</xsl:for-each>
	<xsl:for-each select="vm:method[count(@isStatic)=1 and @isStatic='true']">
			<xsl:text>,
</xsl:text>
			<xsl:apply-templates select="."/>
	</xsl:for-each>
	<xsl:if test="@extends = 'android.app.Activity'">
	  <xsl:text>,
    // $main___java_lang_String_ARRAYTYPE: function(args) {
      // Dummy main.
      //org_xmlvm_demo_xokoban_Xokoban.launchActivity(null, null);
    // },
    launchActivity: function(stageAssistant, sceneAssistant) {
        android_internal_MojoProxy.theStageAssistant = stageAssistant;
        android_internal_MojoProxy.theSceneAssistant = sceneAssistant;
        new </xsl:text>
      <xsl:call-template name="getPackgePlusClassName">
	    <xsl:with-param name="package" select="@package"/>
	    <xsl:with-param name="classname" select="'R$drawable'"/>
	  </xsl:call-template>
	  <xsl:text>();
	    </xsl:text>
      <xsl:call-template name="getPackgePlusClassName">
	    <xsl:with-param name="package" select="@package"/>
	    <xsl:with-param name="classname" select="@name"/>
	  </xsl:call-template>
        <xsl:text>.initClass();
        android_app_Activity.theActivityClassName = "</xsl:text>
      <xsl:call-template name="getPackgePlusClassName">
	    <xsl:with-param name="package" select="@package"/>
	    <xsl:with-param name="classname" select="@name"/>
	  </xsl:call-template>
      <xsl:text>";
        var app = new </xsl:text>
	  <xsl:call-template name="getPackgePlusClassName">
	    <xsl:with-param name="package" select="@package"/>
	    <xsl:with-param name="classname" select="@name"/>
	  </xsl:call-template>
	  <xsl:text>();
	    app.$$init_();
        app.$onContentChanged();
        app.$onCreate___android_os_Bundle([]);
    }
</xsl:text>
	</xsl:if>
<xsl:text>
  }, //statics

  members:
  {</xsl:text>
    <xsl:for-each select="vm:field[count(@isStatic)=0 or @isStatic='false']">
			<xsl:if test="position() != 1">
				<xsl:text>,</xsl:text>
			</xsl:if>
			<xsl:text>
    $</xsl:text>
			<xsl:value-of select="@name" /><xsl:text>: </xsl:text>
			<xsl:value-of select="if (@value) then @value else 0"/>
	</xsl:for-each>
    <xsl:for-each select="vm:method[count(@isStatic)=0 or @isStatic='false']">
		<!-- Only if there are non-static vm:fields, add the comma in front of the first non-static method-->
		<xsl:if test="(count(../vm:field[count(@isStatic)=0 or @isStatic='false']) != 0) or position() > 1" >
			<xsl:text>,</xsl:text>
		</xsl:if>
		<xsl:apply-templates select="."/>
	</xsl:for-each>
<xsl:text>
  } //members
}); //qx.Class.define
</xsl:text>
<!--  <xsl:apply-templates/> -->

</xsl:template>
<!-- END OF TEMPLATE: CLASS -->


<xsl:template match="vm:method">
 	<xsl:call-template name="emitPrototype"/>
 	 <xsl:apply-templates/>
</xsl:template>


<xsl:template match="vm:method[@isAbstract = 'true']">
 	<xsl:call-template name="emitPrototype"/>
 	<xsl:text>{}</xsl:text>
</xsl:template>


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



<xsl:template match="jvm:code[count(../@nativeInterface) = 0]">
  <xsl:text>
    {
      var __locals = new Array(</xsl:text>
    <xsl:value-of select="@locals"/>
    <xsl:text>);
      var __stack = new Array(</xsl:text>
    <xsl:value-of select="@stack"/>
    <xsl:text>);
      var __sp = 0;
      var __op1;
      var __op2;</xsl:text>
  <xsl:call-template name="initLocals"/>
  <xsl:text>
        var __next_label = -1;
        while (1) {
            switch (__next_label) {
            case -1:</xsl:text>
  <xsl:apply-templates/>
  <xsl:text>
            default:
                alert("XMLVM internal error: reached default of switch");
            }
        }</xsl:text>
  <xsl:text>
    }</xsl:text>        
</xsl:template>



<xsl:template match="jvm:var">
  <!-- do nothing -->
</xsl:template>


<!--
    =============================================================================
  All templates below create code for the various Java VM bytecode instructions
  =============================================================================
-->


<!-- label -->
<xsl:template match="jvm:label|dex:label">
    <xsl:text>
            case </xsl:text>
  <xsl:value-of select="@id"/>
  <xsl:text>:</xsl:text>
</xsl:template>



<!-- aconst_null -->
<xsl:template match="jvm:aconst_null">
    <xsl:text>
            __stack[__sp++] = new java_lang_null();</xsl:text>
</xsl:template>



<!-- athrow -->
<xsl:template match="jvm:athrow">
    <xsl:text>
            throw __stack[--__sp];</xsl:text>
</xsl:template>



<!-- bipush, sipush -->
<xsl:template match="jvm:bipush|jvm:sipush">
  <xsl:text>
            __stack[__sp++] = </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>;</xsl:text>
</xsl:template>



<!-- d2i, f2i -->
<xsl:template match="jvm:d2i|jvm:f2i">
<xsl:text>
    __value = __stack[--__sp];
    __result = Math.floor(__value);
    __stack[__sp++] = __result;</xsl:text>
</xsl:template>
<!-- i2l, i2d, i2f, d2f -->
<xsl:template match="jvm:i2l|jvm:d2f|jvm:i2d|jvm:i2f">
    <!-- do nothing -->
</xsl:template>

<!-- i2b -->
<xsl:template match="jvm:i2b">
<xsl:text>
    __value = __stack[--__sp];
    __result = __value &amp; 0xff;
    __result = (__result > 127) ? __result | 0xffffff00 : __result;
    __stack[__sp++] = __result;</xsl:text>
</xsl:template>




<!-- catch -->
<xsl:template match="jvm:catch">
    <xsl:text>
            /* try {*/</xsl:text>
    <xsl:apply-templates/>
    <xsl:text>/*} catch (</xsl:text>
    <xsl:call-template name="emitType">
        <xsl:with-param name="type" select="@type"/>
    </xsl:call-template>
    <xsl:text> __ex) {
            __sp = 0;
            __stack[__sp++] = __ex;
            goto __label</xsl:text>
    <xsl:value-of select="@using"/>
    <xsl:text>;
            }*/</xsl:text>
</xsl:template>


<xsl:template match="jvm:nop">
<!-- delete nops -->
</xsl:template>

<!-- dup -->
<xsl:template match="jvm:dup">
  <xsl:text>
            __op1 = __stack[__sp - 1];
            __stack[__sp++] = __op1;</xsl:text>
</xsl:template>



<!-- dup_x1 -->
<xsl:template match="jvm:dup_x1">
    <xsl:text>
            __op1 = __stack[--__sp];
            __op2 = __stack[--__sp];
            __stack[__sp++] = __op1;
            __stack[__sp++] = __op2;
            __stack[__sp++] = __op1;</xsl:text>
</xsl:template>



<!-- field -->
<xsl:template match="vm:field">
<!-- Do nothing (we iterate these in class template -->
</xsl:template>


<!-- getfield -->
<xsl:template match="jvm:getfield">
    <xsl:text>
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1.$</xsl:text>
    <xsl:value-of select="@field"/>
    <xsl:text>;</xsl:text>
</xsl:template>



<!-- getstatic -->
<xsl:template match="jvm:getstatic">

  <!-- Added for Dynamic Loading -->
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>
            __stack[__sp++] = </xsl:text>
<!-- <xsl:value-of select="replace(replace(@class-type, 'java.lang.System', 'java.lang.SystemX'), 'java.lang.String', 'java.lang.String')" /> -->
  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>.$</xsl:text>
  <xsl:value-of select="@field"/>
  <xsl:text>;</xsl:text>
</xsl:template>



<!-- goto, goto_w -->
<xsl:template match="jvm:goto|jvm:goto_w">
  <xsl:text>
            __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>; break;</xsl:text>
</xsl:template>  


<xsl:template match="jvm:lookupswitch">
  <xsl:text>    __op1 = __stack[--__sp];
    switch (__op1) {</xsl:text>
  <xsl:for-each select="jvm:case">
    <xsl:text>
        case </xsl:text>
    <xsl:value-of select="@key"/>
    <xsl:text>: __next_label = </xsl:text>
    <xsl:value-of select="@label"/>
    <xsl:text>; break;</xsl:text>
  </xsl:for-each>
  <xsl:if test="jvm:default">
    <xsl:text>
        default: __next_label = </xsl:text>
    <xsl:value-of select="jvm:default/@label"/>
    <xsl:text>; break;</xsl:text>
  </xsl:if>
  <xsl:text>
    }
    break;
</xsl:text>
</xsl:template>



<xsl:template match="jvm:tableswitch">
  <xsl:text>    __op1 = __stack[--__sp];
    switch(__op1) {
    </xsl:text>
  <xsl:for-each select="jvm:case">
    <xsl:text>case </xsl:text>
    <xsl:value-of select="../@min + position() - 1"/>
    <xsl:text>: __next_label = </xsl:text>
    <xsl:value-of select="@label"/>
    <xsl:text>; break;
    </xsl:text>
  </xsl:for-each>
  <xsl:text>default: __next_label = </xsl:text>
  <xsl:value-of select="jvm:default/@label"/>
  <xsl:text>; break;
    }
    break;
</xsl:text>
</xsl:template>



<!-- ladd, iadd, dadd, fadd -->
<xsl:template match="jvm:ladd|jvm:iadd|jvm:dadd|jvm:fadd">
  <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1 + __op2;</xsl:text>
</xsl:template>



<!-- lconst, iconst, dconst,fconst -->
<xsl:template match="jvm:lconst|jvm:iconst|jvm:dconst|jvm:fconst">
  <xsl:text>
            __stack[__sp++] = </xsl:text>
  <xsl:value-of select="@value"/>
  <xsl:text>;</xsl:text>
</xsl:template>





<!-- ifeq -->
<xsl:template match="jvm:ifeq">
  <xsl:text>
            __op1 = __stack[--__sp];
            if (__op1 == 0) { __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>; break }</xsl:text>
</xsl:template>



<!-- if_acmpeq -->
<xsl:template match="jvm:if_acmpeq">
  <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if (__op1 === __op2) { __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>; break }</xsl:text>
</xsl:template>



<!-- if_icmpge -->
<xsl:template match="jvm:if_icmpge">
  <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if (__op1 >= __op2) { __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>; break }</xsl:text>
</xsl:template>



<!-- if_icmpgt -->
<xsl:template match="jvm:if_icmpgt">
  <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if (__op1 > __op2) { __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>; break }</xsl:text>
</xsl:template>



<!-- if_icmple -->
<xsl:template match="jvm:if_icmple">
  <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if (__op1 &lt;= __op2) { __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>; break }</xsl:text>
</xsl:template>


<!-- if_icmpeq -->
<xsl:template match="jvm:if_icmpeq">
  <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if (__op1 == __op2) { __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>; break }</xsl:text>
</xsl:template>



<!-- if_icmplt -->
<xsl:template match="jvm:if_icmplt">
  <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if (__op1 &lt; __op2) { __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>; break }</xsl:text>
</xsl:template>



<!-- if_icmpne -->
<xsl:template match="jvm:if_icmpne">
  <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if (__op1 != __op2) { __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>; break }</xsl:text>
</xsl:template>

<!-- if_acmpne -->
<xsl:template match="jvm:if_acmpne">
  <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if (__op1 !== __op2) { __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>; break }</xsl:text>
</xsl:template>



<!-- idiv -->
<xsl:template match="jvm:ldiv|jvm:idiv">
  <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = Math.floor(__op1 / __op2);</xsl:text>
</xsl:template>


<!-- ldiv, fdiv, ddiv -->
<xsl:template match="jvm:fdiv|jvm:ddiv">
  <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1 / __op2;</xsl:text>
</xsl:template>


<!-- ifgt -->
<xsl:template match="jvm:ifgt">
    <xsl:text>
            if (__stack[--__sp] &gt; 0) { __next_label = </xsl:text>
    <xsl:value-of select="@label"/>
    <xsl:text>; break }</xsl:text>
</xsl:template>

<!-- ifge -->
<xsl:template match="jvm:ifge">
    <xsl:text>
            if (__stack[--__sp] &gt;= 0) { __next_label = </xsl:text>
    <xsl:value-of select="@label"/>
    <xsl:text>; break }</xsl:text>
</xsl:template>

<!-- ifle -->
<xsl:template match="jvm:ifle">
    <xsl:text>
            if (__stack[--__sp] &lt;= 0) { __next_label = </xsl:text>
    <xsl:value-of select="@label"/>
    <xsl:text>; break }</xsl:text>
</xsl:template>

<!-- iflt -->
<xsl:template match="jvm:iflt">
    <xsl:text>
            if (__stack[--__sp] &lt; 0) { __next_label = </xsl:text>
    <xsl:value-of select="@label"/>
    <xsl:text>; break }</xsl:text>
</xsl:template>

<!-- ifne -->
<xsl:template match="jvm:ifne">
    <xsl:text>
            if (__stack[--__sp] != 0) { __next_label = </xsl:text>
    <xsl:value-of select="@label"/>
    <xsl:text>; break }</xsl:text>
</xsl:template>



<!-- ifnull -->
<xsl:template match="jvm:ifnull">
  <xsl:text>
            if ((__stack[--__sp] instanceof java_lang_null) || (__stack[__sp] == 0)) { __next_label = </xsl:text>
  <xsl:value-of select="@label"/>
  <xsl:text>; break }</xsl:text>
</xsl:template>


<!-- ifnonnull -->
<xsl:template match="jvm:ifnonnull">
    <xsl:text>
            if (!(__stack[--__sp] instanceof java_lang_null)) { __next_label = </xsl:text>
    <xsl:value-of select="@label"/>
    <xsl:text>; break }</xsl:text>
</xsl:template>


<!-- irem -->
<xsl:template match="jvm:irem">
  <xsl:text>
          __value2 = __stack[--__sp];
          __value1 = __stack[--__sp];
          __stack[__sp++] = __value1 - Math.floor(__value1 / __value2) * __value2;
   </xsl:text>
</xsl:template>

<!-- ineg  TODO: if most neg value, result must be most neg value again-->
<xsl:template match="jvm:ineg">
  <xsl:text>
          __value = __stack[--__sp];
          __stack[__sp++] = __value * (-1);
   </xsl:text>
</xsl:template>

<!-- fneg  TODO: if most neg value, result must be most neg value again-->
<xsl:template match="jvm:fneg">
  <xsl:text>
          __value = __stack[--__sp];
          __stack[__sp++] = __value * (-1.0);
   </xsl:text>
</xsl:template>



<!-- iinc -->
<xsl:template match="jvm:iinc">
  <xsl:text>
            __locals[</xsl:text>
  <xsl:value-of select="@index"/>
  <xsl:text>] += </xsl:text>
  <xsl:value-of select="@incr"/>
  <xsl:text>;</xsl:text>
</xsl:template>


<!-- iload, aload, fload, lload, dload -->
<xsl:template match="jvm:iload|jvm:aload|jvm:fload|jvm:lload|jvm:dload">
  <xsl:text>
            __stack[__sp++] = __locals[</xsl:text>
  <xsl:value-of select="@index"/>
  <xsl:text>];</xsl:text>
</xsl:template>



<!-- imul, dmul -->
<xsl:template match="jvm:imul|jvm:dmul|jvm:fmul">
  <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1 * __op2;</xsl:text>
</xsl:template>

<!-- TODO: *cmpl and *cmpg are different if result is NaN -->
<!-- dcmpl, dcmpg, fcmpl, fcmpg, lcmp -->
<xsl:template match="jvm:dcmpl|jvm:dcmpg|jvm:fcmpl|jvm:fcmpg|jvm:lcmp">
  <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            if(__op1 &gt; __op2)
            	__stack[__sp++] = 1;
            else if(__op1 == __op2)
            	__stack[__sp++] = 0;
            else if(__op1 &lt; __op2)
            	__stack[__sp++] = -1;</xsl:text>
</xsl:template>


<!-- anewarray, newarray -->
<xsl:template match="jvm:anewarray|jvm:newarray">
  <xsl:text>
    __count = __stack[--__sp];
    __stack[__sp++] = new Array(__count);
  </xsl:text>
</xsl:template>

<!-- castore, iastore, aastore, bastore, dastore -->
<xsl:template match="jvm:castore|jvm:iastore|jvm:aastore|jvm:bastore|jvm:dastore">
  <xsl:text>
    __value    = __stack[--__sp];
    __index    = __stack[--__sp];
    __arrayref = __stack[--__sp];
    __arrayref[__index] = __value;
  </xsl:text>
</xsl:template>

<!-- caload, iaload, aaload, baload, daload -->
<xsl:template match="jvm:caload|jvm:iaload|jvm:aaload|jvm:baload|jvm:daload">
  <xsl:text>
    __index    = __stack[--__sp];
    __arrayref = __stack[--__sp];
    __stack[__sp++] = __arrayref[__index];
  </xsl:text>
</xsl:template>

<!-- ior -->
<xsl:template match="jvm:ior">
  <xsl:text>
    __value1    = __stack[--__sp];
    __value2    = __stack[--__sp];
    __stack[__sp++] = (__value1 || __value2);
  </xsl:text>
</xsl:template>

<!-- ixor -->
<xsl:template match="jvm:ixor">
  <xsl:text>
    __value1    = __stack[--__sp];
    __value2    = __stack[--__sp];
    __stack[__sp++] = (__value1 ^ __value2);
  </xsl:text>
</xsl:template>

<!-- iand -->
<xsl:template match="jvm:iand">
  <xsl:text>
    __value1    = __stack[--__sp];
    __value2    = __stack[--__sp];
    __stack[__sp++] = (__value1 &amp;&amp; __value2);
  </xsl:text>
</xsl:template>

<!-- instanceof -->
<xsl:template match="jvm:instanceof">
  <xsl:text>
    __objectref    = __stack[--__sp];
    __stack[__sp++] = (__objectref</xsl:text>
    <xsl:choose>
      <xsl:when test="contains(@type, '[]')">
        <xsl:text>.constructor.toString().indexOf("Array") != -1</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text> instanceof </xsl:text>
        <xsl:call-template name="emitScopedName">
          <xsl:with-param name="string" select="@type"/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text>) ? 1 : 0;</xsl:text>
</xsl:template>

<!-- checkcast -->
<xsl:template match="jvm:checkcast">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string">java.lang.ClassCastException</xsl:with-param>
  </xsl:call-template>
  <xsl:text>
    __objectref    = __stack[__sp - 1];
    if (!(__objectref instanceof java_lang_null) &amp;&amp; !(__objectref</xsl:text>
    <xsl:choose>
      <xsl:when test="contains(@type, '[]')">
        <xsl:text>.constructor.toString().indexOf("Array") != -1</xsl:text>
      </xsl:when>
      <xsl:otherwise>
        <xsl:text> instanceof </xsl:text>
        <xsl:call-template name="emitScopedName">
          <xsl:with-param name="string" select="@type"/>
        </xsl:call-template>
      </xsl:otherwise>
    </xsl:choose>
    <xsl:text>)) {throw (new java_lang_ClassCastException).$$init_java_lang_ClassCastException___java_lang_String("ClassCastException");}</xsl:text>
</xsl:template>

<!-- arraylength -->
<xsl:template match="jvm:arraylength">
  <xsl:text>
    __arrayref    = __stack[--__sp];
    __stack[__sp++] = __arrayref.length;
  </xsl:text>
</xsl:template>

<!-- monitorenter -->
<!-- No thread support, just pop value off stack -->
<xsl:template match="jvm:monitorenter">
  <xsl:text>
    --__sp;
  </xsl:text>
</xsl:template>




<!-- invokestatic -->
<xsl:template match="jvm:invokestatic">
  <!-- Added for Dynamic Loading -->
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  

  <xsl:text>
            __sp -= </xsl:text>
  <xsl:value-of select="count(vm:signature/vm:parameter)"/>
  <xsl:text>;
            </xsl:text>
  <xsl:if test="vm:signature/vm:return/@type != 'void'">
    <xsl:text>__op1 = </xsl:text>
  </xsl:if>
  <xsl:call-template name="emitScopedName">
      <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>.</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="class-type" select="@class-type"/>
    <xsl:with-param name="name" select="@method"/>
    <xsl:with-param name="signature" select="vm:signature" />
  </xsl:call-template>
  <xsl:text>(</xsl:text>
  <xsl:for-each select="vm:signature/vm:parameter">
    <xsl:if test="position() != 1">
      <xsl:text>, </xsl:text>
    </xsl:if>
    <xsl:text>__stack[__sp + </xsl:text>
    <xsl:value-of select="position() - 1"/>
    <xsl:text>]</xsl:text>
  </xsl:for-each>
  <xsl:text>);</xsl:text>
  <xsl:if test="vm:signature/vm:return/@type != 'void'">
    <xsl:text>
            __stack[__sp++] = __op1;</xsl:text>
  </xsl:if>
</xsl:template>



<!-- invokevirtual|invokeinterface -->
<xsl:template match="jvm:invokevirtual|jvm:invokeinterface">
  <!-- Added for Dynamic Loading -->
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  
  <xsl:text>
            __sp -= </xsl:text>
  <xsl:value-of select="count(vm:signature/vm:parameter) + 1"/>
  <xsl:text>;
            </xsl:text>
  <xsl:if test="vm:signature/vm:return/@type != 'void'">
    <xsl:text>__op1 = </xsl:text>
  </xsl:if>
  <xsl:text>__stack[__sp].</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="class-type" select="@class-type"/>
    <xsl:with-param name="name" select="@method"/>
    <xsl:with-param name="signature" select="vm:signature" />
  </xsl:call-template>
  <xsl:text>(</xsl:text>
  <xsl:for-each select="vm:signature/vm:parameter">
    <xsl:if test="position() != 1">
      <xsl:text>, </xsl:text>
    </xsl:if>
    <xsl:text>__stack[__sp + </xsl:text>
    <xsl:value-of select="position()"/>
    <xsl:text>]</xsl:text>
  </xsl:for-each>
  <xsl:text>);</xsl:text>  
  <xsl:if test="vm:signature/vm:return/@type != 'void'">
    <xsl:text>
            __stack[__sp++] = __op1;</xsl:text>
  </xsl:if>
</xsl:template>
  

<!-- invokespecial -->

<xsl:template match="jvm:invokespecial">
  <!-- Added for Dynamic Loading -->
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  
  <xsl:text>
            __sp -= </xsl:text>
  <xsl:value-of select="count(vm:signature/vm:parameter) + 1"/>
  <xsl:text>;
            </xsl:text>
  <xsl:if test="vm:signature/vm:return/@type != 'void'">
  </xsl:if>
  <xsl:text>
            errorCode = 0;
            if(__stack[__sp] == this) {
             try {
               __op1 = __stack[__sp].self(arguments).superclass.prototype.</xsl:text>
  <xsl:call-template name="emitMethodName">
    <!-- <xsl:with-param name="class-type" select="@class-type"/> -->
    <xsl:with-param name="name" select="@method"/>
    <!-- <xsl:with-param name="signature" select="vm:signature" /> -->
  </xsl:call-template>
  <xsl:text>.call(__stack[__sp]</xsl:text>
  
  <xsl:for-each select="vm:signature/vm:parameter">
    <!-- <xsl:if test="position() != 1"> -->
      <xsl:text>, </xsl:text>
    <!-- </xsl:if> -->
    <xsl:text>__stack[__sp + </xsl:text>
    <xsl:value-of select="position()"/>
    <xsl:text>]</xsl:text>
  </xsl:for-each>
  <xsl:text>);
             } catch (e) {
             	errorCode = 1;
             }
            }
            if((errorCode != 0) || (__stack[__sp] != this)){
              __op1 = __stack[__sp].</xsl:text>
  <xsl:call-template name="emitMethodName">
    <!-- <xsl:with-param name="class-type" select="@class-type"/> -->
    <xsl:with-param name="name" select="@method"/>
    <!-- <xsl:with-param name="signature" select="vm:signature" /> -->
  </xsl:call-template>
  <xsl:text>(</xsl:text>
  
  <xsl:for-each select="vm:signature/vm:parameter">
    <xsl:if test="position() != 1">
      <xsl:text>, </xsl:text>
    </xsl:if>
    <xsl:text>__stack[__sp + </xsl:text>
    <xsl:value-of select="position()"/>
    <xsl:text>]</xsl:text>
  </xsl:for-each>
  <xsl:text>);
            }</xsl:text>
 
  <xsl:if test="vm:signature/vm:return/@type != 'void'">
    <xsl:text>
            __stack[__sp++] = __op1;</xsl:text>
  </xsl:if>
</xsl:template>
  


<!-- lreturn, freturn, dreturn, ireturn, areturn -->  
<xsl:template match="jvm:freturn|jvm:lreturn|jvm:dreturn|jvm:ireturn|jvm:areturn">
  <xsl:text>
            return __stack[--__sp];</xsl:text>
</xsl:template>

<xsl:template match="jvm:dstore|jvm:istore|jvm:astore|jvm:fstore|jvm:lstore">
  <xsl:text>
            __locals[</xsl:text>
  <xsl:value-of select="@index"/>
  <xsl:text>] = __stack[--__sp];</xsl:text>
</xsl:template>


<!--  TODO: Overflows -->
<!-- lsub, isub, fsub, dsub -->
<xsl:template match="jvm:lsub|jvm:isub|jvm:fsub|jvm:dsub">
  <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op1 - __op2;</xsl:text>
</xsl:template>


<xsl:template match = "iconst">
 <xsl:text>
        __stack[__sp++] = </xsl:text>
        <xsl:value-of select="@value"/>
        <xsl:text>;</xsl:text>
</xsl:template>

<!-- ldc, ldc_w, ldc2_w -->
<xsl:template match="jvm:ldc|jvm:ldc_w|jvm:ldc2_w">
  <xsl:choose>
    <xsl:when test="@type = 'java.lang.String'">
      <xsl:call-template name="checkClass">
        <xsl:with-param name="string">java.lang.String</xsl:with-param>
      </xsl:call-template>
      <xsl:text>
            __stack[__sp++] = new java_lang_String("</xsl:text>
      <xsl:variable name="str" select="replace(@value, '&quot;', '\\&#x22;')"/>
      <xsl:value-of select="replace($str, '&#xA;', '\\n')"/>
      <xsl:text>");</xsl:text>
    </xsl:when>
    <xsl:when test="@type = 'double'">
        <xsl:text>
        __stack[__sp++] = </xsl:text>
        <xsl:value-of select="@value"/>
        <xsl:text>;</xsl:text>
    </xsl:when>
    <xsl:when test="@type = 'long'">
        <xsl:text>
        __stack[__sp++] = </xsl:text>
        <xsl:value-of select="@value"/>
        <xsl:text>;</xsl:text>
    </xsl:when>
    <xsl:when test="@type = 'int'">
        <xsl:text>
        __stack[__sp++] = </xsl:text>
        <xsl:value-of select="@value"/>
        <xsl:text>;</xsl:text>
    </xsl:when>
    <xsl:when test="@type = 'float'">
        <xsl:text>
        __stack[__sp++] = </xsl:text>
        <xsl:value-of select="@value"/>
        <xsl:text>;</xsl:text>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>
        __stack[__sp++] = new java_lang_Class("</xsl:text>
      <xsl:call-template name="emitScopedName">
        <xsl:with-param name="string" select="@type"/>
      </xsl:call-template>
      <xsl:text>");</xsl:text>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>



<!-- new -->
<xsl:template match="jvm:new">
  <!-- Added for Dynamic Loading -->
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@type"/>
  </xsl:call-template>

    <xsl:choose>
        <xsl:when test="count(vm:signature) = 0">
          <xsl:text>
            __stack[__sp++] = new </xsl:text>
         <xsl:call-template name="emitScopedName">
            <xsl:with-param name="string" select="@type"/>
          </xsl:call-template>
          <xsl:text>();</xsl:text>
        </xsl:when>
        <xsl:otherwise>
            <xsl:text>ERROR();// new with signature not handled yet</xsl:text>
        </xsl:otherwise>
    </xsl:choose>
</xsl:template>



<!-- pop -->
<xsl:template match="jvm:pop">
    <xsl:text>
            __sp--;</xsl:text>
</xsl:template>



<!-- putfield -->
<xsl:template match="jvm:putfield">
    <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __op1.$</xsl:text>
    <xsl:value-of select="@field"/>
    <xsl:text> = __op2;</xsl:text>
</xsl:template>



<!-- putstatic -->
<xsl:template match="jvm:putstatic">
    <!-- Added for Dynamic Loading -->
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  
  <xsl:text>
            </xsl:text>
  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>.$</xsl:text>
  <xsl:value-of select="@field"/>
  <xsl:text> = __stack[--__sp];</xsl:text>
</xsl:template>



<!-- return -->
<xsl:template match="jvm:return">
  <xsl:text>
            return;</xsl:text>
</xsl:template>



<!-- swap -->
<xsl:template match="jvm:swap">
    <xsl:text>
            __op2 = __stack[--__sp];
            __op1 = __stack[--__sp];
            __stack[__sp++] = __op2;
            __stack[__sp++] = __op1;</xsl:text>
</xsl:template>



<!-- ============================================================================
   All templates below are essentially helper functions that are called by
   various other templates.
   ============================================================================
-->

<!-- Added for Dynamic Loading -->
<xsl:template name="checkClass">
  <xsl:param name="string" />
  <xsl:text>
  if (</xsl:text><xsl:call-template name="emitScopedName"><xsl:with-param name="string" select="$string"/></xsl:call-template><xsl:text>.initialized == undefined &amp;&amp; </xsl:text>
  <xsl:call-template name="emitScopedName"><xsl:with-param name="string" select="$string"/></xsl:call-template><xsl:text>.$$clinit_ != undefined) {</xsl:text>
  <xsl:call-template name="emitScopedName"><xsl:with-param name="string" select="$string"/></xsl:call-template><xsl:text>.initialized = 1;</xsl:text>
  <xsl:call-template name="emitScopedName"><xsl:with-param name="string" select="$string"/></xsl:call-template><xsl:text>.$$clinit_();</xsl:text>
  <xsl:call-template name="emitScopedName"><xsl:with-param name="string" select="$string"/></xsl:call-template><xsl:text>.$$clinit_ = undefined; }</xsl:text>
</xsl:template>


<!--
   emitPrototype
   =============
   Writes the prototype of a method. Called from within context of tag
   <method>.
-->  
<xsl:template name="emitPrototype">
<xsl:text>
</xsl:text>

<xsl:text>    </xsl:text>
      <xsl:call-template name="emitMethodName">
	    <xsl:with-param name="name" select="@name"/>
    	<xsl:with-param name="signature" select="vm:signature" />
  	    <!-- <xsl:with-param name="class-type" select="../@name"/> -->
	  </xsl:call-template>
     <!--  <xsl:call-template name="emitScopedName">
      	<xsl:with-param name="string" select="../@package"/>
      </xsl:call-template><xsl:text>_</xsl:text>
      <xsl:value-of select="../@name" /> -->
	  <xsl:text> : </xsl:text>


	<xsl:text>function(</xsl:text>
	<xsl:for-each select="vm:signature/vm:parameter">
    	<xsl:if test="position() != 1">
      		<xsl:text>, </xsl:text>
	    </xsl:if>
    	<xsl:text> __arg</xsl:text>
    	<xsl:value-of select="position()"/>
  	</xsl:for-each>
	<xsl:text>)</xsl:text>
</xsl:template>

<!--
   initLocals
   ==========
   This function is called from the template for <jvm:code>. Its task is
   to initialize the local variables. This basically means that the
   actual parameters have to be copied to __locals[i]. If the method
   is not static, 'this' will be copied to __locals[0]. This function
   basically only emits code for 'this'. The remaining parameters
   are copied in the template 'initRemainingLocals' below.
-->

<xsl:template name="initLocals">
    <xsl:for-each select="jvm:var">
		<xsl:choose>    
      		<xsl:when test="@name = 'this'">
      			<xsl:text>
        __locals[</xsl:text>
    			<xsl:value-of select="@id" />
    			<xsl:text>] = this;</xsl:text>
     		</xsl:when>
     		<xsl:otherwise>
     			<xsl:if test="(position()-count(../jvm:var[@name='this'])) &lt;= count(../../vm:signature/vm:parameter)" >
     			  <xsl:text>
     	__locals[</xsl:text>
     	  		  <xsl:value-of select="@id" />
     	  		  <xsl:text>] = __arg</xsl:text>
     	  		  <xsl:value-of select="(position()-count(../jvm:var[@name='this']))" />
     	  		  <xsl:text>;</xsl:text>
     			</xsl:if>
     		</xsl:otherwise>
     	</xsl:choose>
    </xsl:for-each>
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
      <xsl:text>$$init_</xsl:text>
       <xsl:call-template name="emitScopedName">
          <xsl:with-param name="string" select="$class-type"/>
      </xsl:call-template>
      <!-- Append signature to constructor name -->
      <xsl:call-template name="appendSignature">
        <xsl:with-param name="signature" select="vm:signature" />
      </xsl:call-template>
    </xsl:when>
    <xsl:when test="$name = '&lt;clinit&gt;'">
      <xsl:text>$$clinit_</xsl:text>
      <xsl:call-template name="emitScopedName">
          <xsl:with-param name="string" select="$class-type"/>
      </xsl:call-template>
    </xsl:when>
    
    <xsl:when test="$name = '.cctor'">
      <xsl:text>$$cctor</xsl:text>
      <xsl:call-template name="emitScopedName">
          <xsl:with-param name="string" select="$class-type"/>
      </xsl:call-template>
    </xsl:when>
    <xsl:otherwise>
      <xsl:text>$</xsl:text><xsl:value-of select="$name"/>
      <!-- Append signature to method name -->
      <xsl:call-template name="appendSignature">
        <xsl:with-param name="signature" select="vm:signature" />
      </xsl:call-template>
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
  <xsl:value-of select="translate($string, '.', '_')" />
</xsl:template>

<!--
   emitType
   ========
   Emits a type reference. Basic Java types are mapped to certain C++ types
   (e.g., int is mapped to XMLVM::INT). Object references are mapped to
   C++ types of the same name with the suffix '_ref'.
   Input: 'type': Java type
-->
<xsl:template name="emitType">
  <xsl:param name="type"/>
  <xsl:choose>
    <xsl:when test="$type = 'void'">
      <xsl:text>void</xsl:text>
    </xsl:when>
    <xsl:when test="$type = 'int'">
      <xsl:text>XMLVM::INT</xsl:text>
    </xsl:when>
    <xsl:otherwise>
          <xsl:call-template name="emitScopedName">
            <xsl:with-param name="string" select="$type"/>
          </xsl:call-template>
          <xsl:text>_ref</xsl:text>
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


<xsl:template name="appendSignature">
  <xsl:param name="signature" />
  <xsl:choose>
    <xsl:when test="count(vm:signature/vm:parameter) != 0">
      <xsl:text>__</xsl:text>
      <xsl:for-each select="vm:signature/vm:parameter">
        <xsl:text>_</xsl:text>
        <xsl:call-template name="emitScopedName">
          <xsl:with-param name="string">
            <xsl:call-template name="replaceString">
              <xsl:with-param name="text" select="@type" />
              <xsl:with-param name="replace">[]</xsl:with-param>
              <xsl:with-param name="with">_ARRAYTYPE</xsl:with-param>
            </xsl:call-template>
          </xsl:with-param>
        </xsl:call-template>
      </xsl:for-each>
    </xsl:when>
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



<!--
 _____    _____  __    __ 
|  _  \  | ____| \ \  / / 
| | |  | | |__    \ \/ /  
| | |  | |  __|    }  {   
| |_|  | | |___   / /\ \  
|_____/  |_____| /_/  \_\ 
-->

<xsl:template match="dex:code">
  <xsl:text>
    {
        var __reg = new Array(</xsl:text>
  <xsl:value-of select="@register-size" />
  <xsl:text>);</xsl:text>
  <xsl:call-template name="initLocalsDex" />
  <xsl:text>
        var __next_label = -1;
        while (1) {
          switch (__next_label) {
            case -1:</xsl:text>
  <xsl:apply-templates/>
  <xsl:text>
            default:
              alert("XMLVM internal error: reached default of switch");
          }
        }</xsl:text>
  <xsl:text>
    }</xsl:text>
</xsl:template>

<xsl:template match="dex:return-void">
  <xsl:text>
            return;</xsl:text>
</xsl:template>

<!--  dex:return-object
      =================  -->
<xsl:template match="dex:return-object">
  <xsl:text>
            return __reg[</xsl:text>
  <xsl:value-of select="@vx"/>
  <xsl:text>];</xsl:text>
</xsl:template>


<!--  dex:var
      =======  -->
<xsl:template match="dex:var">
  <!-- do nothing -->
</xsl:template>


<!--  dex:const-string
      ================  -->
<xsl:template match="dex:const-string">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = new java_lang_String("</xsl:text>
  <xsl:value-of select="@value" />
  <xsl:text>");</xsl:text>
</xsl:template>


<!--  dex:const*
      ================  -->
<xsl:template match="dex:const|dex:const-4|dex:const-16|dex:const-wide|dex:const-wide-16|dex:const-wide-32|dex:const-high16|dex:const-wide-high16">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = </xsl:text>
  <xsl:value-of select="@value" />
  <xsl:text>;</xsl:text>
</xsl:template>


<!--  dex:add-int-lit*
      ================  -->
<xsl:template match="dex:add-int-lit8|add-int-lit16">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>] + </xsl:text>
  <xsl:value-of select="@value" />
  <xsl:text>;</xsl:text>
</xsl:template>

<!--  dex:add-int-*
      ================  -->
<xsl:template match="dex:add-int|dex:add-int-2addr|dex:add-double|dex:add-double-2addr|dex:add-float|dex:add-float-2addr|dex:add-long|dex:add-long-2addr">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>] + __reg[</xsl:text>
  <xsl:value-of select="@vz" />
  <xsl:text>];</xsl:text>
</xsl:template>

<!--  dex:mul-*
      ================  -->
<xsl:template match="dex:mul-int|dex:mul-2addr|dex:mul-double|dex:mul-double-2addr|dex:mul-float|dex:mul-float-2addr|dex:mul-long|dex:mul-long-2addr">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>] * __reg[</xsl:text>
  <xsl:value-of select="@vz" />
  <xsl:text>];</xsl:text>
</xsl:template>

<!--  dex:div-int*
      ================  -->
<xsl:template match="dex:div-int|dex:div-int-2addr|dex:div-long|dex:div-long-2addr">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = Math.floor(__reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>] / __reg[</xsl:text>
  <xsl:value-of select="@vz" />
  <xsl:text>]);</xsl:text>
</xsl:template>

<!--  dex:div-*
      ================  -->
<xsl:template match="dex:div-double|dex:div-double-2addr|dex:div-float|dex:div-float-2addr">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>] / __reg[</xsl:text>
  <xsl:value-of select="@vz" />
  <xsl:text>];</xsl:text>
</xsl:template>

<!--  dex:subint-*
      ================  -->
<xsl:template match="dex:sub-int|dex:sub-int-2addr|dex:sub-double|dex:sub-double-2addr|dex:sub-float|dex:sub-float-2addr|dex:sub-long|dex:sub-long-2addr">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>] - __reg[</xsl:text>
  <xsl:value-of select="@vz" />
  <xsl:text>];</xsl:text>
</xsl:template>

<!--  dex:if-lt
      ================  -->
<xsl:template match="dex:if-lt">
  <xsl:text>
            if (__reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] &lt; __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>]){ __next_label = </xsl:text>
  <xsl:value-of select="@target" />
  <xsl:text>; break; }</xsl:text>
</xsl:template>


<!--  dex:if-gt
      ================  -->
<xsl:template match="dex:if-gt">
  <xsl:text>
            if (__reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] &gt; __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>]){ __next_label = </xsl:text>
  <xsl:value-of select="@target" />
  <xsl:text>; break; }</xsl:text>
</xsl:template>

<!--  dex:if-nez
      ==========  -->
<xsl:template match="dex:if-nez">
  <xsl:text>
            if (__reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] != 0 ){ __next_label = </xsl:text>
  <xsl:value-of select="@target" />
  <xsl:text>; break; }</xsl:text>
</xsl:template>

<!--  dex:if-eqz
      ==========  -->
<xsl:template match="dex:if-eqz">
  <xsl:text>
            if (__reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] == 0 ){ __next_label = </xsl:text>
  <xsl:value-of select="@target" />
  <xsl:text>; break; }</xsl:text>
</xsl:template>

<!--  dex:if-gez
      ==========  -->
<xsl:template match="dex:if-gez">
  <xsl:text>
            if (__reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] &gt; 0 ){ __next_label = </xsl:text>
  <xsl:value-of select="@target" />
  <xsl:text>; break; }</xsl:text>
</xsl:template>

<!--  dex:if-ltz
      ==========  -->
<xsl:template match="dex:if-ltz">
  <xsl:text>
            if (__reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] &lt; 0 ){ __next_label = </xsl:text>
  <xsl:value-of select="@target" />
  <xsl:text>; break; }</xsl:text>
</xsl:template>

<!--  dex:goto
      ========  -->
<xsl:template match="dex:goto">
  <xsl:text>
            __next_label = </xsl:text>
  <xsl:value-of select="@target" />
  <xsl:text>; break;</xsl:text>
</xsl:template>


<!--  dex:invoke-virtual
      ================  -->
<xsl:template match="dex:invoke-virtual">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>
              </xsl:text>
  <xsl:if test="dex:move-result/@vx">
    <xsl:text>__reg[</xsl:text>
    <xsl:value-of select="dex:move-result/@vx" />
    <xsl:text>] = </xsl:text>
  </xsl:if>

  <xsl:text>__reg[</xsl:text>
  <xsl:value-of select="@register" />
  <xsl:text>].</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="name" select="@method"/>
  </xsl:call-template>
  <xsl:call-template name="appendSignatureDex">
    <xsl:with-param name="signature" select="dex:parameters"/>
  </xsl:call-template>
  <xsl:text>(</xsl:text>
    <xsl:for-each select="dex:parameters/dex:parameter">
    <xsl:if test="position() != 1">
      <xsl:text>, </xsl:text>
    </xsl:if>
    <xsl:text>__reg[</xsl:text>
    <xsl:value-of select="@register"/>
    <xsl:text>]</xsl:text>
  </xsl:for-each>
  <xsl:text>);</xsl:text>
</xsl:template>

<!--  dex:invoke-direct
      ================
      This is used to call super-constructors. Hence the special handling. -->
<xsl:template match="dex:invoke-direct">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>

  <xsl:text>
            if (__reg[</xsl:text>
  <xsl:value-of select="@register" />
  <xsl:text>] == this &amp;&amp; &quot;</xsl:text>
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
    <xsl:text>  __reg[</xsl:text>
    <xsl:value-of select="dex:move-result/@vx" />
    <xsl:text>] = </xsl:text>
  </xsl:if>
  <xsl:text>__reg[</xsl:text>
  <xsl:value-of select="@register" />
  <xsl:text>].self(arguments).superclass.prototype.</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="name" select="@method"/>
  </xsl:call-template>
  <xsl:call-template name="appendSignatureDex">
    <xsl:with-param name="signature" select="dex:parameters"/>
  </xsl:call-template>
  <xsl:text>.call(__reg[</xsl:text>
  <xsl:value-of select="@register" />
  <xsl:text>]</xsl:text>
  <xsl:for-each select="dex:parameters/dex:parameter">
    <xsl:text>, </xsl:text>
    <xsl:text>__reg[</xsl:text>
    <xsl:value-of select="@register"/>
    <xsl:text>]</xsl:text>
  </xsl:for-each>
  <xsl:text>);
            } else {
            </xsl:text>
  <xsl:if test="dex:move-result/@vx">
    <xsl:text>  __reg[</xsl:text>
    <xsl:value-of select="dex:move-result/@vx" />
    <xsl:text>] = </xsl:text>
  </xsl:if>

  <xsl:text>  __reg[</xsl:text>
  <xsl:value-of select="@register" />
  <xsl:text>].</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="name" select="@method"/>
  </xsl:call-template>
  <xsl:call-template name="appendSignatureDex">
    <xsl:with-param name="signature" select="dex:parameters"/>
  </xsl:call-template>
  <xsl:text>(</xsl:text>
    <xsl:for-each select="dex:parameters/dex:parameter">
    <xsl:if test="position() != 1">
      <xsl:text>, </xsl:text>
    </xsl:if>
    <xsl:text>__reg[</xsl:text>
    <xsl:value-of select="@register"/>
    <xsl:text>]</xsl:text>
  </xsl:for-each>
  <xsl:text>);
            }</xsl:text>
</xsl:template>


<!--  dex:invoke-super
      ================ -->
<xsl:template match="dex:invoke-super">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>
            </xsl:text>
  <xsl:if test="dex:move-result/@vx">
    <xsl:text>__reg[</xsl:text>
    <xsl:value-of select="dex:move-result/@vx" />
    <xsl:text>] = </xsl:text>
  </xsl:if>
  <xsl:text>__reg[</xsl:text>
  <xsl:value-of select="@register" />
  <xsl:text>].self(arguments).superclass.prototype.</xsl:text>
  <xsl:call-template name="emitMethodName">
    <xsl:with-param name="name" select="@method"/>
  </xsl:call-template>
  <xsl:call-template name="appendSignatureDex">
    <xsl:with-param name="signature" select="dex:parameters"/>
  </xsl:call-template>
  <xsl:text>.call(__reg[</xsl:text>
  <xsl:value-of select="@register" />
  <xsl:text>]</xsl:text> 
  
  <xsl:for-each select="dex:parameters/dex:parameter">
    <xsl:text>, </xsl:text>
    <xsl:text>__reg[</xsl:text>
    <xsl:value-of select="@register"/>
    <xsl:text>]</xsl:text>
  </xsl:for-each>

  <xsl:text>);</xsl:text>
</xsl:template>


<!--  dex:invoke-static
      ================  -->
<xsl:template match="dex:invoke-static">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>

  <xsl:text>
            </xsl:text>
  <xsl:if test="dex:move-result/@vx">
    <xsl:text>__reg[</xsl:text>
    <xsl:value-of select="dex:move-result/@vx" />
    <xsl:text>] = </xsl:text>
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
  <xsl:text>(</xsl:text>
    <xsl:for-each select="dex:parameters/dex:parameter">
    <xsl:if test="position() != 1">
      <xsl:text>, </xsl:text>
    </xsl:if>
    <xsl:text>__reg[</xsl:text>
    <xsl:value-of select="@register"/>
    <xsl:text>]</xsl:text>
  </xsl:for-each>
  <xsl:text>);</xsl:text>
</xsl:template>


<!--  dex:new-instance
      ================  -->
<xsl:template match="dex:new-instance">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@value"/>
  </xsl:call-template>
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = new </xsl:text>
  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="@value"/>
  </xsl:call-template>
  <xsl:text>();</xsl:text>
</xsl:template>


<!--  dex:sget-object
      ===============  -->
<xsl:template match="dex:sget-object">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
 
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = </xsl:text>
  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>.$</xsl:text>
  <xsl:value-of select="@member-name" />
  <xsl:text>;</xsl:text>
</xsl:template>


<!--  dex:sput-object
      ================  -->
<xsl:template match="dex:sput-object">
  <xsl:call-template name="checkClass">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>
            </xsl:text>
  <xsl:call-template name="emitScopedName">
    <xsl:with-param name="string" select="@class-type"/>
  </xsl:call-template>
  <xsl:text>.$</xsl:text>
  <xsl:value-of select="@member-name" />
  <xsl:text> = __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>];</xsl:text>
</xsl:template>


<!--  dex:iget*
      ===============  -->
<xsl:template match="dex:iget|dex:iget-wide|dex:iget-object|dex:iget-boolean">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>].$</xsl:text>
  <xsl:value-of select="@member-name" />
  <xsl:text>;</xsl:text>
</xsl:template>


<!--  dex:iput*
      ================  -->
<xsl:template match="dex:iput|dex:iput-wide|dex:iput-object|dex:iput-boolean">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>].$</xsl:text>
  <xsl:value-of select="@member-name" />
  <xsl:text> = __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>];</xsl:text>
</xsl:template>

<!--  dex:new-array
      ==============  -->
<xsl:template match="dex:new-array">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = new Array(__reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>]);</xsl:text>
</xsl:template>

<!--  dex:fill-array-data
      ==============  -->
<xsl:template match="dex:fill-array-data">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = [</xsl:text>
  <xsl:for-each select="dex:constant">
    <xsl:value-of select="@value"/>
    <xsl:if test="position()!=last()">
      <xsl:text>, </xsl:text>
    </xsl:if>
  </xsl:for-each>
  <xsl:text>];</xsl:text>
</xsl:template>

<!--  dex:aget*
      ========  -->
<xsl:template match="dex:aget|dex:aget-wide|dex:aget-boolean|dex:aget-byte|dex:aget-char">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>][__reg[</xsl:text>
  <xsl:value-of select="@vz" />
  <xsl:text>]];</xsl:text>
</xsl:template>

<!--  dex:aput*
      =========  -->
<xsl:template match="dex:aput|dex:aput-wide|dex:aput-boolean|dex:aput-char">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>][__reg[</xsl:text>
  <xsl:value-of select="@vz" />
  <xsl:text>]] = __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>];</xsl:text>
</xsl:template>


<!--  dex:array-length
      ================  -->
<xsl:template match="dex:array-length">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>].length;</xsl:text>
</xsl:template>


<!--  dex:int-to-short
      ================  -->
<xsl:template match="dex:int-to-short">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>];</xsl:text>
</xsl:template>


<!--  dex:long-to-int
      ================  -->
<xsl:template match="dex:long-to-int">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>];</xsl:text>
</xsl:template>


<!--  dex:double-to-int
      ================  -->
<xsl:template match="dex:double-to-int">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>];</xsl:text>
</xsl:template>


<!--  dex:float-to-int
      ================  -->
<xsl:template match="dex:float-to-int">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>];</xsl:text>
</xsl:template>


<!--  dex:float-to-long
      ================  -->
<xsl:template match="dex:float-to-long">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>];</xsl:text>
</xsl:template>


<!--  dex:double-to-long
      ================  -->
<xsl:template match="dex:double-to-long">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>];</xsl:text>
</xsl:template>


<!--  dex:double-to-float
      ================  -->
<xsl:template match="dex:double-to-float">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>];</xsl:text>
</xsl:template>


<!--  dex:int-to-long|dex:int-to-float|dex:int-to-double|dex:long-to-double|dex:long-to-float|dex:float-to-double
      (Upcasting should not be an issue)
      ================  -->
<xsl:template match="dex:int-to-long|dex:int-to-float|dex:int-to-double|dex:long-to-double|dex:long-to-float|dex:float-to-double">
  <xsl:text>
            __reg[</xsl:text>
  <xsl:value-of select="@vx" />
  <xsl:text>] = __reg[</xsl:text>
  <xsl:value-of select="@vy" />
  <xsl:text>];</xsl:text>
</xsl:template>


<!--  initLocalsDex
      =============  -->
<xsl:template name="initLocalsDex">
    <xsl:for-each select="dex:var">
		<xsl:choose>    
      		<xsl:when test="@name = 'this'">
      			<xsl:text>
        __reg[</xsl:text>
    			<xsl:value-of select="@register" />
    			<xsl:text>] = this;</xsl:text>
     		</xsl:when>
     		<xsl:otherwise>
     			<xsl:if test="(position()-count(../dex:var[@name='this'])) &lt;= count(../../vm:signature/vm:parameter)" >
     			  <xsl:text>
     	__reg[</xsl:text>
     	  		  <xsl:value-of select="@register" />
     	  		  <xsl:text>] = __arg</xsl:text>
     	  		  <xsl:value-of select="(position()-count(../dex:var[@name='this']))" />
     	  		  <xsl:text>;</xsl:text>
     			</xsl:if>
     		</xsl:otherwise>
     	</xsl:choose>
    </xsl:for-each>
</xsl:template>


<!--  appendSignatureDex
      ==================  -->
<xsl:template name="appendSignatureDex">
  <xsl:param name="signature" />
  <xsl:choose>
    <xsl:when test="count(dex:parameters/dex:parameter) != 0">
      <xsl:text>__</xsl:text>
      <xsl:for-each select="dex:parameters/dex:parameter">
        <xsl:text>_</xsl:text>
        <xsl:call-template name="emitScopedName">
          <xsl:with-param name="string">
            <xsl:call-template name="replaceString">
              <xsl:with-param name="text" select="@type" />
              <xsl:with-param name="replace">[]</xsl:with-param>
              <xsl:with-param name="with">_ARRAYTYPE</xsl:with-param>
            </xsl:call-template>
          </xsl:with-param>
        </xsl:call-template>
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
  <xsl:text>
            ERROR("</xsl:text>
  <xsl:value-of select="name()"/>
    <xsl:text>");</xsl:text>
</xsl:template>

</xsl:stylesheet>
