<%@ page import="myproject.ContractTable" %>



<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'assetToken', 'error')} ">
	<label for="assetToken">
		<g:message code="contractTable.assetToken.label" default="Asset Token" />
		
	</label>
	<g:field type="number" name="assetToken" value="${contractTableInstance.assetToken}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'basePrice', 'error')} ">
	<label for="basePrice">
		<g:message code="contractTable.basePrice.label" default="Base Price" />
		
	</label>
	<g:field type="number" name="basePrice" value="${contractTableInstance.basePrice}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'boardLotQuantity', 'error')} ">
	<label for="boardLotQuantity">
		<g:message code="contractTable.boardLotQuantity.label" default="Board Lot Quantity" />
		
	</label>
	<g:field type="number" name="boardLotQuantity" value="${contractTableInstance.boardLotQuantity}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'bookClosureEndDate', 'error')} ">
	<label for="bookClosureEndDate">
		<g:message code="contractTable.bookClosureEndDate.label" default="Book Closure End Date" />
		
	</label>
	<g:field type="number" name="bookClosureEndDate" value="${contractTableInstance.bookClosureEndDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'bookClosureStartDate', 'error')} ">
	<label for="bookClosureStartDate">
		<g:message code="contractTable.bookClosureStartDate.label" default="Book Closure Start Date" />
		
	</label>
	<g:field type="number" name="bookClosureStartDate" value="${contractTableInstance.bookClosureStartDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'cALevel', 'error')} ">
	<label for="cALevel">
		<g:message code="contractTable.cALevel.label" default="CAL evel" />
		
	</label>
	<g:field type="number" name="cALevel" value="${contractTableInstance.cALevel}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'category', 'error')} ">
	<label for="category">
		<g:message code="contractTable.category.label" default="Category" />
		
	</label>
	<g:field type="number" name="category" value="${contractTableInstance.category}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'checkSum', 'error')} ">
	<label for="checkSum">
		<g:message code="contractTable.checkSum.label" default="Check Sum" />
		
	</label>
	<g:textField name="checkSum" value="${contractTableInstance?.checkSum}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'contractTablecol', 'error')} ">
	<label for="contractTablecol">
		<g:message code="contractTable.contractTablecol.label" default="Contract Tablecol" />
		
	</label>
	<g:field type="number" name="contractTablecol" value="${contractTableInstance.contractTablecol}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'creditRating', 'error')} ">
	<label for="creditRating">
		<g:message code="contractTable.creditRating.label" default="Credit Rating" />
		
	</label>
	<g:field type="number" name="creditRating" value="${contractTableInstance.creditRating}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'deleteFlag', 'error')} ">
	<label for="deleteFlag">
		<g:message code="contractTable.deleteFlag.label" default="Delete Flag" />
		
	</label>
	<g:textField name="deleteFlag" value="${contractTableInstance?.deleteFlag}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'eGMAGM', 'error')} ">
	<label for="eGMAGM">
		<g:message code="contractTable.eGMAGM.label" default="EGMAGM" />
		
	</label>
	<g:field type="number" name="eGMAGM" value="${contractTableInstance.eGMAGM}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'eligibility', 'error')} ">
	<label for="eligibility">
		<g:message code="contractTable.eligibility.label" default="Eligibility" />
		
	</label>
	<g:field type="number" name="eligibility" value="${contractTableInstance.eligibility}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'eligibility_copy1', 'error')} ">
	<label for="eligibility_copy1">
		<g:message code="contractTable.eligibility_copy1.label" default="Eligibilitycopy1" />
		
	</label>
	<g:field type="number" name="eligibility_copy1" value="${contractTableInstance.eligibility_copy1}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'eligibility_copy2', 'error')} ">
	<label for="eligibility_copy2">
		<g:message code="contractTable.eligibility_copy2.label" default="Eligibilitycopy2" />
		
	</label>
	<g:field type="number" name="eligibility_copy2" value="${contractTableInstance.eligibility_copy2}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'eligibility_copy3', 'error')} ">
	<label for="eligibility_copy3">
		<g:message code="contractTable.eligibility_copy3.label" default="Eligibilitycopy3" />
		
	</label>
	<g:field type="number" name="eligibility_copy3" value="${contractTableInstance.eligibility_copy3}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'exAllowed', 'error')} ">
	<label for="exAllowed">
		<g:message code="contractTable.exAllowed.label" default="Ex Allowed" />
		
	</label>
	<g:textField name="exAllowed" value="${contractTableInstance?.exAllowed}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'exDate', 'error')} ">
	<label for="exDate">
		<g:message code="contractTable.exDate.label" default="Ex Date" />
		
	</label>
	<g:field type="number" name="exDate" value="${contractTableInstance.exDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'exRejectionAllowed', 'error')} ">
	<label for="exRejectionAllowed">
		<g:message code="contractTable.exRejectionAllowed.label" default="Ex Rejection Allowed" />
		
	</label>
	<g:textField name="exRejectionAllowed" value="${contractTableInstance?.exRejectionAllowed}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'exStyle', 'error')} ">
	<label for="exStyle">
		<g:message code="contractTable.exStyle.label" default="Ex Style" />
		
	</label>
	<g:textField name="exStyle" value="${contractTableInstance?.exStyle}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'exerciseEndDate', 'error')} ">
	<label for="exerciseEndDate">
		<g:message code="contractTable.exerciseEndDate.label" default="Exercise End Date" />
		
	</label>
	<g:field type="number" name="exerciseEndDate" value="${contractTableInstance.exerciseEndDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'exerciseStartDate', 'error')} ">
	<label for="exerciseStartDate">
		<g:message code="contractTable.exerciseStartDate.label" default="Exercise Start Date" />
		
	</label>
	<g:field type="number" name="exerciseStartDate" value="${contractTableInstance.exerciseStartDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'expiryDate', 'error')} ">
	<label for="expiryDate">
		<g:message code="contractTable.expiryDate.label" default="Expiry Date" />
		
	</label>
	<g:field type="number" name="expiryDate" value="${contractTableInstance.expiryDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'expulsionDate', 'error')} ">
	<label for="expulsionDate">
		<g:message code="contractTable.expulsionDate.label" default="Expulsion Date" />
		
	</label>
	<g:field type="number" name="expulsionDate" value="${contractTableInstance.expulsionDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'freezeQuantity', 'error')} ">
	<label for="freezeQuantity">
		<g:message code="contractTable.freezeQuantity.label" default="Freeze Quantity" />
		
	</label>
	<g:field type="number" name="freezeQuantity" value="${contractTableInstance.freezeQuantity}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'highPriceRange', 'error')} ">
	<label for="highPriceRange">
		<g:message code="contractTable.highPriceRange.label" default="High Price Range" />
		
	</label>
	<g:field type="number" name="highPriceRange" value="${contractTableInstance.highPriceRange}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'instrumentName', 'error')} ">
	<label for="instrumentName">
		<g:message code="contractTable.instrumentName.label" default="Instrument Name" />
		
	</label>
	<g:textField name="instrumentName" value="${contractTableInstance?.instrumentName}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'instrumentOfAsset', 'error')} ">
	<label for="instrumentOfAsset">
		<g:message code="contractTable.instrumentOfAsset.label" default="Instrument Of Asset" />
		
	</label>
	<g:field type="number" name="instrumentOfAsset" value="${contractTableInstance.instrumentOfAsset}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'interestDivident', 'error')} ">
	<label for="interestDivident">
		<g:message code="contractTable.interestDivident.label" default="Interest Divident" />
		
	</label>
	<g:field type="number" name="interestDivident" value="${contractTableInstance.interestDivident}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'interestPaymentDate', 'error')} ">
	<label for="interestPaymentDate">
		<g:message code="contractTable.interestPaymentDate.label" default="Interest Payment Date" />
		
	</label>
	<g:field type="number" name="interestPaymentDate" value="${contractTableInstance.interestPaymentDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'isCOrporateAdjusted', 'error')} ">
	<label for="isCOrporateAdjusted">
		<g:message code="contractTable.isCOrporateAdjusted.label" default="Is CO rporate Adjusted" />
		
	</label>
	<g:field type="number" name="isCOrporateAdjusted" value="${contractTableInstance.isCOrporateAdjusted}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'issueMaturityDate', 'error')} ">
	<label for="issueMaturityDate">
		<g:message code="contractTable.issueMaturityDate.label" default="Issue Maturity Date" />
		
	</label>
	<g:field type="number" name="issueMaturityDate" value="${contractTableInstance.issueMaturityDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'issueRate', 'error')} ">
	<label for="issueRate">
		<g:message code="contractTable.issueRate.label" default="Issue Rate" />
		
	</label>
	<g:field type="number" name="issueRate" value="${contractTableInstance.issueRate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'issueStartDate', 'error')} ">
	<label for="issueStartDate">
		<g:message code="contractTable.issueStartDate.label" default="Issue Start Date" />
		
	</label>
	<g:field type="number" name="issueStartDate" value="${contractTableInstance.issueStartDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'issuedCapital', 'error')} ">
	<label for="issuedCapital">
		<g:message code="contractTable.issuedCapital.label" default="Issued Capital" />
		
	</label>
	<g:field type="number" name="issuedCapital" value="${contractTableInstance.issuedCapital}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'listingDate', 'error')} ">
	<label for="listingDate">
		<g:message code="contractTable.listingDate.label" default="Listing Date" />
		
	</label>
	<g:field type="number" name="listingDate" value="${contractTableInstance.listingDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'localLDBUpdateDateTime', 'error')} ">
	<label for="localLDBUpdateDateTime">
		<g:message code="contractTable.localLDBUpdateDateTime.label" default="Local LDBU pdate Date Time" />
		
	</label>
	<g:field type="number" name="localLDBUpdateDateTime" value="${contractTableInstance.localLDBUpdateDateTime}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'lowPriceRange', 'error')} ">
	<label for="lowPriceRange">
		<g:message code="contractTable.lowPriceRange.label" default="Low Price Range" />
		
	</label>
	<g:field type="number" name="lowPriceRange" value="${contractTableInstance.lowPriceRange}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'mFAON', 'error')} ">
	<label for="mFAON">
		<g:message code="contractTable.mFAON.label" default="MFAON" />
		
	</label>
	<g:field type="number" name="mFAON" value="${contractTableInstance.mFAON}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'marginPercentage', 'error')} ">
	<label for="marginPercentage">
		<g:message code="contractTable.marginPercentage.label" default="Margin Percentage" />
		
	</label>
	<g:field type="number" name="marginPercentage" value="${contractTableInstance.marginPercentage}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'minimumLotQuantity', 'error')} ">
	<label for="minimumLotQuantity">
		<g:message code="contractTable.minimumLotQuantity.label" default="Minimum Lot Quantity" />
		
	</label>
	<g:field type="number" name="minimumLotQuantity" value="${contractTableInstance.minimumLotQuantity}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="contractTable.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${contractTableInstance?.name}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'noDeliveryEndDate', 'error')} ">
	<label for="noDeliveryEndDate">
		<g:message code="contractTable.noDeliveryEndDate.label" default="No Delivery End Date" />
		
	</label>
	<g:field type="number" name="noDeliveryEndDate" value="${contractTableInstance.noDeliveryEndDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'oldTokenNumber', 'error')} ">
	<label for="oldTokenNumber">
		<g:message code="contractTable.oldTokenNumber.label" default="Old Token Number" />
		
	</label>
	<g:field type="number" name="oldTokenNumber" value="${contractTableInstance.oldTokenNumber}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'optionType', 'error')} ">
	<label for="optionType">
		<g:message code="contractTable.optionType.label" default="Option Type" />
		
	</label>
	<g:textField name="optionType" value="${contractTableInstance?.optionType}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'permittedToTrade', 'error')} ">
	<label for="permittedToTrade">
		<g:message code="contractTable.permittedToTrade.label" default="Permitted To Trade" />
		
	</label>
	<g:field type="number" name="permittedToTrade" value="${contractTableInstance.permittedToTrade}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'plAllowed', 'error')} ">
	<label for="plAllowed">
		<g:message code="contractTable.plAllowed.label" default="Pl Allowed" />
		
	</label>
	<g:textField name="plAllowed" value="${contractTableInstance?.plAllowed}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'readmissionDate', 'error')} ">
	<label for="readmissionDate">
		<g:message code="contractTable.readmissionDate.label" default="Readmission Date" />
		
	</label>
	<g:field type="number" name="readmissionDate" value="${contractTableInstance.readmissionDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'recordDate', 'error')} ">
	<label for="recordDate">
		<g:message code="contractTable.recordDate.label" default="Record Date" />
		
	</label>
	<g:field type="number" name="recordDate" value="${contractTableInstance.recordDate}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'remarks', 'error')} ">
	<label for="remarks">
		<g:message code="contractTable.remarks.label" default="Remarks" />
		
	</label>
	<g:textField name="remarks" value="${contractTableInstance?.remarks}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'reserve1', 'error')} ">
	<label for="reserve1">
		<g:message code="contractTable.reserve1.label" default="Reserve1" />
		
	</label>
	<g:textField name="reserve1" value="${contractTableInstance?.reserve1}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'reserve2', 'error')} ">
	<label for="reserve2">
		<g:message code="contractTable.reserve2.label" default="Reserve2" />
		
	</label>
	<g:textField name="reserve2" value="${contractTableInstance?.reserve2}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'reserved44', 'error')} ">
	<label for="reserved44">
		<g:message code="contractTable.reserved44.label" default="Reserved44" />
		
	</label>
	<g:textField name="reserved44" value="${contractTableInstance?.reserved44}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'reserved44_copy1', 'error')} ">
	<label for="reserved44_copy1">
		<g:message code="contractTable.reserved44_copy1.label" default="Reserved44copy1" />
		
	</label>
	<g:textField name="reserved44_copy1" value="${contractTableInstance?.reserved44_copy1}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'reserved44_copy2', 'error')} ">
	<label for="reserved44_copy2">
		<g:message code="contractTable.reserved44_copy2.label" default="Reserved44copy2" />
		
	</label>
	<g:textField name="reserved44_copy2" value="${contractTableInstance?.reserved44_copy2}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'reserved44_copy3', 'error')} ">
	<label for="reserved44_copy3">
		<g:message code="contractTable.reserved44_copy3.label" default="Reserved44copy3" />
		
	</label>
	<g:textField name="reserved44_copy3" value="${contractTableInstance?.reserved44_copy3}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'reservedIdentifier', 'error')} ">
	<label for="reservedIdentifier">
		<g:message code="contractTable.reservedIdentifier.label" default="Reserved Identifier" />
		
	</label>
	<g:field type="number" name="reservedIdentifier" value="${contractTableInstance.reservedIdentifier}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'rightsBonus', 'error')} ">
	<label for="rightsBonus">
		<g:message code="contractTable.rightsBonus.label" default="Rights Bonus" />
		
	</label>
	<g:field type="number" name="rightsBonus" value="${contractTableInstance.rightsBonus}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'securityStatus', 'error')} ">
	<label for="securityStatus">
		<g:message code="contractTable.securityStatus.label" default="Security Status" />
		
	</label>
	<g:field type="number" name="securityStatus" value="${contractTableInstance.securityStatus}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'securityStatus_copy1', 'error')} ">
	<label for="securityStatus_copy1">
		<g:message code="contractTable.securityStatus_copy1.label" default="Security Statuscopy1" />
		
	</label>
	<g:field type="number" name="securityStatus_copy1" value="${contractTableInstance.securityStatus_copy1}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'securityStatus_copy2', 'error')} ">
	<label for="securityStatus_copy2">
		<g:message code="contractTable.securityStatus_copy2.label" default="Security Statuscopy2" />
		
	</label>
	<g:field type="number" name="securityStatus_copy2" value="${contractTableInstance.securityStatus_copy2}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'securityStatus_copy3', 'error')} ">
	<label for="securityStatus_copy3">
		<g:message code="contractTable.securityStatus_copy3.label" default="Security Statuscopy3" />
		
	</label>
	<g:field type="number" name="securityStatus_copy3" value="${contractTableInstance.securityStatus_copy3}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'series', 'error')} ">
	<label for="series">
		<g:message code="contractTable.series.label" default="Series" />
		
	</label>
	<g:textField name="series" value="${contractTableInstance?.series}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'strikePrice', 'error')} ">
	<label for="strikePrice">
		<g:message code="contractTable.strikePrice.label" default="Strike Price" />
		
	</label>
	<g:textField name="strikePrice" value="${contractTableInstance?.strikePrice}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'symbol', 'error')} ">
	<label for="symbol">
		<g:message code="contractTable.symbol.label" default="Symbol" />
		
	</label>
	<g:textField name="symbol" value="${contractTableInstance?.symbol}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'symbolForAsset', 'error')} ">
	<label for="symbolForAsset">
		<g:message code="contractTable.symbolForAsset.label" default="Symbol For Asset" />
		
	</label>
	<g:field type="number" name="symbolForAsset" value="${contractTableInstance.symbolForAsset}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'tickSize', 'error')} ">
	<label for="tickSize">
		<g:message code="contractTable.tickSize.label" default="Tick Size" />
		
	</label>
	<g:field type="number" name="tickSize" value="${contractTableInstance.tickSize}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'token', 'error')} ">
	<label for="token">
		<g:message code="contractTable.token.label" default="Token" />
		
	</label>
	<g:field type="number" name="token" value="${contractTableInstance.token}" />
</div>

<div class="fieldcontain ${hasErrors(bean: contractTableInstance, field: 'warningQuantity', 'error')} ">
	<label for="warningQuantity">
		<g:message code="contractTable.warningQuantity.label" default="Warning Quantity" />
		
	</label>
	<g:field type="number" name="warningQuantity" value="${contractTableInstance.warningQuantity}" />
</div>

