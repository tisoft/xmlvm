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


<xsl:template match="jvm:aload">
  <clr:ldarg>
    <xsl:attribute name="index" select="@index"/>
  </clr:ldarg>
</xsl:template>


<xsl:template match="jvm:getstatic">
  <clr:ldsfld>
    <xsl:copy-of select="@*"/>
  </clr:ldsfld>
</xsl:template>


<xsl:template match="jvm:ldc[@type='java.lang.String']">
  <clr:ldstr>
    <xsl:attribute name="value" select="@value"/>
  </clr:ldstr>
  <clr:newobj type="java.lang.String">
    <vm:signature>
      <vm:return type="void"/>
      <vm:parameter type="System.String"/>
    </vm:signature>
  </clr:newobj>
</xsl:template>


<xsl:template match="jvm:invokevirtual">
  <clr:callvirt has-this="true">
  	<xsl:copy-of select="@*"/>
  	<xsl:copy-of select="*"/>
  </clr:callvirt>
</xsl:template>


<xsl:template match="jvm:invokespecial">
  <clr:call has-this="true">
  	<xsl:copy-of select="@*"/>
  	<xsl:copy-of select="*"/>
  </clr:call>
</xsl:template>


<xsl:template match="jvm:var">
</xsl:template>


<xsl:template match="jvm:label">
</xsl:template>


<xsl:template match="jvm:return">
  <clr:return/>
</xsl:template>

<xsl:template match="*">
  <xsl:copy>
    <xsl:copy-of select="@*"/>
    <xsl:apply-templates/>
  </xsl:copy>
</xsl:template>

</xsl:stylesheet>