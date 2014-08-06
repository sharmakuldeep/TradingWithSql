<%--
  Created by IntelliJ IDEA.
  User: Digvijay
  Date: 8/7/14
  Time: 6:21 PM
--%>

<%@ page import="myproject.ContractTable" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>PACE</title>
    <g:javascript src="common.js"/>
    <g:javascript src="calenderSpread.js"/>
    <link rel="stylesheet" href="${resource(dir: 'css', file: 'select2.css')}">

</head>

<body>
<div style="margin-top: 0px" id="main">
<g:form  name="strategyId" id="strategyId" controller="strategy" action="saveCalenderSpread">

<table border="0" border="0px" style="width: 100%; margin:0 auto; margin-bottom: 20px; margin-top:20px">
    <tr>
        <th>Instrument</th>
        <th>Symbol</th>
        <th>Buy Symbol</th>
        <th>Sell Symbol</th>
        <th>Price Diff</th>
        <th>Order Qty</th>
        <th>Total Qty</th>
        <th>Mod/Add</th>
    </tr>
    <tr>
        <td>
            <select name="instrument" id="instrument" onchange="loadSymbols()">
                <option value="">Select Instrument</option>
                <g:each in="${instruments}" var="instrument" status="i">
                <option value="${instrument}">${instrument}</option>
                 </g:each>
            </select>
            %{--<g:select name="instrument" id="instrument" optionKey="instrumentName" class="university-size-1-2"--}%
                      %{--value=" "--}%
                      %{--optionValue="instrumentName" onchange="loadProgramFeeAmount(this),checkCourseCodeLength(this)" from="${instruments}"--}%
                    %{--/>--}%
        </td>
        <td>
            <select name="symbol" id="symbol" onchange="loadNames()">
                <option value="">Select Symbol</option>
            </select>
        </td>
        <td>
            <select name="buySymbol" id="buySymbol" onchange="removeSell()">
                <option value="">Select Symbol</option>
            </select>
        </td>
        <td>
            <select name="sellSymbol" id="sellSymbol">
            <option value="">Select Symbol</option>
            </select>
        </td>
        <td><input type="text" name="priceDiff" style="width: 100px"></td>
        <td><input type="text" name="orderQty" style="width: 100px"></td>
        <td><input type="text" name="totalQty" style="width: 100px"></td>
        <td>
            <select name="type">
                <option value="ADD">ADD</option>
                <option value="MOD">MOD</option>
            </select>
        </td>
    </tr>
    <tr><td colspan="12" style="text-align: center"></td></tr>
</table>
    <input type="submit" value="GO" class="pace-ok" onclick="return confirm('Are you sure to submit')">
</g:form>
<table border="0" style="width: 100%; margin:0 auto; margin-bottom: 20px; margin-top: 20px" id="userStrategy">
    <thead>
        <th>S.N.</th>
        <th>I.D.</th>
        <th>Buy Symbol</th>
        <th>Sell Symbol</th>
        <th>Price Diff.</th>
        <th>Order Qty</th>
        <th>Total Qty</th>
        <th>Traded Qty</th>
        <th>Status</th>
    </thead>

</table>

%{--<table border="0">--}%
    %{--<tr><td colspan="12" style="text-align: center"></td></tr>--}%
%{--</table>--}%
    <input type="button" value="STOP" class="pace-stop">



    <script>
        $(document).ready(function() {
//            $("#buySymbol").select2();
//            $("#sellSymbol").select2();
        });
        $(document).ready(function() {

        });

    </script>
</body>
</html>