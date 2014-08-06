
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>PACE</title>
    <g:javascript src="common.js"/>
    <g:javascript src="butterfly.js"/>
</head>

<body>

<div style="width: 95%" id="main" >
<g:form  name="strategyId" id="strategyId" controller="strategy" action="saveButterfly">
<table border="0px" style="width: 100%; margin-bottom: 20px; margin-top: 20px" class="myTable">
    <tr>
        <th>Instrument</th>
        <th>Symbol</th>
        <th>Call/put</th>
        <th>Exp.</th>
        <th>Strike1</th>
        <th>Strike2</th>
        <th>Strike3</th>
        <th>Price Diff</th>
        <th>Order Qty</th>
        <th>Total Qty</th>
        <th>Buy/Sell</th>
        <th>Mod/Add</th>
    </tr>
    <tr>

        <td>
            <select name="instrument" id="instrument" onchange="loadSymbols()" style="width: 100px">
                <option value="">Select One</option>
                <g:each in="${instruments}" var="instrument" status="i">
                    <option value="${instrument}">${instrument}</option>
                </g:each>
            </select>
        </td>
        <td>
            <select name="symbol" id="symbol" onchange="loadOptions()" style="width: 130px">
                <option value="">Select Symbol</option>
            </select>
        </td>
        <td>
            <select name="callPut" id="callPut" onchange="loadExpiry(this)" style="width: 70px">
                <option value="">Select One</option>
            </select>
        </td>
        <td>
            <select name="expiry" id="expiry" onchange="loadStrike()" style="width: 120px">
                <option value="">Select One</option>

            </select>
        </td>
        <td>
            <select name="strike1" id="strike1" style="width: 85px" onchange="loadStrike2(this)">
                <option value="">Select One</option>
            </select>
        </td>
        <td>
            <select name="strike2" id="strike2" style="width: 85px" onchange="loadStrike3()">
                <option value="">Select One</option>
            </select>
        </td>
        <td>
            %{--<select name="strike3" id="strike3" style="width: 85px">--}%
                %{--<option value="">Select One</option>--}%
            %{--</select>--}%

            <input type="text" name="strike3" id="strike3" style="width: 70px">
        </td>
        <td><input type="text" name="priceDiff" style="width: 70px"></td>
        <td><input type="text" name="orderQty" style="width: 70px"></td>
        <td><input type="text" name="totalQty" style="width: 70px"></td>
        <td>
            <select name="buySell">
                <option value="1">BUY</option>
                <option value="2">SELL</option>
            </select>
        </td>
        <td>
            %{--<select name="modAdd">--}%
                %{--<option value="ADD">ADD</option>--}%
                %{--<option value="MOD">MOD</option>--}%
            %{--</select>--}%
            <input type="submit" value="GO" class="pace-ok" onclick="return confirm('Are you sure to submit')">

        </td>
    </tr>
    %{--<tr><td colspan="12" style="text-align: center"></td></tr>--}%
</table>



    <table border="0px solid black" style="width: 100%; margin:0 auto; margin-bottom: 20px; margin-top: 20px" id="userStrategy">
    <tr>
        <th>S.N.</th>
        <th>I.D..</th>
        <th>Symbol</th>
        <th>Exp.</th>
        <th>Strike 1</th>
        <th>Strike 2</th>
        <th>Strike 3</th>
        <th>Price Diff.</th>
        <th>Total Qty</th>
        <th>Buy/Sell</th>
        <th>Traded Qty</th>
        <th>Status</th>
    </tr>
    %{--<tr>--}%
        %{--<td></td>--}%
        %{--<td></td>--}%
        %{--<td></td>--}%
        %{--<td></td>--}%
        %{--<td></td>--}%
        %{--<td></td>--}%
        %{--<td></td>--}%
        %{--<td></td>--}%
        %{--<td></td>--}%
        %{--<td></td>--}%
        %{--<td></td>--}%
        %{--<td></td>--}%
    %{--</tr>--}%

</table>
    %{--<table border="0" style="width: 100%; margin:0 auto">--}%
        %{--<tr><td colspan="12" style="text-align: center"></td></tr>--}%
    %{--</table>--}%
    <input type="button" value="STOP" class="pace-stop">
    %{--<table border="0">--}%
        %{--<tr><td colspan="12" style="text-align: center"></td></tr>--}%
    %{--</table>--}%
</g:form>
</div>
</body>
</html>