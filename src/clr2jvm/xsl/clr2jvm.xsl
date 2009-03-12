<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
				xmlns:exsl="http://exslt.org/common"
                xmlns:xs ="http://www.w3.org/2001/XMLSchema"
                xmlns:vm ="http://xmlvm.org"
                xmlns:clr="http://xmlvm.org/clr"
                xmlns:jvm="http://xmlvm.org/jvm"
                xmlns:dfa="http://xmlvm.org/dfa"
                version="2.0">

<xsl:output method="xml" indent="yes"/>
<xsl:strip-space elements="*"/>


<xsl:template match="vm:class[@extends!='System.MulticastDelegate' and @extends!='System.Enum']">
  <vm:class>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates/>
    <xsl:if test="vm:method[@name = 'Main' and
                            @isStatic = 'true']">
       <vm:method name="main" stack="0" locals="1"
                  isStatic="true" isPublic="true">
         <vm:signature>
           <vm:return type="void"/>
           <vm:parameter type="java.lang.String[]"/>
         </vm:signature>
         <vm:code>
           <jvm:invokestatic method="Main">
           	 <!-- If the class is in a package, then we need to prepend
           	 the package name. -->
           	 <xsl:choose>
        		<xsl:when test="@package">
             		<xsl:attribute name="class-type" select="concat(@package, '.', @name)"/>
             	</xsl:when>
             	<xsl:otherwise>
             		<xsl:attribute name="class-type" select="@name"/>
             	</xsl:otherwise>
             </xsl:choose>
             <vm:signature>
               <vm:return type="void"/>
             </vm:signature>
           </jvm:invokestatic>
           <jvm:return/>
         </vm:code>
       </vm:method>
    </xsl:if>
  </vm:class>
</xsl:template>


<!-- We add 4 to the stack size of every method. The way some CLR instructions are
     mapped to the JVM require additional stack-space (e.g., clr:ldftn). We accommodate
     for this by adding 4. It would probably be cleaner to do a full DFA again on the
     resulting JVM code to compute the required stack size. -->
<xsl:template match="vm:method">
  <vm:method>
    <xsl:copy-of select="@*"/>
    <xsl:attribute name="stack" select="@stack + 4"/>
    <xsl:apply-templates/>
  </vm:method>
</xsl:template>


<xsl:template match="vm:class[@extends='System.MulticastDelegate' and @extends!='System.Enum']">
  <!-- If the class is in a package, then we need to prepend
  the package name. -->
  <xsl:variable name="classname" select='@name'/>
  <xsl:variable name="packageName" select='@package'/>
  <xsl:variable name="fullClassName">
    <xsl:choose>
  	  <xsl:when test="@package">
  	    <xsl:value-of select="concat(@package, '.', @name)"/>
  	  </xsl:when>
  	  <xsl:otherwise>
  	    <xsl:value-of select="@name"/>
  	  </xsl:otherwise>
    </xsl:choose>
  </xsl:variable>
  <vm:class  name="{$classname}"
		     isPublic="true"
		     package="{$packageName}"
		     extends="System.MulticastDelegate">
	<xsl:call-template name="createInit">
		<xsl:with-param name="classtype" select="$fullClassName"/>
	</xsl:call-template>
	<xsl:call-template name="createNew">
		<xsl:with-param name="classtype" select="$fullClassName"/>
	</xsl:call-template>
	<!-- Gather the necessary info to create the Invoke method -->
	<xsl:variable name="parameters">
		<xsl:for-each select="child::vm:method[@name='Invoke']">
          <xsl:copy-of select="child::*/child::vm:parameter"/>
        </xsl:for-each>
	</xsl:variable>
	<xsl:variable name="parametersCount" select="count(exsl:node-set($parameters)/*)"/>
	<xsl:call-template name="createInvoke">
		<xsl:with-param name="classtype" select="$fullClassName"/>
		<xsl:with-param name="paramList" select="$parameters"/>
		<xsl:with-param name="paramNum" select="$parametersCount"/>
	</xsl:call-template>
  </vm:class>
</xsl:template>



<!-- Creates the constructor necessary for the delegate -->
<xsl:template name="createInit">
	<xsl:param name="classtype"/>
    <vm:method name="&lt;init&gt;" isPublic="true" stack="3" locals="3">
	  <vm:signature class-type="{$classtype}">
	    <vm:return type="void"/>
		<vm:parameter type="System.Object"/>
		<vm:parameter type="int"/>
	  </vm:signature>
	  <vm:code>
		<jvm:var id="0" name="this" type="{$classtype}"/>
		<jvm:var id="1" type="System.Object"/>
		<jvm:var id="2" type="int"/>
		<jvm:var name="this" id="0" type="{$classtype}"/>
		<jvm:var name="arg0" id="1" type="System.Object"/>
		<jvm:var name="arg1" id="2" type="int"/>
		<jvm:label id="0"/>
		<jvm:aload type="java.lang.Object" index="0"/>
		<jvm:aload type="java.lang.Object" index="1"/>
		<jvm:iload type="int" index="2"/>
        <jvm:invokespecial class-type="System.MulticastDelegate" method="&lt;init&gt;">
		  <vm:signature>
		    <vm:return type="void"/>
		    <vm:parameter type="System.Object"/>
		    <vm:parameter type="int"/>
		  </vm:signature>
        </jvm:invokespecial>
		<jvm:label id="1"/>
        <jvm:return/>
	  </vm:code>
    </vm:method>
</xsl:template>


