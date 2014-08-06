
<%@ page import="myproject.CalenderSpread" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'calenderSpread.label', default: 'CalenderSpread')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-calenderSpread" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-calenderSpread" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list calenderSpread">
			
				<g:if test="${calenderSpreadInstance?.buySymbol}">
				<li class="fieldcontain">
					<span id="buySymbol-label" class="property-label"><g:message code="calenderSpread.buySymbol.label" default="Buy Symbol" /></span>
					
						<span class="property-value" aria-labelledby="buySymbol-label"><g:fieldValue bean="${calenderSpreadInstance}" field="buySymbol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calenderSpreadInstance?.instrument}">
				<li class="fieldcontain">
					<span id="instrument-label" class="property-label"><g:message code="calenderSpread.instrument.label" default="Instrument" /></span>
					
						<span class="property-value" aria-labelledby="instrument-label"><g:fieldValue bean="${calenderSpreadInstance}" field="instrument"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calenderSpreadInstance?.modAdd}">
				<li class="fieldcontain">
					<span id="modAdd-label" class="property-label"><g:message code="calenderSpread.modAdd.label" default="Mod Add" /></span>
					
						<span class="property-value" aria-labelledby="modAdd-label"><g:fieldValue bean="${calenderSpreadInstance}" field="modAdd"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calenderSpreadInstance?.orderQty}">
				<li class="fieldcontain">
					<span id="orderQty-label" class="property-label"><g:message code="calenderSpread.orderQty.label" default="Order Qty" /></span>
					
						<span class="property-value" aria-labelledby="orderQty-label"><g:fieldValue bean="${calenderSpreadInstance}" field="orderQty"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calenderSpreadInstance?.priceDiff}">
				<li class="fieldcontain">
					<span id="priceDiff-label" class="property-label"><g:message code="calenderSpread.priceDiff.label" default="Price Diff" /></span>
					
						<span class="property-value" aria-labelledby="priceDiff-label"><g:fieldValue bean="${calenderSpreadInstance}" field="priceDiff"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calenderSpreadInstance?.sellSymbol}">
				<li class="fieldcontain">
					<span id="sellSymbol-label" class="property-label"><g:message code="calenderSpread.sellSymbol.label" default="Sell Symbol" /></span>
					
						<span class="property-value" aria-labelledby="sellSymbol-label"><g:fieldValue bean="${calenderSpreadInstance}" field="sellSymbol"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${calenderSpreadInstance?.totalQty}">
				<li class="fieldcontain">
					<span id="totalQty-label" class="property-label"><g:message code="calenderSpread.totalQty.label" default="Total Qty" /></span>
					
						<span class="property-value" aria-labelledby="totalQty-label"><g:fieldValue bean="${calenderSpreadInstance}" field="totalQty"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:calenderSpreadInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${calenderSpreadInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
