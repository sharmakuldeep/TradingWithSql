
<%@ page import="myproject.ContractTable" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contractTable.label', default: 'ContractTable')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-contractTable" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-contractTable" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list contractTable">
			
				<g:if test="${contractTableInstance?.assetToken}">
				<li class="fieldcontain">
					<span id="assetToken-label" class="property-label"><g:message code="contractTable.assetToken.label" default="Asset Token" /></span>
					
						<span class="property-value" aria-labelledby="assetToken-label"><g:fieldValue bean="${contractTableInstance}" field="assetToken"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.basePrice}">
				<li class="fieldcontain">
					<span id="basePrice-label" class="property-label"><g:message code="contractTable.basePrice.label" default="Base Price" /></span>
					
						<span class="property-value" aria-labelledby="basePrice-label"><g:fieldValue bean="${contractTableInstance}" field="basePrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.boardLotQuantity}">
				<li class="fieldcontain">
					<span id="boardLotQuantity-label" class="property-label"><g:message code="contractTable.boardLotQuantity.label" default="Board Lot Quantity" /></span>
					
						<span class="property-value" aria-labelledby="boardLotQuantity-label"><g:fieldValue bean="${contractTableInstance}" field="boardLotQuantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.bookClosureEndDate}">
				<li class="fieldcontain">
					<span id="bookClosureEndDate-label" class="property-label"><g:message code="contractTable.bookClosureEndDate.label" default="Book Closure End Date" /></span>
					
						<span class="property-value" aria-labelledby="bookClosureEndDate-label"><g:fieldValue bean="${contractTableInstance}" field="bookClosureEndDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.bookClosureStartDate}">
				<li class="fieldcontain">
					<span id="bookClosureStartDate-label" class="property-label"><g:message code="contractTable.bookClosureStartDate.label" default="Book Closure Start Date" /></span>
					
						<span class="property-value" aria-labelledby="bookClosureStartDate-label"><g:fieldValue bean="${contractTableInstance}" field="bookClosureStartDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.cALevel}">
				<li class="fieldcontain">
					<span id="cALevel-label" class="property-label"><g:message code="contractTable.cALevel.label" default="CAL evel" /></span>
					
						<span class="property-value" aria-labelledby="cALevel-label"><g:fieldValue bean="${contractTableInstance}" field="cALevel"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.category}">
				<li class="fieldcontain">
					<span id="category-label" class="property-label"><g:message code="contractTable.category.label" default="Category" /></span>
					
						<span class="property-value" aria-labelledby="category-label"><g:fieldValue bean="${contractTableInstance}" field="category"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.checkSum}">
				<li class="fieldcontain">
					<span id="checkSum-label" class="property-label"><g:message code="contractTable.checkSum.label" default="Check Sum" /></span>
					
						<span class="property-value" aria-labelledby="checkSum-label"><g:fieldValue bean="${contractTableInstance}" field="checkSum"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.contractTablecol}">
				<li class="fieldcontain">
					<span id="contractTablecol-label" class="property-label"><g:message code="contractTable.contractTablecol.label" default="Contract Tablecol" /></span>
					
						<span class="property-value" aria-labelledby="contractTablecol-label"><g:fieldValue bean="${contractTableInstance}" field="contractTablecol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.creditRating}">
				<li class="fieldcontain">
					<span id="creditRating-label" class="property-label"><g:message code="contractTable.creditRating.label" default="Credit Rating" /></span>
					
						<span class="property-value" aria-labelledby="creditRating-label"><g:fieldValue bean="${contractTableInstance}" field="creditRating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.deleteFlag}">
				<li class="fieldcontain">
					<span id="deleteFlag-label" class="property-label"><g:message code="contractTable.deleteFlag.label" default="Delete Flag" /></span>
					
						<span class="property-value" aria-labelledby="deleteFlag-label"><g:fieldValue bean="${contractTableInstance}" field="deleteFlag"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.eGMAGM}">
				<li class="fieldcontain">
					<span id="eGMAGM-label" class="property-label"><g:message code="contractTable.eGMAGM.label" default="EGMAGM" /></span>
					
						<span class="property-value" aria-labelledby="eGMAGM-label"><g:fieldValue bean="${contractTableInstance}" field="eGMAGM"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.eligibility}">
				<li class="fieldcontain">
					<span id="eligibility-label" class="property-label"><g:message code="contractTable.eligibility.label" default="Eligibility" /></span>
					
						<span class="property-value" aria-labelledby="eligibility-label"><g:fieldValue bean="${contractTableInstance}" field="eligibility"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.eligibility_copy1}">
				<li class="fieldcontain">
					<span id="eligibility_copy1-label" class="property-label"><g:message code="contractTable.eligibility_copy1.label" default="Eligibilitycopy1" /></span>
					
						<span class="property-value" aria-labelledby="eligibility_copy1-label"><g:fieldValue bean="${contractTableInstance}" field="eligibility_copy1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.eligibility_copy2}">
				<li class="fieldcontain">
					<span id="eligibility_copy2-label" class="property-label"><g:message code="contractTable.eligibility_copy2.label" default="Eligibilitycopy2" /></span>
					
						<span class="property-value" aria-labelledby="eligibility_copy2-label"><g:fieldValue bean="${contractTableInstance}" field="eligibility_copy2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.eligibility_copy3}">
				<li class="fieldcontain">
					<span id="eligibility_copy3-label" class="property-label"><g:message code="contractTable.eligibility_copy3.label" default="Eligibilitycopy3" /></span>
					
						<span class="property-value" aria-labelledby="eligibility_copy3-label"><g:fieldValue bean="${contractTableInstance}" field="eligibility_copy3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.exAllowed}">
				<li class="fieldcontain">
					<span id="exAllowed-label" class="property-label"><g:message code="contractTable.exAllowed.label" default="Ex Allowed" /></span>
					
						<span class="property-value" aria-labelledby="exAllowed-label"><g:fieldValue bean="${contractTableInstance}" field="exAllowed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.exDate}">
				<li class="fieldcontain">
					<span id="exDate-label" class="property-label"><g:message code="contractTable.exDate.label" default="Ex Date" /></span>
					
						<span class="property-value" aria-labelledby="exDate-label"><g:fieldValue bean="${contractTableInstance}" field="exDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.exRejectionAllowed}">
				<li class="fieldcontain">
					<span id="exRejectionAllowed-label" class="property-label"><g:message code="contractTable.exRejectionAllowed.label" default="Ex Rejection Allowed" /></span>
					
						<span class="property-value" aria-labelledby="exRejectionAllowed-label"><g:fieldValue bean="${contractTableInstance}" field="exRejectionAllowed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.exStyle}">
				<li class="fieldcontain">
					<span id="exStyle-label" class="property-label"><g:message code="contractTable.exStyle.label" default="Ex Style" /></span>
					
						<span class="property-value" aria-labelledby="exStyle-label"><g:fieldValue bean="${contractTableInstance}" field="exStyle"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.exerciseEndDate}">
				<li class="fieldcontain">
					<span id="exerciseEndDate-label" class="property-label"><g:message code="contractTable.exerciseEndDate.label" default="Exercise End Date" /></span>
					
						<span class="property-value" aria-labelledby="exerciseEndDate-label"><g:fieldValue bean="${contractTableInstance}" field="exerciseEndDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.exerciseStartDate}">
				<li class="fieldcontain">
					<span id="exerciseStartDate-label" class="property-label"><g:message code="contractTable.exerciseStartDate.label" default="Exercise Start Date" /></span>
					
						<span class="property-value" aria-labelledby="exerciseStartDate-label"><g:fieldValue bean="${contractTableInstance}" field="exerciseStartDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.expiryDate}">
				<li class="fieldcontain">
					<span id="expiryDate-label" class="property-label"><g:message code="contractTable.expiryDate.label" default="Expiry Date" /></span>
					
						<span class="property-value" aria-labelledby="expiryDate-label"><g:fieldValue bean="${contractTableInstance}" field="expiryDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.expulsionDate}">
				<li class="fieldcontain">
					<span id="expulsionDate-label" class="property-label"><g:message code="contractTable.expulsionDate.label" default="Expulsion Date" /></span>
					
						<span class="property-value" aria-labelledby="expulsionDate-label"><g:fieldValue bean="${contractTableInstance}" field="expulsionDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.freezeQuantity}">
				<li class="fieldcontain">
					<span id="freezeQuantity-label" class="property-label"><g:message code="contractTable.freezeQuantity.label" default="Freeze Quantity" /></span>
					
						<span class="property-value" aria-labelledby="freezeQuantity-label"><g:fieldValue bean="${contractTableInstance}" field="freezeQuantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.highPriceRange}">
				<li class="fieldcontain">
					<span id="highPriceRange-label" class="property-label"><g:message code="contractTable.highPriceRange.label" default="High Price Range" /></span>
					
						<span class="property-value" aria-labelledby="highPriceRange-label"><g:fieldValue bean="${contractTableInstance}" field="highPriceRange"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.instrumentName}">
				<li class="fieldcontain">
					<span id="instrumentName-label" class="property-label"><g:message code="contractTable.instrumentName.label" default="Instrument Name" /></span>
					
						<span class="property-value" aria-labelledby="instrumentName-label"><g:fieldValue bean="${contractTableInstance}" field="instrumentName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.instrumentOfAsset}">
				<li class="fieldcontain">
					<span id="instrumentOfAsset-label" class="property-label"><g:message code="contractTable.instrumentOfAsset.label" default="Instrument Of Asset" /></span>
					
						<span class="property-value" aria-labelledby="instrumentOfAsset-label"><g:fieldValue bean="${contractTableInstance}" field="instrumentOfAsset"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.interestDivident}">
				<li class="fieldcontain">
					<span id="interestDivident-label" class="property-label"><g:message code="contractTable.interestDivident.label" default="Interest Divident" /></span>
					
						<span class="property-value" aria-labelledby="interestDivident-label"><g:fieldValue bean="${contractTableInstance}" field="interestDivident"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.interestPaymentDate}">
				<li class="fieldcontain">
					<span id="interestPaymentDate-label" class="property-label"><g:message code="contractTable.interestPaymentDate.label" default="Interest Payment Date" /></span>
					
						<span class="property-value" aria-labelledby="interestPaymentDate-label"><g:fieldValue bean="${contractTableInstance}" field="interestPaymentDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.isCOrporateAdjusted}">
				<li class="fieldcontain">
					<span id="isCOrporateAdjusted-label" class="property-label"><g:message code="contractTable.isCOrporateAdjusted.label" default="Is CO rporate Adjusted" /></span>
					
						<span class="property-value" aria-labelledby="isCOrporateAdjusted-label"><g:fieldValue bean="${contractTableInstance}" field="isCOrporateAdjusted"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.issueMaturityDate}">
				<li class="fieldcontain">
					<span id="issueMaturityDate-label" class="property-label"><g:message code="contractTable.issueMaturityDate.label" default="Issue Maturity Date" /></span>
					
						<span class="property-value" aria-labelledby="issueMaturityDate-label"><g:fieldValue bean="${contractTableInstance}" field="issueMaturityDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.issueRate}">
				<li class="fieldcontain">
					<span id="issueRate-label" class="property-label"><g:message code="contractTable.issueRate.label" default="Issue Rate" /></span>
					
						<span class="property-value" aria-labelledby="issueRate-label"><g:fieldValue bean="${contractTableInstance}" field="issueRate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.issueStartDate}">
				<li class="fieldcontain">
					<span id="issueStartDate-label" class="property-label"><g:message code="contractTable.issueStartDate.label" default="Issue Start Date" /></span>
					
						<span class="property-value" aria-labelledby="issueStartDate-label"><g:fieldValue bean="${contractTableInstance}" field="issueStartDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.issuedCapital}">
				<li class="fieldcontain">
					<span id="issuedCapital-label" class="property-label"><g:message code="contractTable.issuedCapital.label" default="Issued Capital" /></span>
					
						<span class="property-value" aria-labelledby="issuedCapital-label"><g:fieldValue bean="${contractTableInstance}" field="issuedCapital"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.listingDate}">
				<li class="fieldcontain">
					<span id="listingDate-label" class="property-label"><g:message code="contractTable.listingDate.label" default="Listing Date" /></span>
					
						<span class="property-value" aria-labelledby="listingDate-label"><g:fieldValue bean="${contractTableInstance}" field="listingDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.localLDBUpdateDateTime}">
				<li class="fieldcontain">
					<span id="localLDBUpdateDateTime-label" class="property-label"><g:message code="contractTable.localLDBUpdateDateTime.label" default="Local LDBU pdate Date Time" /></span>
					
						<span class="property-value" aria-labelledby="localLDBUpdateDateTime-label"><g:fieldValue bean="${contractTableInstance}" field="localLDBUpdateDateTime"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.lowPriceRange}">
				<li class="fieldcontain">
					<span id="lowPriceRange-label" class="property-label"><g:message code="contractTable.lowPriceRange.label" default="Low Price Range" /></span>
					
						<span class="property-value" aria-labelledby="lowPriceRange-label"><g:fieldValue bean="${contractTableInstance}" field="lowPriceRange"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.mFAON}">
				<li class="fieldcontain">
					<span id="mFAON-label" class="property-label"><g:message code="contractTable.mFAON.label" default="MFAON" /></span>
					
						<span class="property-value" aria-labelledby="mFAON-label"><g:fieldValue bean="${contractTableInstance}" field="mFAON"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.marginPercentage}">
				<li class="fieldcontain">
					<span id="marginPercentage-label" class="property-label"><g:message code="contractTable.marginPercentage.label" default="Margin Percentage" /></span>
					
						<span class="property-value" aria-labelledby="marginPercentage-label"><g:fieldValue bean="${contractTableInstance}" field="marginPercentage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.minimumLotQuantity}">
				<li class="fieldcontain">
					<span id="minimumLotQuantity-label" class="property-label"><g:message code="contractTable.minimumLotQuantity.label" default="Minimum Lot Quantity" /></span>
					
						<span class="property-value" aria-labelledby="minimumLotQuantity-label"><g:fieldValue bean="${contractTableInstance}" field="minimumLotQuantity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="contractTable.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${contractTableInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.noDeliveryEndDate}">
				<li class="fieldcontain">
					<span id="noDeliveryEndDate-label" class="property-label"><g:message code="contractTable.noDeliveryEndDate.label" default="No Delivery End Date" /></span>
					
						<span class="property-value" aria-labelledby="noDeliveryEndDate-label"><g:fieldValue bean="${contractTableInstance}" field="noDeliveryEndDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.oldTokenNumber}">
				<li class="fieldcontain">
					<span id="oldTokenNumber-label" class="property-label"><g:message code="contractTable.oldTokenNumber.label" default="Old Token Number" /></span>
					
						<span class="property-value" aria-labelledby="oldTokenNumber-label"><g:fieldValue bean="${contractTableInstance}" field="oldTokenNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.optionType}">
				<li class="fieldcontain">
					<span id="optionType-label" class="property-label"><g:message code="contractTable.optionType.label" default="Option Type" /></span>
					
						<span class="property-value" aria-labelledby="optionType-label"><g:fieldValue bean="${contractTableInstance}" field="optionType"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.permittedToTrade}">
				<li class="fieldcontain">
					<span id="permittedToTrade-label" class="property-label"><g:message code="contractTable.permittedToTrade.label" default="Permitted To Trade" /></span>
					
						<span class="property-value" aria-labelledby="permittedToTrade-label"><g:fieldValue bean="${contractTableInstance}" field="permittedToTrade"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.plAllowed}">
				<li class="fieldcontain">
					<span id="plAllowed-label" class="property-label"><g:message code="contractTable.plAllowed.label" default="Pl Allowed" /></span>
					
						<span class="property-value" aria-labelledby="plAllowed-label"><g:fieldValue bean="${contractTableInstance}" field="plAllowed"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.readmissionDate}">
				<li class="fieldcontain">
					<span id="readmissionDate-label" class="property-label"><g:message code="contractTable.readmissionDate.label" default="Readmission Date" /></span>
					
						<span class="property-value" aria-labelledby="readmissionDate-label"><g:fieldValue bean="${contractTableInstance}" field="readmissionDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.recordDate}">
				<li class="fieldcontain">
					<span id="recordDate-label" class="property-label"><g:message code="contractTable.recordDate.label" default="Record Date" /></span>
					
						<span class="property-value" aria-labelledby="recordDate-label"><g:fieldValue bean="${contractTableInstance}" field="recordDate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.remarks}">
				<li class="fieldcontain">
					<span id="remarks-label" class="property-label"><g:message code="contractTable.remarks.label" default="Remarks" /></span>
					
						<span class="property-value" aria-labelledby="remarks-label"><g:fieldValue bean="${contractTableInstance}" field="remarks"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.reserve1}">
				<li class="fieldcontain">
					<span id="reserve1-label" class="property-label"><g:message code="contractTable.reserve1.label" default="Reserve1" /></span>
					
						<span class="property-value" aria-labelledby="reserve1-label"><g:fieldValue bean="${contractTableInstance}" field="reserve1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.reserve2}">
				<li class="fieldcontain">
					<span id="reserve2-label" class="property-label"><g:message code="contractTable.reserve2.label" default="Reserve2" /></span>
					
						<span class="property-value" aria-labelledby="reserve2-label"><g:fieldValue bean="${contractTableInstance}" field="reserve2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.reserved44}">
				<li class="fieldcontain">
					<span id="reserved44-label" class="property-label"><g:message code="contractTable.reserved44.label" default="Reserved44" /></span>
					
						<span class="property-value" aria-labelledby="reserved44-label"><g:fieldValue bean="${contractTableInstance}" field="reserved44"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.reserved44_copy1}">
				<li class="fieldcontain">
					<span id="reserved44_copy1-label" class="property-label"><g:message code="contractTable.reserved44_copy1.label" default="Reserved44copy1" /></span>
					
						<span class="property-value" aria-labelledby="reserved44_copy1-label"><g:fieldValue bean="${contractTableInstance}" field="reserved44_copy1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.reserved44_copy2}">
				<li class="fieldcontain">
					<span id="reserved44_copy2-label" class="property-label"><g:message code="contractTable.reserved44_copy2.label" default="Reserved44copy2" /></span>
					
						<span class="property-value" aria-labelledby="reserved44_copy2-label"><g:fieldValue bean="${contractTableInstance}" field="reserved44_copy2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.reserved44_copy3}">
				<li class="fieldcontain">
					<span id="reserved44_copy3-label" class="property-label"><g:message code="contractTable.reserved44_copy3.label" default="Reserved44copy3" /></span>
					
						<span class="property-value" aria-labelledby="reserved44_copy3-label"><g:fieldValue bean="${contractTableInstance}" field="reserved44_copy3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.reservedIdentifier}">
				<li class="fieldcontain">
					<span id="reservedIdentifier-label" class="property-label"><g:message code="contractTable.reservedIdentifier.label" default="Reserved Identifier" /></span>
					
						<span class="property-value" aria-labelledby="reservedIdentifier-label"><g:fieldValue bean="${contractTableInstance}" field="reservedIdentifier"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.rightsBonus}">
				<li class="fieldcontain">
					<span id="rightsBonus-label" class="property-label"><g:message code="contractTable.rightsBonus.label" default="Rights Bonus" /></span>
					
						<span class="property-value" aria-labelledby="rightsBonus-label"><g:fieldValue bean="${contractTableInstance}" field="rightsBonus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.securityStatus}">
				<li class="fieldcontain">
					<span id="securityStatus-label" class="property-label"><g:message code="contractTable.securityStatus.label" default="Security Status" /></span>
					
						<span class="property-value" aria-labelledby="securityStatus-label"><g:fieldValue bean="${contractTableInstance}" field="securityStatus"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.securityStatus_copy1}">
				<li class="fieldcontain">
					<span id="securityStatus_copy1-label" class="property-label"><g:message code="contractTable.securityStatus_copy1.label" default="Security Statuscopy1" /></span>
					
						<span class="property-value" aria-labelledby="securityStatus_copy1-label"><g:fieldValue bean="${contractTableInstance}" field="securityStatus_copy1"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.securityStatus_copy2}">
				<li class="fieldcontain">
					<span id="securityStatus_copy2-label" class="property-label"><g:message code="contractTable.securityStatus_copy2.label" default="Security Statuscopy2" /></span>
					
						<span class="property-value" aria-labelledby="securityStatus_copy2-label"><g:fieldValue bean="${contractTableInstance}" field="securityStatus_copy2"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.securityStatus_copy3}">
				<li class="fieldcontain">
					<span id="securityStatus_copy3-label" class="property-label"><g:message code="contractTable.securityStatus_copy3.label" default="Security Statuscopy3" /></span>
					
						<span class="property-value" aria-labelledby="securityStatus_copy3-label"><g:fieldValue bean="${contractTableInstance}" field="securityStatus_copy3"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.series}">
				<li class="fieldcontain">
					<span id="series-label" class="property-label"><g:message code="contractTable.series.label" default="Series" /></span>
					
						<span class="property-value" aria-labelledby="series-label"><g:fieldValue bean="${contractTableInstance}" field="series"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.strikePrice}">
				<li class="fieldcontain">
					<span id="strikePrice-label" class="property-label"><g:message code="contractTable.strikePrice.label" default="Strike Price" /></span>
					
						<span class="property-value" aria-labelledby="strikePrice-label"><g:fieldValue bean="${contractTableInstance}" field="strikePrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.symbol}">
				<li class="fieldcontain">
					<span id="symbol-label" class="property-label"><g:message code="contractTable.symbol.label" default="Symbol" /></span>
					
						<span class="property-value" aria-labelledby="symbol-label"><g:fieldValue bean="${contractTableInstance}" field="symbol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.symbolForAsset}">
				<li class="fieldcontain">
					<span id="symbolForAsset-label" class="property-label"><g:message code="contractTable.symbolForAsset.label" default="Symbol For Asset" /></span>
					
						<span class="property-value" aria-labelledby="symbolForAsset-label"><g:fieldValue bean="${contractTableInstance}" field="symbolForAsset"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.tickSize}">
				<li class="fieldcontain">
					<span id="tickSize-label" class="property-label"><g:message code="contractTable.tickSize.label" default="Tick Size" /></span>
					
						<span class="property-value" aria-labelledby="tickSize-label"><g:fieldValue bean="${contractTableInstance}" field="tickSize"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.token}">
				<li class="fieldcontain">
					<span id="token-label" class="property-label"><g:message code="contractTable.token.label" default="Token" /></span>
					
						<span class="property-value" aria-labelledby="token-label"><g:fieldValue bean="${contractTableInstance}" field="token"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${contractTableInstance?.warningQuantity}">
				<li class="fieldcontain">
					<span id="warningQuantity-label" class="property-label"><g:message code="contractTable.warningQuantity.label" default="Warning Quantity" /></span>
					
						<span class="property-value" aria-labelledby="warningQuantity-label"><g:fieldValue bean="${contractTableInstance}" field="warningQuantity"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:contractTableInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${contractTableInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