<!-- Creates the "new" method for the delegate -->
<xsl:template name ="createNew">
	<xsl:param name="classtype"/>
    <vm:method name="__NEW" isPublic="true" isStatic="true" stack="4" locals="2">
      <vm:signature class-type="{$classtype}">
        <vm:return type="{$classtype}"/>
        <vm:parameter type="System.Object"/>
        <vm:parameter type="int"/>
      </vm:signature>
      <vm:code>
        <jvm:var id="0" type="System.Object"/>
        <jvm:var id="1" type="int"/>
        <jvm:var name="arg0" id="0" type="System.Object"/>
        <jvm:var name="arg1" id="1" type="int"/>
        <jvm:label id="0"/>
        <jvm:new type="{$classtype}"/>
        <jvm:dup/>
        <jvm:aload type="java.lang.Object" index="0"/>
        <jvm:iload type="int" index="1"/>
        <jvm:invokespecial class-type="{$classtype}" method="&lt;init&gt;">
          <vm:signature>
            <vm:return type="void"/>
            <vm:parameter type="System.Object"/>
            <vm:parameter type="int"/>
          </vm:signature>
        </jvm:invokespecial>
        <jvm:label id="1"/>
        <jvm:areturn/>
      </vm:code>
    </vm:method>
</xsl:template>


<!-- Creates the invoke method necessary for the delegate -->
<xsl:template name="createInvoke">
    <xsl:param name="classtype"/>
    <xsl:param name="paramList"/>
    <xsl:param name="paramNum"/>
    <xsl:variable name="locals" select="$paramNum + 2"/>
    <vm:method name="Invoke" isPublic="true" stack="4" locals="{$locals}">
      <vm:signature class-type="{$classtype}">
        <vm:return type="void"/>
        <xsl:copy-of select="$paramList"/>
      </vm:signature>
      <vm:code>
        <jvm:var id="0" name="this" type="{$classtype}"/>
        <jvm:var id="1" type="System.String"/>
        <jvm:var name="this" id="0" type="{$classtype}"/>
        <jvm:var name="arg0" id="1" type="System.String"/>
        <jvm:label id="0"/>
        <jvm:iconst type="int" value="{$paramNum}"/>
        <jvm:anewarray type="java.lang.Object[]" elementType="java.lang.Object"/>
        <!-- Handle the load of different objects into the array -->
        <xsl:for-each select="exsl:node-set($paramList)/*">
        	<xsl:call-template name="loadArray"/>
        </xsl:for-each>
        <jvm:astore type="java.lang.Object">
        	<xsl:attribute name="index" select="$paramNum + 1"/>
        </jvm:astore>
        <jvm:aload type="java.lang.Object" index="0"/>
        <jvm:aload type="java.lang.Object">
        	<xsl:attribute name="index" select="$paramNum + 1"/>
        </jvm:aload>
        <jvm:invokevirtual class-type="{$classtype}" method="helpInvoke">
          <vm:signature>
            <vm:return type="void"/>
            <vm:parameter type="java.lang.Object[]"/>
          </vm:signature>
        </jvm:invokevirtual>
        <jvm:label id="1"/>
        <jvm:return />
      </vm:code>
    </vm:method>
</xsl:template>



<!--  Each parameter in a delegate must be loaded into an array
		to be sent to System.MulticastDelegate's helpInvoke -->
<xsl:template name="loadArray">
	<jvm:dup/>
    <jvm:iconst type="int">
    	<xsl:attribute name="value" select="count(preceding::vm:parameter)"/>
    </jvm:iconst>
    <jvm:aload type="java.lang.Object">
    	<xsl:attribute name="index" select="count(preceding::vm:parameter) + 1"/>
    </jvm:aload>
    <jvm:aastore/>
</xsl:template>



<xsl:template match="vm:class[@extends!='System.MulticastDelegate' and @extends='System.Enum']">
  <vm:class>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates/>
    <xsl:variable name="class-type">
      <xsl:choose>
        <xsl:when test="@package">
          <xsl:value-of select="concat(@package, '.', @name)"/>
        </xsl:when>
        <xsl:otherwise>
          <xsl:value-of select="@name"/>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:variable>
    <xsl:variable name="enum-base" select="child::vm:field[@name='value__']/@type"/>
    <xsl:choose>
       <xsl:when test="$enum-base='int' or $enum-base='short' or $enum-base='byte'">
          <xsl:call-template name="enumInt">
             <xsl:with-param name="enum-base-type" select="$enum-base"/>
             <xsl:with-param name="classtype" select="$class-type"/>
          </xsl:call-template>
       </xsl:when>
       <xsl:otherwise>
          <xsl:call-template name="enumLong">
             <xsl:with-param name="classtype" select="$class-type"/>
          </xsl:call-template>
       </xsl:otherwise>
     </xsl:choose>
  </vm:class>
</xsl:template>


<!-- This is the body of the enum class that needs to be inserted
     when the enum base type is byte, short, or int -->
