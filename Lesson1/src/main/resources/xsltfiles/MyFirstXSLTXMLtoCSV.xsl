<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:fn="http://www.w3.org/2005/xpath-functions">
    <xsl:strip-space elements="*" />
    <xsl:output method="text" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">item,manufacturer,model,cost
<xsl:for-each select="PARTS/PART">
    <xsl:value-of select="normalize-space(ITEM)"/>,<xsl:value-of select="normalize-space(MANUFACTURER)"/>,<xsl:value-of select="normalize-space(MODEL)"/>,<xsl:value-of select="normalize-space(COST)"/>
    <xsl:text>&#10;</xsl:text>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
