<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:vm="http://xmlvm.org"
	xmlns:clr="http://xmlvm.org/clr" xmlns:jvm="http://xmlvm.org/jvm"
	xmlns:dfa="http://xmlvm.org/dfa" version="2.0">

	<xsl:import href="dfa.xsl" />

			<xsl:variable name="begin">
				<xsl:sequence select="vm:xmlvm/*" />
			</xsl:variable>
			
	<xsl:template match="vm:xmlvm">
			<xsl:variable name="end">
				<xsl:apply-templates />
			</xsl:variable>
		<vm:xmlvm>
			<xsl:choose>
				<xsl:when test="deep-equal($begin, $end)">
					<xsl:attribute name="iters">done</xsl:attribute>
					<xsl:sequence select="$begin" />
				</xsl:when>
				<xsl:otherwise>
					<xsl:attribute name="iters">
   						<xsl:attribute name="iters">changed</xsl:attribute>
   					</xsl:attribute>
					<xsl:sequence select="$end" />
				</xsl:otherwise>
			</xsl:choose>
		</vm:xmlvm>
	</xsl:template>
</xsl:stylesheet>