<xsl:template name="enumInt">
   <xsl:param name="enum-base-type"/>
   <xsl:param name="classtype"/>
   <vm:method name="&lt;init&gt;" isPublic="true" stack="8" locals="1">
      <vm:signature>
        <vm:return type="void" />
      </vm:signature>
      <vm:code>
        <jvm:var id="0" name="this" type="{$classtype}" />
        <jvm:nop oid="0" />
        <jvm:aload index="0" oid="1" type="{$classtype}" />
        <jvm:invokespecial has-this="true" class-type="System.Enum" method="&lt;init&gt;" oid="2">
          <vm:signature>
            <vm:return type="void" />
          </vm:signature>
        </jvm:invokespecial>
        <jvm:return />
      </vm:code>
    </vm:method>
    <vm:method name="&lt;init&gt;" isPublic="true" stack="8" locals="2">
      <vm:signature>
        <vm:return type="void" />
        <vm:parameter type="int" />
      </vm:signature>
      <vm:code>
        <jvm:var id="0" name="this" type="{$classtype}" />
        <jvm:var id="1" type="int" />
        <jvm:nop oid="0" />
        <jvm:aload index="0" oid="1" type="{$classtype}" />
        <jvm:invokespecial has-this="true" class-type="System.Enum" method="&lt;init&gt;" oid="2">
          <vm:signature>
            <vm:return type="void" />
          </vm:signature>
        </jvm:invokespecial>
        <jvm:aload index="0" oid="3" type="{$classtype}" />
        <jvm:iload index="1" oid="4" type="int" />
        <jvm:putfield class-type="{$classtype}" type="{$enum-base-type}" field="value__" oid="5" />
        <jvm:return />
      </vm:code>
    </vm:method>
    <vm:method name="__BOX" isStatic="true" isPublic="true" stack="8" locals="1">
      <vm:signature>
        <vm:return type="{$classtype}" />
        <vm:parameter type="int" />
      </vm:signature>
      <vm:code>
        <jvm:var id="0" type="int" />
        <jvm:nop oid="0" />
        <jvm:new>
          <xsl:attribute name="type" select="$classtype"/>
        </jvm:new>
        <jvm:dup/>
        <jvm:aload index="0" oid="1" type="int" />
        <jvm:invokespecial method="&lt;init&gt;">
          <xsl:attribute name="class-type" select="$classtype"/>
          <vm:signature>
            <vm:return type="void"/>
            <vm:parameter type="int" />
          </vm:signature>
        </jvm:invokespecial>
        <jvm:areturn />
        </vm:code>
    </vm:method>
</xsl:template>



<!-- This is the body of the enum class that needs to be inserted
     when the enum base type is long -->
<xsl:template name="enumLong">
   <xsl:param name="classtype"/>
   <vm:method name="&lt;init&gt;" isPublic="true" stack="8" locals="1">
      <vm:signature>
        <vm:return type="void" />
      </vm:signature>
      <vm:code>
        <jvm:var id="0" name="this" type="{$classtype}" />
        <jvm:nop oid="0" />
        <jvm:aload index="0" oid="1" type="{$classtype}" />
        <jvm:invokespecial has-this="true" class-type="System.Enum" method="&lt;init&gt;" oid="2">
          <vm:signature>
            <vm:return type="void" />
          </vm:signature>
        </jvm:invokespecial>
        <jvm:return />
      </vm:code>
    </vm:method>
    <vm:method name="&lt;init&gt;" isPublic="true" stack="8" locals="2">
      <vm:signature>
        <vm:return type="void" />
        <vm:parameter type="long" />
      </vm:signature>
      <vm:code>
        <jvm:var id="0" name="this" type="{$classtype}" />
        <jvm:var id="1" type="long" />
        <jvm:nop oid="0" />
        <jvm:aload index="0" oid="1" type="{$classtype}" />
        <jvm:invokespecial has-this="true" class-type="System.Enum" method="&lt;init&gt;" oid="2">
          <vm:signature>
            <vm:return type="void" />
          </vm:signature>
        </jvm:invokespecial>
        <jvm:aload index="0" oid="3" type="{$classtype}" />
        <jvm:lload index="1" oid="4" type="long" />
        <jvm:putfield class-type="{$classtype}" type="long" field="value__" oid="5" />
        <jvm:return />
      </vm:code>
    </vm:method>
    <vm:method name="__BOX" isStatic="true" isPublic="true" stack="8" locals="1">
      <vm:signature>
        <vm:return type="{$classtype}" />
        <vm:parameter type="long" />
      </vm:signature>
      <vm:code>
        <jvm:var id="0" type="long" />
        <jvm:nop oid="0" />
        <jvm:new>
          <xsl:attribute name="type" select="$classtype"/>
        </jvm:new>
        <jvm:dup/>
        <jvm:aload index="0" oid="1" type="long" />
        <jvm:invokespecial method="&lt;init&gt;">
          <xsl:attribute name="class-type" select="$classtype"/>
          <vm:signature>
            <vm:return type="void"/>
            <vm:parameter type="long" />
          </vm:signature>
        </jvm:invokespecial>
        <jvm:areturn />
        </vm:code>
    </vm:method>
</xsl:template>



<xsl:template match="vm:code[../../@extends!='System.MulticastDelegate']">
  <vm:code>
    <xsl:variable name="this-offset"
                  select="if (../@isStatic = 'true') then 0 else 1"/>
    <xsl:if test="$this-offset = 1">
      <jvm:var id="0" name="this">
        <xsl:attribute name="type" select="../../@name"/>
      </jvm:var>
    </xsl:if>
    <xsl:for-each select="../vm:signature/vm:parameter">
      <jvm:var>
        <xsl:attribute name="id" select="position() + $this-offset - 1"/>
        <xsl:attribute name="type" select="@type"/>
      </jvm:var>
    </xsl:for-each>
    <xsl:apply-templates/>
  </vm:code>
</xsl:template>


<xsl:template match="clr:nop">
  <!-- Don't get rid of NOPS (even though we could, because it makes the translated code harder to read) -->
  <jvm:nop/>
</xsl:template>




<xsl:template match="clr:box">
  <jvm:invokestatic method="__BOX">
    <xsl:attribute name="class-type" select="dfa:stack-post/dfa:elem[last()]/@type"/>
    <vm:signature>
      <vm:return>
        <xsl:attribute name="type" select="dfa:stack-post/dfa:elem[last()]/@type"/>
      </vm:return>
      <vm:parameter>
        <xsl:attribute name="type" select="dfa:stack-pre/dfa:elem[last()]/@type"/>
      </vm:parameter>
    </vm:signature>
  </jvm:invokestatic>
</xsl:template>



<xsl:template match="clr:label">
  <jvm:label>
    <xsl:copy-of select="@*"/>
  </jvm:label>
