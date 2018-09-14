<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8" />
    <xsl:template match="/">
        <html>
            <head></head>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="text()"/>
    <xsl:template match="boeken/boek">
        <h1>
            <xsl:value-of select="titel"/>
        </h1>
        <xsl:apply-templates />
    </xsl:template>
    <xsl:template match="titel">
        <p><label>De titel: </label> <xsl:value-of select="."/></p>
    </xsl:template>
    <xsl:template match="prijs">
        <p><label>De prijs: </label>
            <xsl:element name="span">
                <xsl:if test=". &gt; 20">
                <xsl:attribute name="style">color:red</xsl:attribute>
                </xsl:if>
                <xsl:if test=". &lt; 12">
                    <xsl:attribute name="style">color:green</xsl:attribute>
                </xsl:if>
                <xsl:value-of select="."/>
            </xsl:element>
        </p>
    </xsl:template>
</xsl:transform>