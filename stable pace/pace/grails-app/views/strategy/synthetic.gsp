<%--
  Created by IntelliJ IDEA.
  User: Digvijay
  Date: 8/7/14
  Time: 6:21 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>PACE</title>
    <g:javascript src="common.js"></g:javascript>
    <g:javascript src="synthetic.js"></g:javascript>

</head>

<body>
<div style="margin-top: 0px" id="main">
<g:form  name="strategyId" id="strategyId" controller="strategy" action="synthetic">
<table border="0" border="0px" style="width: 100%; margin:0 auto; margin-bottom: 20px; margin-top: 20px">
    <tr>
        <th>Instrument</th>
        <th>Symbol</th>
        <th>Exp.</th>
        <th>Strike Price</th>
        <th>Con./Rev.</th>
        <th>Price Diff</th>
        <th>Order Qty</th>
        <th>Total Qty</th>
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
            <select name="symbol" id="symbol" onchange="loadExpiry1()" style="width: 130px">
                <option value="">Select Symbol</option>
            </select>
        </td>
        <td>
            <select name="expiry" id="expiry" onchange="loadStrike1()">
                <option value="">Select One</option>
            </select>
        </td>
        <td>
            <select name="strike" id="strike" onchange="loadConRev(this)">
                <option value="">Select One</option>
             </select>
        </td>
        <td>
            <select name="conRev" id="conRev">
                <option value="con">Con</option>
                <option value="rev">Rev</option>

            </select>
        </td>
        <td><input type="text" name="priceDiff" style="width: 100px"></td>
        <td><input type="text" name="orderQty" style="width: 100px"></td>
        <td><input type="text" name="totalQty" style="width: 100px"></td>
        <td>
            <select name="modadd">
                <option value="MOD">MOD</option>
                <option value="MOD">MOD</option>
            </select>
        </td>
    </tr>
    %{--<tr><td colspan="12" style="text-align: center"></td></tr>--}%

</table>
    <input type="submit" value="GO" class="pace-ok" onclick="return confirm('Are you sure to submit')">
<table border="0" style="width: 100%; margin:0 auto; margin-bottom: 20px; margin-top: 20px" id="userStrategy">
    <tr>
        <th>S.N.</th>
        <th>I.D..</th>
        <th>Symbol</th>
        <th>Exp.</th>
        <th>Strike Price</th>
        <th>CON./REV.</th>
        <th>Order Qty</th>
        <th>Total Qty</th>
        <th>Price Diff.</th>
        <th>Traded Qty</th>
        <th>Status</th>
    </tr>

</table>

%{--<table border="0">--}%
    %{--<tr><td colspan="12" style="text-align: center">/td></tr>--}%
%{--</table>--}%
    <input type="button" value="STOP" class="pace-stop">

%{--<table border="0">--}%
    %{--<tr><td colspan="12" style="text-align: center"></td></tr>--}%
%{--</table>--}%

</g:form>
    </div>
</body>
</html>