</xsl:template>


<xsl:template match="clr:ldlen">
  <jvm:arraylength>
    <xsl:copy-of select="@*"/>
  </jvm:arraylength>
</xsl:template>

<xsl:template match="clr:br">
  <jvm:goto>
    <xsl:copy-of select="@*"/>
  </jvm:goto>
</xsl:template>



<xsl:template match="clr:brtrue">
  <jvm:ifne>
    <xsl:copy-of select="@*"/>
  </jvm:ifne>
</xsl:template>



<xsl:template match="clr:brfalse">
  <jvm:ifeq>
    <xsl:copy-of select="@*"/>
  </jvm:ifeq>
</xsl:template>



<xsl:template match="clr:blt[dfa:stack-pre/dfa:elem[last()][@type = 'int']]">
  <jvm:if_icmplt>
    <xsl:copy-of select="@*"/>
  </jvm:if_icmplt>
</xsl:template>



<xsl:template match="clr:ble[dfa:stack-pre/dfa:elem[last()][@type = 'int']]">
  <jvm:if_icmple>
    <xsl:copy-of select="@*"/>
  </jvm:if_icmple>
</xsl:template>




<!-- 
For ble <= fcmpl puts 0 or -1 on the stack if <= true, so branch if icmple of the
result of the compare and zero
-->
<xsl:template match="clr:ble[dfa:stack-pre/dfa:elem[last()][@type = 'float']]">
  <jvm:fcmpl/>
  <iconst value = "0"/>
  <jvm:if_icmple>
    <xsl:copy-of select="@*"/>
  </jvm:if_icmple>
</xsl:template>

<!-- 
For bge >= fcmpg puts 0 or 1 on the stack if >= true, so branch if icmpge of the
result of the compare and zero
-->
<xsl:template match="clr:bge[dfa:stack-pre/dfa:elem[last()][@type = 'float']]">
  <jvm:fcmpg/>
  <iconst value = "0"/>
  <jvm:if_icmpge>
    <xsl:copy-of select="@*"/>
  </jvm:if_icmpge>
</xsl:template>

<xsl:template match="clr:bge[dfa:stack-pre/dfa:elem[last()][@type = 'int']]">
  <jvm:if_icmpge>
    <xsl:copy-of select="@*"/>
  </jvm:if_icmpge>
</xsl:template>






<xsl:template match="clr:bne_un[dfa:stack-pre/dfa:elem[last()][@type = 'int']]">
  <jvm:if_icmpne>
    <xsl:copy-of select="@*"/>
  </jvm:if_icmpne>
</xsl:template>



<xsl:template match="clr:castclass">
  <jvm:checkcast>
    <xsl:copy-of select="@*"/>
  </jvm:checkcast>
</xsl:template>



<xsl:template match="clr:add[dfa:stack-post/dfa:elem[last()][@type = 'int']]">
  <jvm:iadd/>
</xsl:template>



<xsl:template match="clr:add[dfa:stack-post/dfa:elem[last()][@type = 'double']]">
  <jvm:dadd/>
</xsl:template>



<xsl:template match="clr:add_ovf[dfa:stack-post/dfa:elem[last()][@type = 'int']]">
  <jvm:invokestatic class-type="org.xmlvm.clr.Math" method="add_ovf">
    <vm:signature>
      <vm:return type="int"/>
      <vm:parameter type="int"/>
      <vm:parameter type="int"/>
    </vm:signature>
  </jvm:invokestatic>
</xsl:template>


<xsl:template match="clr:sub[dfa:stack-post/dfa:elem[last()][@type = 'float']]">
  <jvm:fsub/>
</xsl:template>

<xsl:template match="clr:add[dfa:stack-post/dfa:elem[last()][@type = 'float']]">
  <jvm:fadd/>
</xsl:template>



<xsl:template match="clr:sub[dfa:stack-post/dfa:elem[last()][@type = 'int']]">
  <jvm:isub/>
</xsl:template>



<xsl:template match="clr:sub[dfa:stack-post/dfa:elem[last()][@type = 'double']]">
  <jvm:dsub/>
</xsl:template>


<xsl:template match="clr:mul[dfa:stack-post/dfa:elem[last()][@type = 'float']]">
  <jvm:fmul/>
</xsl:template>


<xsl:template match="clr:mul[dfa:stack-post/dfa:elem[last()][@type = 'double']]">
  <jvm:dmul/>
</xsl:template>



<xsl:template match="clr:mul[dfa:stack-post/dfa:elem[last()][@type = 'int']]">
  <jvm:imul/>
</xsl:template>



<xsl:template match="clr:div[dfa:stack-post/dfa:elem[last()][@type = 'int']]">
  <jvm:idiv/>
</xsl:template>



<xsl:template match="clr:div[dfa:stack-post/dfa:elem[last()][@type = 'double']]">
  <jvm:ddiv/>
</xsl:template>



<xsl:template match="clr:rem[dfa:stack-post/dfa:elem[last()][@type = 'int']]">
  <jvm:irem/>
</xsl:template>

<xsl:template match="clr:ceq[dfa:stack-post/dfa:elem[last()][@type = 'null']]">
	<!-- JVM has different insturctions for compares with null 
				TODO: sane way to do this for all clX instructions -->

				<xsl:variable name="label1"
					select="count(../*) + 2 * @oid" />
				<xsl:variable name="label2"
					select="count(../*) + 2 * @oid + 1" />
				<jvm:if_acmpne>
					<xsl:attribute name="label" select="$label1" />
				</jvm:if_acmpne>
				<jvm:ldc type="int" value="1" />
				<jvm:goto>
					<xsl:attribute name="label" select="$label2" />
				</jvm:goto>
				<jvm:label>
					<xsl:attribute name="id" select="$label1" />
				</jvm:label>
				<jvm:ldc type="int" value="0" />
				<jvm:label>
					<xsl:attribute name="id" select="$label2" />
				</jvm:label>
