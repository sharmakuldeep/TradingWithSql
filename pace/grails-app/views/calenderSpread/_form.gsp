<%@ page import="myproject.CalenderSpread" %>



<div class="fieldcontain ${hasErrors(bean: calenderSpreadInstance, field: 'buySymbol', 'error')} ">
	<label for="buySymbol">
		<g:message code="calenderSpread.buySymbol.label" default="Buy Symbol" />
		
	</label>
	<g:textField name="buySymbol" value="${calenderSpreadInstance?.buySymbol}" />
</div>

<div class="fieldcontain ${hasErrors(bean: calenderSpreadInstance, field: 'instrument', 'error')} ">
	<label for="instrument">
		<g:message code="calenderSpread.instrument.label" default="Instrument" />
		
	</label>
	<g:textField name="instrument" value="${calenderSpreadInstance?.instrument}" />
</div>

<div class="fieldcontain ${hasErrors(bean: calenderSpreadInstance, field: 'modAdd', 'error')} ">
	<label for="modAdd">
		<g:message code="calenderSpread.modAdd.label" default="Mod Add" />
		
	</label>
	<g:textField name="modAdd" value="${calenderSpreadInstance?.modAdd}" />
</div>

<div class="fieldcontain ${hasErrors(bean: calenderSpreadInstance, field: 'orderQty', 'error')} ">
	<label for="orderQty">
		<g:message code="calenderSpread.orderQty.label" default="Order Qty" />
		
	</label>
	<g:field type="number" name="orderQty" value="${calenderSpreadInstance.orderQty}" />
</div>

<div class="fieldcontain ${hasErrors(bean: calenderSpreadInstance, field: 'priceDiff', 'error')} ">
	<label for="priceDiff">
		<g:message code="calenderSpread.priceDiff.label" default="Price Diff" />
		
	</label>
	<g:field type="number" name="priceDiff" value="${calenderSpreadInstance.priceDiff}" />
</div>

<div class="fieldcontain ${hasErrors(bean: calenderSpreadInstance, field: 'sellSymbol', 'error')} ">
	<label for="sellSymbol">
		<g:message code="calenderSpread.sellSymbol.label" default="Sell Symbol" />
		
	</label>
	<g:textField name="sellSymbol" value="${calenderSpreadInstance?.sellSymbol}" />
</div>

<div class="fieldcontain ${hasErrors(bean: calenderSpreadInstance, field: 'totalQty', 'error')} ">
	<label for="totalQty">
		<g:message code="calenderSpread.totalQty.label" default="Total Qty" />
		
	</label>
	<g:field type="number" name="totalQty" value="${calenderSpreadInstance.totalQty}" />
</div>

