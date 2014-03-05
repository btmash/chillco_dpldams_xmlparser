<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<xsl:for-each select="resource">
		<mods xmlns="http://www.loc.gov/mods/v3" xmlns:mods="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink">
			<titleInfo>
				<title><xsl:value-of select="NAME"/></title>
			</titleInfo>
			<identifier type="resourceID"><xsl:value-of select="RESOURCEID"/></identifier>
			<xsl:for-each select="CREATOR">
				<name>
					<role>
						<roleTerm type="text" authority="marcrelator">creator</roleTerm>
					</role>
					<namePart><xsl:value-of select="self::node()"/></namePart>
				</name>
			</xsl:for-each>

			<xsl:for-each select="SUBJECT">
				<subject><topic><xsl:value-of select="self::node()"/></topic></subject>
			</xsl:for-each>

			<originInfo>
				<dateIssued><xsl:value-of select="DATE"/></dateIssued>
				<dateCaptured><xsl:value-of select="DIGIDATE"/></dateCaptured>
				<xsl:if test="string(PUBLISHER)">
					<publisher><xsl:value-of select="PUBLISHER"/></publisher>
				</xsl:if>
			</originInfo>

			<physicalDescription>
				<extent><xsl:value-of select="FORMAT"/></extent>
			</physicalDescription>

			<abstract><xsl:value-of select="FULL_DESCRIPTION"/></abstract>

			<accessCondition type="use and reproduction"><xsl:value-of select="RIGHTS"/></accessCondition>
		</mods>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet> 