</xsl:template>

<xsl:template match="clr:ceq[dfa:stack-post/dfa:elem[last()][@type = 'int' or @type = 'byte' or @type = 'short']]">
<!-- Create two new labels and make sure they don't conflict with
					existing labels. -->
				<xsl:variable name="label1"
					select="count(../*) + 2 * @oid" />
				<xsl:variable name="label2"
					select="count(../*) + 2 * @oid + 1" />
				<jvm:if_icmpne>
					<xsl:attribute name="label" select="$label1" />
				</jvm:if_icmpne>
				<jvm:ldc type="int" value="1" />
				<jvm:goto>
					<xsl:attribute name="label" select="$label2" />
				</jvm:goto>
				<jvm:label>
					<xsl:attribute name="id" select="$label1" />
				</jvm:label>
				<jvm:ldc type="int" value="0" />
				<jvm:label>
					<xsl:attribute name="id" select="$label2" />
				</jvm:label>
</xsl:template>




<xsl:template match="clr:clt[dfa:stack-pre/dfa:elem[last()][@type = 'float']]">
<jvm:fcmpl></jvm:fcmpl>
</xsl:template>

<xsl:template match="clr:cgt[dfa:stack-pre/dfa:elem[last()][@type = 'float']]">
<jvm:fcmpg></jvm:fcmpg>
</xsl:template>


<xsl:template match="clr:clt[dfa:stack-pre/dfa:elem[last()][@type = 'int' or @type = 'byte' or @type = 'short']]">
  <!-- Create two new labels and make sure they don't conflict with
       existing labels. -->
  <xsl:variable name="label1" select="count(../*) + 2 * @oid"/>
  <xsl:variable name="label2" select="count(../*) + 2 * @oid + 1"/>
  <jvm:if_icmplt>
    <xsl:attribute name="label" select="$label1"/>
  </jvm:if_icmplt>
  <jvm:ldc type="int" value="0"/>
  <jvm:goto>
    <xsl:attribute name="label" select="$label2"/>
  </jvm:goto>
  <jvm:label>
    <xsl:attribute name="id" select="$label1"/>
  </jvm:label>
  <jvm:ldc type="int" value="1"/>
  <jvm:label>
    <xsl:attribute name="id" select="$label2"/>
  </jvm:label>
</xsl:template>



<xsl:template match="clr:cgt[dfa:stack-pre/dfa:elem[last()][@type = 'int' or @type = 'byte' or @type = 'short']]">
  <!-- Create two new labels and make sure they don't conflict with
       existing labels. -->
  <xsl:variable name="label1" select="count(../*) + 2 * @oid"/>
  <xsl:variable name="label2" select="count(../*) + 2 * @oid + 1"/>
  <jvm:if_icmpgt>
    <xsl:attribute name="label" select="$label1"/>
  </jvm:if_icmpgt>
  <jvm:ldc type="int" value="0"/>
  <jvm:goto>
    <xsl:attribute name="label" select="$label2"/>
  </jvm:goto>
  <jvm:label>
    <xsl:attribute name="id" select="$label1"/>
  </jvm:label>
  <jvm:ldc type="int" value="1"/>
  <jvm:label>
    <xsl:attribute name="id" select="$label2"/>
  </jvm:label>
</xsl:template>



<xsl:template match = "clr:newarr">
  <jvm:anewarray>
    <xsl:copy-of select="@*"/>
    <xsl:attribute name="type" select="dfa:stack-post/dfa:elem[last()]/@type"/>
  </jvm:anewarray>	
</xsl:template>

<xsl:template match = "clr:stelem">
  <jvm:aastore>
    <xsl:copy-of select="@*"/>
    <xsl:attribute name="type" select="dfa:stack-pre/dfa:elem[last()]/@type"/>
  </jvm:aastore>	
</xsl:template>

<xsl:template match = "clr:ldelem">
  <jvm:aaload>
    <xsl:copy-of select="@*"/>
    <xsl:attribute name="type" select="dfa:stack-post/dfa:elem[last()]/@type"/>
  </jvm:aaload>	
</xsl:template>

<xsl:template match="clr:dup">
  <jvm:dup/>
</xsl:template>



<xsl:template match="clr:pop">
  <jvm:pop/>
</xsl:template>



<xsl:template match="clr:ldloc[dfa:stack-post/dfa:elem[last()][@type = 'int' or @type = 'byte' or @type = 'short']]">
  <jvm:iload>
    <xsl:variable name="this-offset"
                  select="if (../../@isStatic = 'true') then 0 else 1"/>
    <xsl:variable name="offset">
      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
    </xsl:variable>
    <xsl:attribute name="index" select="@index + $offset"/>
  </jvm:iload>
</xsl:template>



<xsl:template match="clr:ldloc[dfa:stack-post/dfa:elem[last()][@type = 'float']]">
  <jvm:fload>
    <xsl:variable name="this-offset"
                  select="if (../../@isStatic = 'true') then 0 else 1"/>
    <xsl:variable name="offset">
      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
    </xsl:variable>
    <xsl:attribute name="index" select="@index + $offset"/>
  </jvm:fload>
</xsl:template>



<xsl:template match="clr:ldloc[dfa:stack-post/dfa:elem[last()][@type = 'double']]">
  <jvm:dload>
    <xsl:variable name="this-offset"
                  select="if (../../@isStatic = 'true') then 0 else 1"/>
    <xsl:variable name="offset">
      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
    </xsl:variable>
    <xsl:attribute name="index" select="@index + $offset"/>
  </jvm:dload>
</xsl:template>



