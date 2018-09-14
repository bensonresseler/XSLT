<?xml version="1.0" encoding="UTF-8" ?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html" doctype-system="about:legacy-compat" encoding="UTF-8"/>
    <xsl:template match="/klanten">
        <html>
            <head></head>
            <body>
                <xsl:element name="table">
                    <xsl:attribute name="style">border-with:medium;border-style:double</xsl:attribute>
                    <tr>
                        <th>
                            <xsl:text>Provincie</xsl:text>
                        </th>
                        <th>
                            <xsl:text>Naam</xsl:text>
                        </th>
                        <th>
                            <xsl:text>Bedrag</xsl:text>
                        </th>
                    </tr>
                    <xsl:apply-templates>
                        <xsl:sort select="@provincie" order="ascending" />
                    </xsl:apply-templates>
                    <tr>
                        <td></td><td>Totaal: </td>
                        <td>
                            <xsl:value-of select="sum(klant/bedrag)" />
                        </td>
                    </tr>
                </xsl:element>
            </body>
        </html>
    </xsl:template>
    <xsl:template match="text()"/>
    <xsl:template match="klant">
        <xsl:element name="tr">
            <xsl:if test="bedrag &gt; 1000">
            <xsl:attribute name="style">color:red</xsl:attribute>
            </xsl:if>
            <td>
                <xsl:value-of select="@provincie"/>
            </td>
            <td>
                <xsl:value-of select="naam"/>
            </td>
            <td>
                <xsl:value-of select="bedrag"/>
            </td>
        </xsl:element>
    </xsl:template>
</xsl:transform>