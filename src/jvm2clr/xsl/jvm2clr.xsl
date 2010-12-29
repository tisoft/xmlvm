<?xml version="1.0" encoding="utf-8"?>

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