<xsl:template match="clr:ldloc[dfa:stack-post/dfa:elem[last()][@isValueType = 'true']]">
  <jvm:aload>
    <xsl:attribute name="type" select="dfa:stack-post/dfa:elem[last()]/@type"/>
    <xsl:variable name="this-offset"
                  select="if (../../@isStatic = 'true') then 0 else 1"/>
    <xsl:variable name="offset">
      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
    </xsl:variable>
    <xsl:attribute name="index" select="@index + $offset"/>
  </jvm:aload>
</xsl:template>



<xsl:template match="clr:ldloca[dfa:stack-post/dfa:elem[last()][@isValueType = 'true']]">
  <jvm:aload>
    <xsl:attribute name="type" select="dfa:stack-post/dfa:elem[last()]/@type"/>
    <xsl:variable name="this-offset"
                  select="if (../../@isStatic = 'true') then 0 else 1"/>
    <xsl:variable name="offset">
      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
    </xsl:variable>
    <xsl:attribute name="index" select="@index + $offset"/>
  </jvm:aload>
</xsl:template>



<!-- This is probably not correct. What we do here is to box an 'int',
     but if this is a call-by-reference, then boxing it not correct. -->
<xsl:template match="clr:ldloca[dfa:stack-post/dfa:elem[last()][@type = 'int']]">
  <jvm:iload>
    <xsl:attribute name="type" select="dfa:stack-post/dfa:elem[last()]/@type"/>
    <xsl:variable name="this-offset"
                  select="if (../../@isStatic = 'true') then 0 else 1"/>
    <xsl:variable name="offset">
      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
    </xsl:variable>
    <xsl:attribute name="index" select="@index + $offset"/>
  </jvm:iload>
  <jvm:invokestatic class-type="System.Int32" method="__BOX">
    <vm:signature>
      <vm:return type="System.Int32"/>
      <vm:parameter type="int"/>
    </vm:signature>
  </jvm:invokestatic>
</xsl:template>



<!-- Default rule. Assumes object reference is on top of stack 
Silly choose because we have to be aware of whether we are loading object refs or value types in
JVM land -->
<xsl:template match="clr:ldloc">

    <xsl:choose>
	  <xsl:when test="dfa:stack-pre/dfa:elem[last()][@type = 'boolean' or @type = 'bool']">
		   <jvm:iload>
		    <xsl:attribute name="type" select="dfa:stack-post/dfa:elem[last()]/@type"/>
		    <xsl:variable name="this-offset"
		                  select="if (../../@isStatic = 'true') then 0 else 1"/>
		    <xsl:variable name="offset">
		      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
		    </xsl:variable>
		    <xsl:attribute name="index" select="@index + $offset"/>
		  </jvm:iload>
      </xsl:when>
	  <xsl:otherwise>
		   <jvm:aload>
		    <xsl:attribute name="type" select="dfa:stack-post/dfa:elem[last()]/@type"/>
		    <xsl:variable name="this-offset"
		                  select="if (../../@isStatic = 'true') then 0 else 1"/>
		    <xsl:variable name="offset">
		      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
		    </xsl:variable>
		    <xsl:attribute name="index" select="@index + $offset"/>
		  </jvm:aload>
	  </xsl:otherwise>
  </xsl:choose>
</xsl:template>



<xsl:template match="clr:ldarg">
  <xsl:variable name="type" select="dfa:stack-post/dfa:elem[last()]/@type"/>
  <xsl:choose>
    <xsl:when test="$type = 'int'">
      <jvm:iload type="int">
        <xsl:copy-of select="@*"/>
      </jvm:iload>
    </xsl:when>
    <xsl:otherwise>
      <jvm:aload>
        <xsl:copy-of select="@*"/>
        <xsl:attribute name="type" select="$type"/>
      </jvm:aload>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>



<xsl:template match="clr:ldfld">
  <jvm:getfield>
    <xsl:copy-of select="@*"/>
  </jvm:getfield>
</xsl:template>

<xsl:template match="clr:ldsfld">
  <jvm:getstatic>
    <xsl:copy-of select="@*"/>
  </jvm:getstatic>
</xsl:template>



<xsl:template match="clr:stloc[dfa:stack-pre/dfa:elem[last()][@type = 'int' or @type = 'byte' or @type = 'short' or @type = 'boolean' or @type = 'bool']]">
  <jvm:istore>
    <xsl:variable name="this-offset"
                  select="if (../../@isStatic = 'true') then 0 else 1"/>
    <xsl:variable name="offset">
      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
    </xsl:variable>
    <xsl:attribute name="index" select="@index + $offset"/>
  </jvm:istore>
</xsl:template>



<xsl:template match="clr:stloc[dfa:stack-pre/dfa:elem[last()][@type = 'long']]">
  <jvm:lstore>
    <xsl:variable name="this-offset"
                  select="if (../../@isStatic = 'true') then 0 else 1"/>
    <xsl:variable name="offset">
      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
    </xsl:variable>
    <xsl:attribute name="index" select="@index + $offset"/>
  </jvm:lstore>
</xsl:template>



<xsl:template match="clr:stloc[dfa:stack-pre/dfa:elem[last()][@type = 'float']]">
  <jvm:fstore>
    <xsl:variable name="this-offset"
                  select="if (../../@isStatic = 'true') then 0 else 1"/>
    <xsl:variable name="offset">
      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
    </xsl:variable>
    <xsl:attribute name="index" select="@index + $offset"/>
  </jvm:fstore>
</xsl:template>



<xsl:template match="clr:stloc[dfa:stack-pre/dfa:elem[last()][@type = 'double']]">
  <jvm:dstore>
    <xsl:variable name="this-offset"
                  select="if (../../@isStatic = 'true') then 0 else 1"/>
    <xsl:variable name="offset">
      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
    </xsl:variable>
    <xsl:attribute name="index" select="@index + $offset"/>
  </jvm:dstore>
