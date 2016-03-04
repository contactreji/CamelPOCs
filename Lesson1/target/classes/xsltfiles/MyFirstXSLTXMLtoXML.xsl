<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:fo="http://www.w3.org/1999/XSL/Format" xmlns:fn="http://www.w3.org/2005/xpath-functions">
    <xsl:strip-space elements="*" />
    <xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <orders>
<xsl:for-each select="PARTS/PART">
    <orderitem>
        <itemname><xsl:value-of select="ITEM"/></itemname>
        <manufacturername><xsl:value-of select="MANUFACTURER"/></manufacturername>
        <cost><xsl:value-of select="COST"/></cost>
    </orderitem>
</xsl:for-each>
        </orders>
</xsl:template>
</xsl:stylesheet>
