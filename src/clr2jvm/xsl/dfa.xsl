<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
                xmlns:xs  = "http://www.w3.org/2001/XMLSchema"
                xmlns:vm  = "http://xmlvm.org"
                xmlns:clr = "http://xmlvm.org/clr"
                xmlns:jvm = "http://xmlvm.org/jvm"
                xmlns:dfa = "http://xmlvm.org/dfa"
                version="2.0">

<xsl:output method="xml" indent="yes"/>
<xsl:strip-space elements="*"/>


<xsl:template match="vm:code" mode="prepare-dfa">
  <vm:code>
    <clr:nop oid="0">
      <dfa:stack-pre/>
      <dfa:stack-post/>
    </clr:nop>
    <!-- We assign every byte code instruction a unique ID. This ID will be used
         later to identify which instruction pushed which elements onto the type
         stack. -->
    <xsl:for-each select="*">
      <xsl:copy>
        <xsl:copy-of select="@*"/>
        <xsl:attribute name="oid" select="position()"/>
        <xsl:copy-of select="*"/>
      </xsl:copy>
    </xsl:for-each>
  </vm:code>
</xsl:template>



<xsl:template match="*" mode="prepare-dfa">
  <xsl:copy>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates mode="prepare-dfa"/>
  </xsl:copy>
</xsl:template>



<xsl:template match="*" mode="boxing">
  <xsl:copy>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates mode="boxing"/>
  </xsl:copy>
</xsl:template>



<xsl:template match="*" mode="clear-dfa">
  <xsl:copy>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates mode="clear-dfa"/>
  </xsl:copy>
</xsl:template>



<!-- Remove all elements computed by the dfa flow except for the first 
	 'boot-strapping' dfa:stack-pre and dfa-stack-post belonging to the
	 very first inserted nop instruction. -->
<xsl:template match="dfa:elem|dfa:stack-pre[../@oid!=0]|dfa:stack-post[../@oid!=0]" mode="clear-dfa">

</xsl:template>


    
<xsl:template name="computeFixpoint">
  <xsl:param name="code"/>
  <xsl:param name="prev-code"/>

  <xsl:choose>
    <xsl:when test="deep-equal($code, $prev-code)">
      <xsl:sequence select="$code"/>
    </xsl:when>
    <xsl:otherwise>
      <xsl:variable name="next-iteration">
        <xsl:apply-templates select="$code"/>
      </xsl:variable>
      <xsl:call-template name="computeFixpoint">
        <xsl:with-param name="code" select="$next-iteration"/>
        <xsl:with-param name="prev-code" select="$code"/>
      </xsl:call-template>
    </xsl:otherwise>
  </xsl:choose>
</xsl:template>


<!-- A <clr:var> (variable) tag declares a variable with the 
	 respective type that can be addressed by a given index.
	 This instruction does not change the stack. -->
<xsl:template match="clr:var[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:var>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-post>
  </clr:var>
</xsl:template>



<!-- A <clr:box> instruction converts a boxable value to its boxed form -->
<xsl:template match="clr:box[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:box>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last()]"/>
      <dfa:elem>
        <xsl:attribute name="type" select="@type"/>
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:box>
</xsl:template>



<!-- A <clr:br> instruction performs an unconditional branch.
	 It unconditionally transfers control to its target. -->
<xsl:template match="clr:br[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:br>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-post>
  </clr:br>
</xsl:template>



<!-- A <clr:blt> instruction branches on less than.  The stack-post of 
	 this instruction is determined by copying all but the top item
	 from the stack-post of the preceeding instruction. -->
<xsl:template match="clr:blt[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:blt>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last() - 1]"/>
    </dfa:stack-post>
  </clr:blt>
</xsl:template>


<!-- A <clr:bge> instruction branches on greater than.  The stack-post of 
	 this instruction is determined by copying all but the top item
	 from the stack-post of the preceeding instruction. -->
<xsl:template match="clr:bge[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:bge>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last() - 1]"/>
    </dfa:stack-post>
  </clr:bge>
