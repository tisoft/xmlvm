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

<xsl:stylesheet xmlns:xsl = "http://www.w3.org/1999/XSL/Transform"
                xmlns:xs  = "http://www.w3.org/2001/XMLSchema"
                xmlns:vm  = "http://xmlvm.org"
                xmlns:clr = "http://xmlvm.org/clr"
                xmlns:jvm = "http://xmlvm.org/jvm"
                xmlns:dfa = "http://xmlvm.org/dfa"
                version="2.0">

<xsl:import href="dfa4avm.xsl" />
                
<xsl:template match="vm:xmlvm">
  <vm:xmlvm>
  
   <xsl:copy-of select="@*"/>
	<xsl:variable name="boxing-output1">
      <xsl:apply-templates mode="boxing" />
    </xsl:variable>
    <xsl:variable name="cleared-dfa">
      <xsl:apply-templates mode="clear-dfa" select="$boxing-output1"/>
    </xsl:variable>
   <xsl:sequence select="$cleared-dfa"/>
  </vm:xmlvm>
</xsl:template>
                
                
</xsl:stylesheet>
