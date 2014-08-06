
<%@ page import="myproject.CalenderSpread" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'calenderSpread.label', default: 'CalenderSpread')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-calenderSpread" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-calenderSpread" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="buySymbol" title="${message(code: 'calenderSpread.buySymbol.label', default: 'Buy Symbol')}" />
					
						<g:sortableColumn property="instrument" title="${message(code: 'calenderSpread.instrument.label', default: 'Instrument')}" />
					
						<g:sortableColumn property="modAdd" title="${message(code: 'calenderSpread.modAdd.label', default: 'Mod Add')}" />
					
						<g:sortableColumn property="orderQty" title="${message(code: 'calenderSpread.orderQty.label', default: 'Order Qty')}" />
					
						<g:sortableColumn property="priceDiff" title="${message(code: 'calenderSpread.priceDiff.label', default: 'Price Diff')}" />
					
						<g:sortableColumn property="sellSymbol" title="${message(code: 'calenderSpread.sellSymbol.label', default: 'Sell Symbol')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${calenderSpreadInstanceList}" status="i" var="calenderSpreadInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${calenderSpreadInstance.id}">${fieldValue(bean: calenderSpreadInstance, field: "buySymbol")}</g:link></td>
					
						<td>${fieldValue(bean: calenderSpreadInstance, field: "instrument")}</td>
					
						<td>${fieldValue(bean: calenderSpreadInstance, field: "modAdd")}</td>
					
						<td>${fieldValue(bean: calenderSpreadInstance, field: "orderQty")}</td>
					
						<td>${fieldValue(bean: calenderSpreadInstance, field: "priceDiff")}</td>
					
						<td>${fieldValue(bean: calenderSpreadInstance, field: "sellSymbol")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${calenderSpreadInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
