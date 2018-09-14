<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8" />
    <xsl:template match="/personen">
        <html>
            <head>
                <title>K3</title>
            </head>
            <body>
                <xsl:apply-templates />
            </body>
        </html>
    </xsl:template>
    <xsl:template match="naam">
        <div>
            <xsl:value-of select="."/>
            <xsl:element name="img">
                <xsl:attribute name="src"><xsl:value-of select="@figuur"></xsl:value-of></xsl:attribute>
                <xsl:attribute name="style">width:100px</xsl:attribute>
            </xsl:element>
        </div>
    </xsl:template>
</xsl:transform>