</xsl:template>



<!-- A <clr:ble> instruction branches on less than or equal to.  The 
     stack-post of this instruction is determined by copying all but 
     the top item from the stack-post of the preceeding instruction. -->
<xsl:template match="clr:ble[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:ble>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last() - 1]"/>
    </dfa:stack-post>
  </clr:ble>
</xsl:template>



<!-- A <clr:brfalse> instruction branches to target if its value is zero.
     The stack-post of this instruction is determined by copying all but 
     the top item from the stack-post of the preceeding instruction. -->
<xsl:template match="clr:brfalse[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:brfalse>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last() - 1]"/>
    </dfa:stack-post>
  </clr:brfalse>
</xsl:template>



<!-- A <clr:brtrue> instruction branches to target if its value is non-zero (true).
     The stack-post of this instruction is determined by copying all but 
     the top item from the stack-post of the preceeding instruction. -->
<xsl:template match="clr:brtrue[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:brtrue>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last() - 1]"/>
    </dfa:stack-post>
  </clr:brtrue>
</xsl:template>



<!-- A <clr:bne_un> instruction branches to target if the first value
	 compared is not equal to the second value.  The stack-post of this 
	 instruction is determined by copying all but the top item from the 
	 stack-post of the preceeding instruction. -->
<xsl:template match="clr:bne_un[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:bne_un>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last() - 1]"/>
    </dfa:stack-post>
  </clr:bne_un>
</xsl:template>

<!--  A <clr:newarr> pops a length and then creates a new array -->
<xsl:template match="clr:newarr[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:newarr>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last()]"/>
      <dfa:elem>
        <xsl:attribute name="type"><xsl:value-of select="@type"/></xsl:attribute>
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:newarr>
</xsl:template>


<!--  A <clr:ldelem> pops an index and array and pushes a value Stack transition: ..., array, index -> ..., value -->
<xsl:template match="clr:ldelem[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:ldelem>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() lt (last()-2)]"/>
      
      <dfa:elem>
        <xsl:attribute name="type"><xsl:value-of select="@type"/></xsl:attribute>
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:ldelem>
</xsl:template>


<!--  Pop array,index, value, off the stack -->
<xsl:template match="clr:stelem[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:stelem>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() lt (last()-3)]"/>
    </dfa:stack-post>
  </clr:stelem>
</xsl:template>

<!--  A <clr:castclass> instruction casts an object to a class.
	  The stack-post is determined by popping the top element 
	  (the original object) off of the stack and pushing the new 
	  type onto the stack. -->
<xsl:template match="clr:castclass[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:castclass>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last()]"/>
      <dfa:elem>
        <xsl:attribute name="type"><xsl:value-of select="@type"/></xsl:attribute>
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:castclass>
</xsl:template>



<!-- A <clr:label> instruction lists a label for branching statements.
     The predicate for this label matches by going up a level in our tree
     and selecting all elements that have a label attribute matching the label
     id and have a child element of dfa:stack-post.
     
     The stack-post is determined by the stack-post of the instruction whose
     attribute matches the label's id number -->