</xsl:template>



<xsl:template match="clr:stloc[dfa:stack-pre/dfa:elem[last()][@isValueType = 'true']]">
  <jvm:aload>
    <xsl:variable name="this-offset"
                  select="if (../../@isStatic = 'true') then 0 else 1"/>
    <xsl:variable name="offset" select="count(../../vm:signature/vm:parameter) + $this-offset"/>
    <xsl:attribute name="index" select="@index + $offset"/>
    <xsl:attribute name="type" select="dfa:stack-pre/dfa:elem[last()]/@type"/>
  </jvm:aload>
  <jvm:invokestatic class-type="System.ValueType" method="__COPY">
    <vm:signature>
      <vm:return type="void"/>
      <vm:parameter type="System.ValueType"/>
      <vm:parameter type="System.ValueType"/>
    </vm:signature>
  </jvm:invokestatic>
</xsl:template>



<!-- Default rule. Assumes object reference is on top of stack 
different rule if object ref vs value type on stack -->
<xsl:template match="clr:stloc">

  <xsl:choose>
	  <xsl:when test="dfa:stack-pre/dfa:elem[last()][@type = 'boolean' or @type = 'bool']">
		  <jvm:istore>
		    <xsl:variable name="this-offset"
		                  select="if (../../@isStatic = 'true') then 0 else 1"/>
		    <xsl:variable name="offset">
		      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
		    </xsl:variable>
		    <xsl:attribute name="index" select="@index + $offset"/>
		  </jvm:istore>
		  </xsl:when>
	  <xsl:otherwise>
		  <jvm:astore>
		    <xsl:variable name="this-offset"
		                  select="if (../../@isStatic = 'true') then 0 else 1"/>
		    <xsl:variable name="offset">
		      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
		    </xsl:variable>
		    <xsl:attribute name="index" select="@index + $offset"/>
		  </jvm:astore>
	  </xsl:otherwise>
  </xsl:choose>
</xsl:template>



<xsl:template match="clr:stfld">
  <jvm:putfield>
    <xsl:copy-of select="@*"/>
  </jvm:putfield>
</xsl:template>



<xsl:template match="clr:stsfld">
  <jvm:putstatic>
    <xsl:copy-of select="@*"/>
  </jvm:putstatic>
</xsl:template>


<xsl:template match="clr:starg[dfa:stack-pre/dfa:elem[last()][@type = 'int']]">
  <jvm:istore>
    <xsl:variable name="this-offset"
                  select="if (../../@isStatic = 'true') then 0 else 1"/>
    <xsl:variable name="offset">
      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
    </xsl:variable>
    <xsl:attribute name="index" select="@index + $offset"/>
  </jvm:istore>
</xsl:template>



<xsl:template match="clr:starg[dfa:stack-pre/dfa:elem[last()][@type = 'long']]">
  <jvm:lstore>
    <xsl:variable name="this-offset"
                  select="if (../../@isStatic = 'true') then 0 else 1"/>
    <xsl:variable name="offset">
      <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
    </xsl:variable>
    <xsl:attribute name="index" select="@index + $offset"/>
  </jvm:lstore>
</xsl:template>



<xsl:template match="clr:call[@has-this = 'false']">
  <jvm:invokestatic>
    <xsl:attribute name="class-type"><xsl:value-of select="@class-type"/></xsl:attribute>
    <xsl:attribute name="method"><xsl:value-of select="@method"/></xsl:attribute>
    <xsl:copy-of select="vm:signature"/>
  </jvm:invokestatic>
</xsl:template>



<xsl:template match="clr:call[@has-this = 'true' and @method != '&lt;init&gt;']">
  <jvm:invokevirtual>
    <xsl:attribute name="class-type"><xsl:value-of select="@class-type"/></xsl:attribute>
    <xsl:attribute name="method"><xsl:value-of select="@method"/></xsl:attribute>
    <xsl:copy-of select="vm:signature"/>
  </jvm:invokevirtual>
</xsl:template>



<xsl:template match="clr:call[@has-this = 'true' and @method = '&lt;init&gt;']">
  <xsl:variable name="num-params" select="count(vm:signature/vm:parameter)"/>
  <xsl:variable name="obj-type" select="dfa:stack-pre/dfa:elem[last() - $num-params]/@type"/>
  <xsl:choose>
    <xsl:when test="dfa:stack-pre/dfa:elem[last() - $num-params][@isValueType = 'true']">
      <jvm:invokevirtual method="__CONSTRUCTOR">
        <xsl:attribute name="class-type" select="@class-type"/>
        <xsl:copy-of select="vm:signature"/>
      </jvm:invokevirtual>
    </xsl:when>
    <xsl:otherwise>
      <jvm:invokespecial>
        <xsl:copy-of select="vm:signature|@*"/>
      </jvm:invokespecial>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>



<xsl:template match="clr:callvirt[@has-this = 'true']">
  <jvm:invokevirtual>
    <xsl:attribute name="class-type"><xsl:value-of select="@class-type"/></xsl:attribute>
    <xsl:attribute name="method"><xsl:value-of select="@method"/></xsl:attribute>
    <xsl:copy-of select="vm:signature"/>
  </jvm:invokevirtual>
</xsl:template>



