<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
	<xsl:for-each select="resource">
		<mods xmlns="http://www.loc.gov/mods/v3" xmlns:mods="http://www.loc.gov/mods/v3" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xlink="http://www.w3.org/1999/xlink">
			<xsl:if test="string(NAME)">
				<titleInfo>
					<title><xsl:value-of select="NAME"/></title>
				</titleInfo>
			</xsl:if>
			<xsl:if test="string(name)">
				<titleInfo>
					<title><xsl:value-of select="name"/></title>
				</titleInfo>
			</xsl:if>

      <xsl:if test="string(RESOURCEID)">
        <identifier type="resourceID"><xsl:value-of select="RESOURCEID"/></identifier>
      </xsl:if>
      <xsl:if test="string(resourceid)">
        <identifier type="resourceID"><xsl:value-of select="resourceid"/></identifier>
      </xsl:if>

      <xsl:if test="string(CREATOR)">
  			<xsl:for-each select="CREATOR">
  				<name>
  					<role>
  						<roleTerm type="text" authority="marcrelator">creator</roleTerm>
  					</role>
  					<namePart><xsl:value-of select="self::node()"/></namePart>
  				</name>
  			</xsl:for-each>
      </xsl:if>
      <xsl:if test="string(creator)">
        <xsl:for-each select="creator">
          <name>
            <role>
              <roleTerm type="text" authority="marcrelator">creator</roleTerm>
            </role>
            <namePart><xsl:value-of select="self::node()"/></namePart>
          </name>
        </xsl:for-each>
      </xsl:if>

      <xsl:if test="string(SUBJECT)">
  			<xsl:for-each select="SUBJECT">
  				<subject><topic><xsl:value-of select="self::node()"/></topic></subject>
  			</xsl:for-each>
      </xsl:if>
      <xsl:if test="string(subject)">
        <xsl:for-each select="subject">
          <subject><topic><xsl:value-of select="self::node()"/></topic></subject>
        </xsl:for-each>
      </xsl:if>


			<originInfo>
        <xsl:if test="string(DIGIDATE)">
				  <dateCaptured><xsl:value-of select="DIGIDATE"/></dateCaptured>
				</xsl:if>
        <xsl:if test="string(digidate)">
          <dateCaptured><xsl:value-of select="digidate"/></dateCaptured>
        </xsl:if>
			</originInfo>

      <xsl:if test="string(FORMAT)">
  			<physicalDescription>
  				<extent><xsl:value-of select="FORMAT"/></extent>
  			</physicalDescription>
      </xsl:if>
      <xsl:if test="string(format)">
        <physicalDescription>
          <extent><xsl:value-of select="format"/></extent>
        </physicalDescription>
      </xsl:if>

      <xsl:if test="string(FULL_DESCRIPTION)">
			  <abstract><xsl:value-of select="FULL_DESCRIPTION"/></abstract>
      </xsl:if>
      <xsl:if test="string(descriptn)">
        <abstract><xsl:value-of select="descriptn"/></abstract>
      </xsl:if>

      <xsl:if test="string(RIGHTS)">
			  <accessCondition type="use and reproduction"><xsl:value-of select="RIGHTS"/></accessCondition>
      </xsl:if>
      <xsl:if test="string(rights)">
        <accessCondition type="use and reproduction"><xsl:value-of select="rights"/></accessCondition>
      </xsl:if>
		</mods>
	</xsl:for-each>
</xsl:template>

</xsl:stylesheet> 