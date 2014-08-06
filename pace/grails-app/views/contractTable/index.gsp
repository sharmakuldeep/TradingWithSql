
<%@ page import="myproject.ContractTable" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'contractTable.label', default: 'ContractTable')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-contractTable" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-contractTable" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="assetToken" title="${message(code: 'contractTable.assetToken.label', default: 'Asset Token')}" />
					
						<g:sortableColumn property="basePrice" title="${message(code: 'contractTable.basePrice.label', default: 'Base Price')}" />
					
						<g:sortableColumn property="boardLotQuantity" title="${message(code: 'contractTable.boardLotQuantity.label', default: 'Board Lot Quantity')}" />
					
						<g:sortableColumn property="bookClosureEndDate" title="${message(code: 'contractTable.bookClosureEndDate.label', default: 'Book Closure End Date')}" />
					
						<g:sortableColumn property="bookClosureStartDate" title="${message(code: 'contractTable.bookClosureStartDate.label', default: 'Book Closure Start Date')}" />
					
						<g:sortableColumn property="cALevel" title="${message(code: 'contractTable.cALevel.label', default: 'CAL evel')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${contractTableInstanceList}" status="i" var="contractTableInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${contractTableInstance.id}">${fieldValue(bean: contractTableInstance, field: "assetToken")}</g:link></td>
					
						<td>${fieldValue(bean: contractTableInstance, field: "basePrice")}</td>
					
						<td>${fieldValue(bean: contractTableInstance, field: "boardLotQuantity")}</td>
					
						<td>${fieldValue(bean: contractTableInstance, field: "bookClosureEndDate")}</td>
					
						<td>${fieldValue(bean: contractTableInstance, field: "bookClosureStartDate")}</td>
					
						<td>${fieldValue(bean: contractTableInstance, field: "cALevel")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${contractTableInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