<xsl:template match="clr:newobj">
  <xsl:choose>
    <xsl:when test="vm:signature/vm:parameter">
      <jvm:invokestatic method="__NEW">
        <xsl:attribute name="class-type" select="@type"/>
        <vm:signature>
          <vm:return>
            <xsl:attribute name="type" select="@type"/>
          </vm:return>
          <xsl:copy-of select="vm:signature/vm:parameter"/>
        </vm:signature>
      </jvm:invokestatic>
    </xsl:when>
    <xsl:otherwise>
      <jvm:new>
        <xsl:attribute name="type" select="@type"/>
      </jvm:new>
      <jvm:dup/>
      <jvm:invokespecial method="&lt;init&gt;">
        <xsl:attribute name="class-type" select="@type"/>
        <vm:signature>
          <vm:return type="void"/>
        </vm:signature>
      </jvm:invokespecial>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>



<xsl:template match="clr:ldftn">
  <jvm:ldc type="java.lang.String">
    <xsl:attribute name="value" select="@class-type"/>
  </jvm:ldc>
  <jvm:ldc type="java.lang.String">
    <xsl:attribute name="value" select="@method"/>
  </jvm:ldc>
  <jvm:ldc type="java.lang.String">
    <xsl:attribute name="value" select="string-join(vm:signature/*/@type, ';')"/>
  </jvm:ldc>
  <jvm:invokestatic class-type="org.xmlvm.clr.DelegateManager" method="registerFunctionPtr">
    <vm:signature>
      <vm:return type="int"/>
      <vm:parameter type="java.lang.String"/>
      <vm:parameter type="java.lang.String"/>
      <vm:parameter type="java.lang.String"/>
    </vm:signature>
  </jvm:invokestatic>
</xsl:template>



<xsl:template match="clr:ldc[@type='System.String']">
  <jvm:new type="System.String"/>
  <jvm:dup/>
  <jvm:ldc type="java.lang.String">
    <xsl:attribute name="value" select="@value"/>
  </jvm:ldc>
  <jvm:invokespecial class-type="System.String" method="&lt;init&gt;">
    <vm:signature>
      <vm:return type="void"/>
      <vm:parameter type="java.lang.String"/>
    </vm:signature>
  </jvm:invokespecial>
</xsl:template>



<xsl:template match="clr:ldc[@type='long']">
  <jvm:ldc2_w>
    <xsl:copy-of select="@*"/>
  </jvm:ldc2_w>
</xsl:template>


<xsl:template match="clr:ldc">
  <jvm:ldc>
    <xsl:copy-of select="@*"/>
  </jvm:ldc>
</xsl:template>



<xsl:template match="clr:var">
  <xsl:variable name="this-offset"
                select="if (../../@isStatic = 'true') then 0 else 1"/>
  <xsl:variable name="offset">
    <xsl:value-of select="count(../../vm:signature/vm:parameter) + $this-offset"/>
  </xsl:variable>
  <jvm:var>
    <xsl:attribute name="id" select="$offset + @id"/>
    <xsl:attribute name="type" select="@type"/>
  </jvm:var>
  <xsl:if test="@isValueType = 'true'">
    <jvm:new>
      <xsl:attribute name="type" select="@type"/>
    </jvm:new>
    <jvm:dup/>
    <jvm:invokespecial method="&lt;init&gt;">
      <xsl:attribute name="class-type" select="@type"/>
      <vm:signature>
        <vm:return type="void"/>
      </vm:signature>
    </jvm:invokespecial>
    <jvm:astore>
      <xsl:attribute name="index" select="@id + $offset"/>
    </jvm:astore>
  </xsl:if>
</xsl:template>


<xsl:template match="clr:return">
  <xsl:variable name="type" select="../../vm:signature/vm:return/@type"/>
  <xsl:choose>
    <xsl:when test="$type = 'void'">
      <jvm:return/>
    </xsl:when>
    <xsl:when test="$type = 'boolean'">
      <jvm:ireturn/>
    </xsl:when>
    <xsl:when test="$type = 'int'">
      <jvm:ireturn/>
    </xsl:when>
    <xsl:when test="$type = 'double'">
      <jvm:dreturn/>
    </xsl:when>
    <xsl:when test="$type = 'float'">
      <jvm:freturn/>
    </xsl:when>
    <xsl:when test="$type = 'long'">
      <jvm:lreturn/>
    </xsl:when>
    <xsl:otherwise>
      <jvm:areturn/>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>



<!--  todo:     D2L, F2D,  F2L, I2B, I2C, I2D, I2S, L2D, L2F,  -->

<xsl:template match="clr:conv.i8[dfa:stack-pre/dfa:elem[last()][@type = 'int']]">
  <jvm:i2l/>
</xsl:template>

<xsl:template match="clr:conv.r4[dfa:stack-pre/dfa:elem[last()][@type = 'int']]">
  <jvm:i2f/>
</xsl:template>

<xsl:template match="clr:conv.r4[dfa:stack-pre/dfa:elem[last()][@type = 'double']]">
  <jvm:d2f/>
</xsl:template>

<xsl:template match="clr:conv.i4[dfa:stack-pre/dfa:elem[last()][@type = 'byte' or @type = 'short' or @type = 'int']]">
  <!--  do nothing --> 
</xsl:template>

<xsl:template match="clr:conv.i4[dfa:stack-pre/dfa:elem[last()][@type = 'long']]">
  <jvm:l2i/>
</xsl:template>

<xsl:template match="clr:conv.i4[dfa:stack-pre/dfa:elem[last()][@type = 'float']]">
  <jvm:f2i/>
</xsl:template>

<xsl:template match="clr:conv.i4[dfa:stack-pre/dfa:elem[last()][@type = 'double']]">
  <jvm:d2i/>
</xsl:template>

<xsl:template match="clr:ldnull">
  <jvm:aconst_null>
    <xsl:copy-of select="@*"/>
  </jvm:aconst_null>
</xsl:template>




<xsl:template match="*">
  <xsl:copy>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates/>
  </xsl:copy>
</xsl:template>

</xsl:stylesheet>