<xsl:template match="clr:label[../*[@label and ./dfa:stack-post]/@label = @id]">
  <clr:label>
    <xsl:copy-of select="@*"/>
    <xsl:variable name="id" select="@id"/>
    <dfa:stack-pre>
      <xsl:copy-of select="../*[@label = $id and ./dfa:stack-post]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="../*[@label = $id and ./dfa:stack-post]/dfa:stack-post/*"/>
    </dfa:stack-post>
  </clr:label>
</xsl:template>



<!-- A <clr:ldc> (load constant) instruction pushes a constant onto the
	 stack.  Thus, the stack-post contains the new type. -->
<xsl:template match="clr:ldc[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:ldc>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
      <dfa:elem>
        <xsl:attribute name="type"><xsl:value-of select="@type"/></xsl:attribute>
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:ldc>
</xsl:template>


<!-- Get an array length and dump it onto the stack --> 
<xsl:template match="clr:ldlen[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:ldlen>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
      <dfa:elem>
        <xsl:attribute name="type">int</xsl:attribute>
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:ldlen>
</xsl:template>



<!-- A <clr:stloc> (store location) instruction pops off the top of the
	 stack and saves it in a local variable.  Thus, the new stack-post
	 is the old stack post, save the top item. -->
<xsl:template match="clr:stloc[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:stloc>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last()]"/>
    </dfa:stack-post>
  </clr:stloc>
</xsl:template>



<!-- A <clr:stfld> (store field) instruction stores a value into the
 	 field of an object. -->
<xsl:template match="clr:stfld[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:stfld>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last()-1]"/>
    </dfa:stack-post>
  </clr:stfld>
</xsl:template>



<!-- A <clr:stsfld> (store field) instruction stores the static field of
 	 a class from a value on the stack. -->
<xsl:template match="clr:stsfld[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:stsfld>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last()]"/>
    </dfa:stack-post>
  </clr:stsfld>
</xsl:template>



<!-- A <clr:starg> (store argument) instruction pops a value off the stack
     and stores it in the named argument slot -->
<xsl:template match="clr:starg[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:starg>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last()]"/>
    </dfa:stack-post>
  </clr:starg>
</xsl:template>



<!-- The <clr:ldloc> (load location) instruction pushes the content of
	 a variable onto the stack.  The top of the dfa stack will have a new 
	 element listing the type of the variable that is pushed onto the
	 stack. -->
<xsl:template match="clr:ldloc[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:ldloc>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
      <dfa:elem>
        <xsl:variable name="idx" select="@index"/>
        <xsl:attribute name="type" select="../clr:var[@id = $idx]/@type"/>
        <xsl:if test="../clr:var[@id = $idx and @isValueType = 'true']">
          <xsl:attribute name="isValueType" select="'true'"/>
        </xsl:if>
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:ldloc>
</xsl:template>



<!-- The <clr:ldloca> (load location address) instruction pushes a local 
	 variable address onto the stack.  The top of the dfa stack will have 
	 a new element listing the type of the variable that is pushed onto the
	 stack. -->
<xsl:template match="clr:ldloca[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:ldloca>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
      <dfa:elem>
        <xsl:variable name="idx" select="@index"/>
        <xsl:attribute name="type" select="../clr:var[@id = $idx]/@type"/>
        <xsl:if test="../clr:var[@id = $idx and @isValueType = 'true']">
          <xsl:attribute name="isValueType" select="'true'"/>
        </xsl:if>
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:ldloca>
</xsl:template>



<!-- The <clr:ldarg> (load argument) instruction loads an argument
	 onto the stack. -->
<xsl:template match="clr:ldarg[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:ldarg>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
      <dfa:elem>
        <xsl:variable name="offset" select="if (../../.[@isStatic = 'true']) then 0 else 1"/>
        <xsl:variable name="idx" select="@index + 0"/>
        <xsl:attribute name="type">
          <xsl:choose>
            <xsl:when test="$idx = 0 and $offset = 1">
              <xsl:value-of select="../../../@name"/>
            </xsl:when>
            <xsl:otherwise>
              <xsl:value-of select="../../vm:signature/vm:parameter[$idx - $offset + 1]/@type"/>
            </xsl:otherwise>
          </xsl:choose>
        </xsl:attribute>
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:ldarg>
</xsl:template>



<!-- The <clr:ldfld> instruction loads the field of an object onto the stack. -->
<xsl:template match="clr:ldfld[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:ldfld>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last()]"/>
      <dfa:elem>
        <xsl:variable name="idx" select="@index"/>
        <xsl:attribute name="type" select="@type"/>
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:ldfld>
</xsl:template>


<!-- The <clr:ldsfld> instruction loads a static field onto the stack. -->
<xsl:template match="clr:ldsfld[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:ldsfld>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
      <dfa:elem>
        <xsl:variable name="idx" select="@index"/>
        <xsl:attribute name="type" select="@type"/>
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:ldsfld>
</xsl:template>


<!-- The <clr:add> instruction adds two items at the top of the stack.
	 To determine the stack-post, all that is necessary is to take one
	 of the element types (used for the add) off of the dfa stack. -->
<xsl:template match="clr:add[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:add>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
    	<xsl:call-template name="computeStackPost">
        	<xsl:with-param name="stackPre" select="preceding-sibling::*[1]/dfa:stack-post"/>
     	</xsl:call-template>
    </dfa:stack-post>
  </clr:add>
</xsl:template>


<!-- The <clr:add_ovf> instruction adds two items at the top of the stack
	 and checks for overflow.  To determine the stack-post, all that is 
	 necessary is to take one of the element types (used for the add) off of the 
	 dfa stack. -->
<xsl:template match="clr:add_ovf[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:add_ovf>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
    	<xsl:call-template name="computeStackPost">
        	<xsl:with-param name="stackPre" select="preceding-sibling::*[1]/dfa:stack-post"/>
     	</xsl:call-template>
    </dfa:stack-post>
  </clr:add_ovf>
</xsl:template>


<!-- The <clr:sub> instruction subtracts the two items at the top of the stack.
	 To determine the stack-post, all that is necessary is to take one
	 of the element types (used for the subtraction) off of the dfa stack. -->
<xsl:template match="clr:sub[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:sub>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
    	<xsl:call-template name="computeStackPost">
        	<xsl:with-param name="stackPre" select="preceding-sibling::*[1]/dfa:stack-post"/>
     	</xsl:call-template>
    </dfa:stack-post>
  </clr:sub>
</xsl:template>


<!-- The <clr:mul> instruction multiplys the two items at the top of the stack.
	 To determine the stack-post, all that is necessary is to take one
	 of the element types (used for the multiplication) off of the dfa stack. -->
<xsl:template match="clr:mul[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:mul>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
    	<xsl:call-template name="computeStackPost">
        	<xsl:with-param name="stackPre" select="preceding-sibling::*[1]/dfa:stack-post"/>
     	</xsl:call-template>
    </dfa:stack-post>
  </clr:mul>
</xsl:template>



<!-- The <clr:div> instruction divides the two items at the top of the stack.
	 To determine the stack-post, all that is necessary is to take one
	 of the element types (used for the division) off of the dfa stack. -->
<xsl:template match="clr:div[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:div>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
    	<xsl:call-template name="computeStackPost">
        	<xsl:with-param name="stackPre" select="preceding-sibling::*[1]/dfa:stack-post"/>
     	</xsl:call-template>
    </dfa:stack-post>
  </clr:div>
</xsl:template>



<!-- The <clr:rem> instruction computes the remainder of a division (modulus) 
	 of two items at the top of the stack.  To determine the stack-post, all 
	 that is necessary is to take one of the element types (used for the modulus) 
	 off of the dfa stack. -->
<xsl:template match="clr:rem[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:rem>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
    	<xsl:call-template name="computeStackPost">
        	<xsl:with-param name="stackPre" select="preceding-sibling::*[1]/dfa:stack-post"/>
     	</xsl:call-template>
    </dfa:stack-post>
  </clr:rem>
</xsl:template>



<xsl:template match="clr:ceq[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:ceq>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() lt (last() - 1)]"/>
      <dfa:elem type="int">
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:ceq>
</xsl:template>



<xsl:template match="clr:cgt[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:cgt>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() lt (last() - 1)]"/>
      <dfa:elem type="int">
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:cgt>
</xsl:template>



<xsl:template match="clr:clt[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:clt>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() lt (last() - 1)]"/>
      <dfa:elem type="int">
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:clt>
</xsl:template>



<!-- The  <clr:call> instruction calls a method.  -->
<xsl:template match="clr:call[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:call>
    <xsl:copy-of select="@*"/>
    <xsl:copy-of select="vm:signature"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:variable name="offset" select="if (@has-this = 'true') then 1 else 0"/>
      <xsl:variable name="numArgs" select="count(vm:signature/vm:parameter) +
                                           $offset"/>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() le (last() - $numArgs)]"/>
      <xsl:if test="vm:signature/vm:return[@type != 'void']">
        <dfa:elem>
          <xsl:attribute name="type" select="vm:signature/vm:return/@type"/>
          <xsl:attribute name="pushed-by" select="@oid"/>
        </dfa:elem>
      </xsl:if>
    </dfa:stack-post>
  </clr:call>
</xsl:template>



<!-- The  <clr:callvirt> instruction calls a method associated (at runtime)
	 with an object.  I.E., it calls a late-bound method on an object.  -->
<xsl:template match="clr:callvirt[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:callvirt>
    <xsl:copy-of select="@*"/>
    <xsl:copy-of select="vm:signature"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:variable name="offset" select="if (@has-this = 'true') then 1 else 0"/>
      <xsl:variable name="numArgs" select="count(vm:signature/vm:parameter) +
                                           $offset"/>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() le (last() - $numArgs)]"/>
      <xsl:if test="vm:signature/vm:return[@type != 'void']">
        <dfa:elem>
          <xsl:attribute name="type" select="vm:signature/vm:return/@type"/>
          <xsl:attribute name="pushed-by" select="@oid"/>
        </dfa:elem>
      </xsl:if>
    </dfa:stack-post>
  </clr:callvirt>
</xsl:template>



<!-- The <clr:newobj> instruction creates a new object. -->
<xsl:template match="clr:newobj[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:newobj>
    <xsl:copy-of select="@*"/>
    <xsl:copy-of select="vm:signature"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:variable name="numArgs" select="if (vm:signature) then
                                              count(vm:signature/vm:parameter) else 0"/>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() le (last() - $numArgs)]"/>
      <dfa:elem>
        <xsl:attribute name="type" select="@type"/>
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:newobj>
</xsl:template>



<!-- The <clr:ldfld> instruction loads a method pointer onto the stack -->
<xsl:template match="clr:ldftn[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:ldftn>
    <xsl:copy-of select="@*"/>
    <xsl:copy-of select="vm:signature"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
      <dfa:elem type="int">
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:ldftn>
</xsl:template>



<!-- The <clr:dup> instruction duplicates the top value on the stack.
	 Thus, the stack-post for our dfa stack will have a new value at 
	 top that is equal to the old top value. -->
<xsl:template match="clr:dup[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:dup>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() eq last()]"/>
    </dfa:stack-post>
  </clr:dup>
</xsl:template>


<!-- The <clr:pop> instruction takes the top value off of the stack.
	 Thus, the stack-post for our dfa stack will have the top value
	 removed.S -->
<xsl:template match="clr:pop[preceding-sibling::*[1]/dfa:stack-post]">
  <clr:pop>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() &lt; last()]"/>
    </dfa:stack-post>
  </clr:pop>
</xsl:template>



<!-- The <clr:ldnull> instruction pushes a null value onto the stack. -->
<xsl:template match="clr:ldnull[preceding-sibling::*[1]/dfa:stack-post]">
	<clr:ldnull>
    <xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
      <dfa:elem type="null">
        <xsl:attribute name="pushed-by" select="@oid"/>
      </dfa:elem>
    </dfa:stack-post>
  </clr:ldnull>
</xsl:template>



<!-- A NOP doesn't change the stack -->
<xsl:template match="clr:nop[preceding-sibling::*[1]/dfa:stack-post]">
	<clr:nop>
	<xsl:copy-of select="@*"/>
    <dfa:stack-pre>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-pre>
    <dfa:stack-post>
      <xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    </dfa:stack-post>
	</clr:nop>
</xsl:template>


<!-- TODO: map the other conv.* instructions -->
<!-- The <clr:conv.i8> pops a value off of the stack, converts it to
	 and Int64, and pushed is back onto the stack -->
<xsl:template match="clr:conv.i8[preceding-sibling::*[1]/dfa:stack-post]">
	<clr:conv.i8>
		<xsl:copy-of select="@*"/>
    	<dfa:stack-pre>
        	<xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    	</dfa:stack-pre>
    	<dfa:stack-post>
    		<xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() lt last()]"/>
    		<dfa:elem type="long">
        		<xsl:attribute name="pushed-by" select="@oid"/>
      		</dfa:elem>
    	</dfa:stack-post>
	</clr:conv.i8>
</xsl:template>


<!-- The <clr:conv.r4> pops a value off of the stack, converts it to float, and pushed is back onto the stack -->
<xsl:template match="clr:conv.r4[preceding-sibling::*[1]/dfa:stack-post]">
	<clr:conv.r4>
		<xsl:copy-of select="@*"/>
    	<dfa:stack-pre>
        	<xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    	</dfa:stack-pre>
    	<dfa:stack-post>
    		<xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() lt last()]"/>
    		<dfa:elem type="float">
        		<xsl:attribute name="pushed-by" select="@oid"/>
      		</dfa:elem>
    	</dfa:stack-post>
	</clr:conv.r4>
</xsl:template>


<!-- The <clr:conv.i4> pops a value off of the stack, converts it to
	 and Int32, and pushed is back onto the stack -->
<xsl:template match="clr:conv.i4[preceding-sibling::*[1]/dfa:stack-post]">
	<clr:conv.i4>
		<xsl:copy-of select="@*"/>
    	<dfa:stack-pre>
        	<xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*"/>
    	</dfa:stack-pre>
    	<dfa:stack-post>
    		<xsl:copy-of select="preceding-sibling::*[1]/dfa:stack-post/*[position() lt last()]"/>
    		<dfa:elem type="int">
        		<xsl:attribute name="pushed-by" select="@oid"/>
      		</dfa:elem>
    	</dfa:stack-post>
	</clr:conv.i4>
</xsl:template>



<!-- Computes the type of a single element to be pushed onto the stack.
	 The two top elements are popped off the stack, and a third element
	 based on their type is pushed onto the stack. -->
<xsl:template name="computeStackPost">
    <xsl:param name="stackPre"/>
	<xsl:copy-of select="$stackPre/*[position() lt last()-1]"/>
    <dfa:elem>
      	<xsl:attribute name="type" select="$stackPre/*[position() eq last()]/@type"/>
        <xsl:attribute name="pushed-by" select="@oid"/>
    </dfa:elem>
</xsl:template>
    
    
    
<xsl:template match="*">
  <xsl:copy>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates/>
  </xsl:copy>
</xsl:template>


<!-- *****************  Boxing section  ***************** -->
<xsl:template match="vm:code/*" mode="boxing">
  <xsl:copy>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates mode="boxing"/>
  </xsl:copy>
  <xsl:variable name="cast" select="dfa:type-mismatch(., ../*)"/>
  <xsl:if test="$cast">
    <xsl:choose>
  	  <xsl:when test="$cast[1]='int' or $cast[1]='double' or $cast[1]='float' or $cast[1]='byte' or $cast[1]='long' or $cast[1]='short'">
        <clr:call has-this="false" method="__BOX">
          <xsl:attribute name="class-type" select="$cast[2]"/>
          <vm:signature> 
            <vm:return>
              <xsl:attribute name="type" select="$cast[2]"/>
            </vm:return>
            <vm:parameter>
              <xsl:attribute name="type" select="$cast[1]"/>
            </vm:parameter>
          </vm:signature>
        </clr:call>
      </xsl:when>
      <xsl:otherwise>
          <clr:call has-this="false" method="__UNBOX">
          <xsl:attribute name="class-type" select="'System.ValueType'"/>
          <vm:signature> 
            <vm:return>
              <xsl:attribute name="type" select="'long'"/>
            </vm:return>
            <vm:parameter>
              <xsl:attribute name="type" select="'System.ValueType'"/>
            </vm:parameter>
          </vm:signature>
        </clr:call>
        <xsl:if test="$cast[2]='int' or $cast[2]='byte' or $cast[2]='short'">
        	<clr:conv.i4/>
        </xsl:if>
      </xsl:otherwise>
    </xsl:choose>
  </xsl:if>
</xsl:template>


<xsl:function name="dfa:type-mismatch" as="node()*">
  <xsl:param name="node" as="node()"/>
  <xsl:param name="siblings" as="node()*"/>
  
  <!-- Look for any call instruction that uses @oid's shows up on the
       type stack. This doesn't necessarily mean that @oid is used as
       an actual parameter for that call instruction. That needs to
       be checked next. -->
  <xsl:variable name="oid" select="$node/@oid"/>
  <!--  Select all siblings of the node that are clr:callvirt or clr:call instructions with stack-pre
  		values pushed by the node that fall within the values used for the callvirt's parameters. -->
  <xsl:variable name="call-inst"
   select="$siblings[(name() = 'clr:callvirt' or name() = 'clr:call') and ./dfa:stack-pre/*[(@pushed-by = $oid) and
                     (last() - position() lt count(../../vm:signature/vm:parameter))]]"/>
                     <!--  select="$siblings[name() = 'nothing']"/>-->
                     
  <!--  Select all siblings of the node that are clr:stloc instructions with the last stack-pre
  		value pushed by the node. -->
  <xsl:variable name="store-inst" 
   select="$siblings[name() = 'clr:stloc' and ./dfa:stack-pre/*[(@pushed-by = $oid)] and last()]"/>
  
  <!--  Select all siblings of the node that are clr:ceq instructions with the last stack-pre
  		value pushed by the node. -->
  <xsl:variable name="comparison-inst-equal" 
   select="$siblings[name() = 'clr:ceq' and ./dfa:stack-pre/*[(@pushed-by = $oid)] and last()]"/>
   
   <!--  Select all siblings of the node that are clr:cgt instructions with the last stack-pre
  		value pushed by the node. -->
  <xsl:variable name="comparison-inst-greater-than" 
   select="$siblings[name() = 'clr:cgt' and ./dfa:stack-pre/*[(@pushed-by = $oid)] and last()]"/>
   
   <!--  Select all siblings of the node that are clr:clt instructions with the last stack-pre
  		value pushed by the node. -->
  <xsl:variable name="comparison-inst-less-than" 
   select="$siblings[name() = 'clr:clt' and ./dfa:stack-pre/*[(@pushed-by = $oid)] and last()]"/>
  <xsl:choose>
  	<!-- If there are call instructions that use the value pushed by this node, then we 
  		 have to check their parameters for type mismatches -->
    <xsl:when test="not(count($call-inst)=0)">
    	<!-- Get the type of the value in the stack-pre -->
  		<xsl:variable name="dfa-type" select="$call-inst/dfa:stack-pre/*[@pushed-by = $oid]/@type"/>
  		<!-- Get the index to the type value in the parameter -->
  		<xsl:variable name="i" select="count($call-inst/dfa:stack-pre/*[@pushed-by = $oid][following-sibling::*])"/>
  		<!-- Get the type of the value in the parameter -->
  		<xsl:variable name="sign-type" select="$call-inst/vm:signature/vm:parameter[last() - $i]/@type"/>
  		<!-- TODO we have to check for all primitive types that are permissible for enums. -->
  		<xsl:sequence select="if ($dfa-type != $sign-type and $dfa-type = 'int' and $sign-type != 'boolean') then ($dfa-type, $sign-type) else ()"/>
  	</xsl:when>
  	
  	<!-- If there are store instructions that use the value pushed by this node to store
  		 into a local variable, then we have to check for type mismatch -->
  	<xsl:when test="not(count($store-inst)=0)">
  		<!-- Get the index value for the local variable used by the store instruction -->
  		<xsl:variable name="local-var-index" select="$store-inst/@index"/>
  		<!-- Get the local variable used with the store instruction -->
  		<xsl:variable name="local-var" select="$siblings[name() = 'clr:var' and @id = $local-var-index]"/>
  		<!-- Get the type of the local variable -->
  		<xsl:variable name="local-var-type" select="$local-var/@type"/>
  		<!-- Get the dfa type used by the store instruction -->
  		<xsl:variable name="dfa-type" select="$store-inst/dfa:stack-pre/dfa:elem[last()]/@type"/>
  		<xsl:variable name="isBoolean" select="$dfa-type = 'int' and $local-var-type = 'boolean'"/>
  		<xsl:sequence select="if ($dfa-type != $local-var-type and not($isBoolean)) then ($dfa-type, $local-var-type) else ()"/>
  	</xsl:when>
  	
  	<!-- If there is a ceq comparision instruction that uses the value pushed by this node, then 
  	     we have to check for type mismatch -->
  	<xsl:when test="not(count($comparison-inst-equal)=0)">
  		<!-- Get the dfa type used by the comparison instruction -->
  		<xsl:variable name="dfa-type" select="$comparison-inst-equal/dfa:stack-pre/dfa:elem[last()]/@type"/>
  		<xsl:variable name="isValueType" select="$comparison-inst-equal/dfa:stack-pre/dfa:elem[last()]/@isValueType"/>
  		<!-- Check whether the type is a valid type that can be consumed by the comparison  -->
  		<xsl:variable name="isValidComparisionType" select="if ($dfa-type = 'int' or $dfa-type = 'double' or $dfa-type = 'float' or $dfa-type='byte' or $dfa-type='long' or $dfa-type='short') then 'true' else()" />
  		<xsl:variable name="intVal" >
  			<xsl:copy-of select="'int'"/>
   		</xsl:variable>
  		<xsl:sequence select="if (not($isValidComparisionType) and $isValueType) then ($dfa-type, $intVal) else ()"/>
  	</xsl:when>
  	
  	<!-- If there is a cgt comparision instruction that uses the value pushed by this node, then 
  	     we have to check for type mismatch -->
  	<xsl:when test="not(count($comparison-inst-greater-than)=0)">
  	    <!-- Get the dfa type used by the comparison instruction -->
  		<xsl:variable name="dfa-type" select="$comparison-inst-greater-than/dfa:stack-pre/dfa:elem[last()]/@type"/>
  		<xsl:variable name="isValueType" select="$comparison-inst-greater-than/dfa:stack-pre/dfa:elem[last()]/@isValueType"/>
  		<!-- Check whether the type is a valid type that can be consumed by the comparison  -->
  		<xsl:variable name="isValidComparisionType" select="if ($dfa-type = 'int' or $dfa-type = 'double' or $dfa-type = 'float' or $dfa-type='byte' or $dfa-type='long' or $dfa-type='short') then 'true' else()" />
  		<xsl:variable name="intVal" >
  			<xsl:copy-of select="'int'"/>
   		</xsl:variable>
  		<xsl:sequence select="if (not($isValidComparisionType) and $isValueType) then ($dfa-type, $intVal) else ()"/>
  	</xsl:when>
  	
  	<!-- If there is a clt comparision instruction that uses the value pushed by this node, then 
  	     we have to check for type mismatch -->
  	<xsl:when test="not(count($comparison-inst-less-than)=0)">
  		<!-- Get the dfa type used by the comparison instruction -->
  		<xsl:variable name="dfa-type" select="$comparison-inst-less-than/dfa:stack-pre/dfa:elem[last()]/@type"/>
  		<xsl:variable name="isValueType" select="$comparison-inst-less-than/dfa:stack-pre/dfa:elem[last()]/@isValueType"/>
  		<!-- Check whether the type is a valid type that can be consumed by the comparison  -->
  		<xsl:variable name="isValidComparisionType" select="if ($dfa-type = 'int' or $dfa-type = 'double' or $dfa-type = 'float' or $dfa-type='byte' or $dfa-type='long' or $dfa-type='short') then 'true' else()" />
  		<xsl:variable name="intVal" >
  			<xsl:copy-of select="'int'"/>
   		</xsl:variable>
  		<xsl:sequence select="if (not($isValidComparisionType) and $isValueType) then ($dfa-type, $intVal) else ()"/>
  	</xsl:when>
  </xsl:choose>
</xsl:function>

</xsl:stylesheet>