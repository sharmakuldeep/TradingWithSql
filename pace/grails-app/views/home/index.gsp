
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>PACE</title>
    <g:javascript src="common.js"/>
    <g:javascript src="butterfly.js"/>
    <g:javascript src="resize-table.js"/>

</head>
<body>
<div style="width: 100%" id="main" >
    %{--<g:form  name="strategyId" id="strategyId" controller="strategy" action="saveButterfly">--}%
        %{--<table border="0px solid black" style="width: 100%; margin:0 auto; margin-bottom: 20px;resize:both;" id="userStrategy">--}%
    <table style=" text-align: center" class="resizable"  border="0px solid black" style="width: 100%; margin:0 auto; margin-bottom: 20px;resize:both;"  id="userStrategy">
            %{--<thead>--}%
            %{--<th style="width: 17%;padding-left: 10px;">--}%
                %{--<input type="checkbox" id="selectAll" name="selectAll"/>All--}%
            %{--</th>--}%
                %{--<th>S.N.</th>--}%
                %{--<th>I.D.</th>--}%
                %{--<th>Strategy</th>--}%
                %{--<th>Symbol</th>--}%
                %{--<th>F1</th>--}%
                %{--<th>F2</th>--}%
                %{--<th>F3</th>--}%
                %{--<th rowspan="2">Order Lot</th>--}%
                %{--<th>Total Lot</th>--}%
                %{--<th>Mkt Price</th>--}%
                %{--<th>Price Diff.</th>--}%
                %{--<th>Trd Lot</th>--}%
                %{--<th>Rmng Lot</th>--}%
                %{--<th>Order Lot</th>--}%
                %{--<th>Total Lot</th>--}%
                %{--<th>Mkt Price</th>--}%
                %{--<th>Price Diff.</th>--}%
                %{--<th>Trd Lot</th>--}%
                %{--<th>Rmng Lot</th>--}%
                %{--<th>Status</th>--}%
            %{--</thead>--}%
            <tr>
                %{--<th rowspan="2"></th>--}%
                <th style="" rowspan="2">
    All<input type="checkbox" id="selectAll" name="selectAll"/>
                </th>
                <th rowspan="2">S.N.</th>
                <th rowspan="2" hidden="hidden">I.D.</th>
                <th rowspan="2">Strategy</th>
                <th rowspan="2">Symbol</th>
                <th rowspan="2">F1</th>
                <th rowspan="2">F2</th>
                <th rowspan="2">F3</th>
                <th colspan="7" >+ve</th>
                <th colspan="7" >-ve</th>
            </tr>
            <tr>
                <th >Order Lot</th>
                <th >Total Lot</th>
                <th>Mkt Price</th>
                <th >Price Diff.</th>
                <th >Trd Lot</th>
                <th>Rmng Lot</th>
                <th>Status</th>
                <th>Order Lot</th>
                <th>Total Lot</th>
                <th>Mkt Price</th>
                <th>Price Diff.</th>
                <th>Trd Lot</th>
                <th>Rmng Lot</th>
                <th>Status</th>
            </tr>
            %{--<tr>--}%
                %{--<th>Male</th>--}%
                %{--<th>Female</th>--}%
                %{--<th>Male</th>--}%
                %{--<th>Female</th>--}%
                %{--<th>Male</th>--}%
                %{--<th>Female</th>--}%
                %{--<th>Male</th>--}%
                %{--<th>Female</th>--}%
                %{--<th>Male</th>--}%
                %{--<th>Female</th>--}%
                %{--<th>Male</th>--}%
                %{--<th>Female</th>--}%
            %{--</tr>--}%
        </table>
    %{--</g:form>--}%
</div>

<div id="strategyDiv" class="dialog">
    <table id="strategySelectTable" >
        <tr>
            <td>
               <label>Select Strategy</label>
            </td>
            <td>
                <select name="symbol" id="strategySelect" onchange="selectTable()" style="width: 130px">
                    <option value="">Select One</option>
                    <option value="butterfly">Butterfly</option>
                    <option value="synthetic">Synthetic</option>
                    <option value="calenderSpread">CalenderSpread</option>
                </select>
            </td>
        </tr>

    </table>
  %{--<g:form  name="strategyId" id="strategyId" controller="strategy">--}%
        <table border="0px" style="width: 100%; margin-bottom: 20px; margin-top: 20px" class="myTable" id="butterfly" hidden="hidden">
           <tr>

                <td>Select Symbol</td>
                    <td>
                        <select name="symbol" id="butterflySymbol" onchange="loadOptions()" style="width: 130px">
                            <option value="">Select Symbol</option>
                        </select>
                    </td>
                <td>Select Call/Put</td>
                <td>
                    <select name="callPut" id="butterflyCallPut" onchange="loadExpiry(this)" style="width: 130px">
                        <option value="">Select One</option>
                    </select>
                </td>
                <td>Select Expiry</td>
                <td>
                    <select name="expiry" id="butterflyExpiry" onchange="loadStrike()" style="width: 130px">
                        <option value="">Select One</option>

                    </select>
                </td>
            </tr>

             <tr>
                 <td>Strike Price 1</td>
                 <td>
                    <select name="strike1" id="butterflyStrike1" style="width: 130px" onchange="loadStrike2(this)">
                        <option value="">Select One</option>
                    </select>
                </td>
                 <td>Strike Price 2</td>
                 <td>
                    <select name="strike2" id="butterflyStrike2" style="width: 130px" onchange="loadStrike3()">
                        <option value="">Select One</option>
                    </select>
                </td>
                 <td>Strike Price 3</td>
                 <td>
                     <input type="text" name="butterflyStrike3" id="strike3" style="width: 130px">
                 </td>
             </tr>
              <tr>

              </tr>
              <tr>

                <td colspan="12" style="text-align: center">
                    <g:actionSubmit action='saveButterfly' value="ADD" class="pace-ok" onclick="return confirm('Are you sure to submit')"/>
                </td>
            </tr>
        </table>

        <table border="0" border="0px" style="width: 100%; margin:0 auto; margin-bottom: 20px; margin-top: 20px" id="synthetic" hidden="hidden">

            <tr>

                <td>Select Symbol</td>
                <td>
                    <select name="symbol" id="symbol" onchange="loadExpiry1()" style="width: 130px">
                        <option value="">Select Symbol</option>
                    </select>
                </td>
            <td>Select Expiry</td>
            <td>
                <select name="expiry" id="expiry" onchange="loadStrike1()" style="width: 130px">
                    <option value="">Select One</option>
                </select>
            </td>
            <td>Select Strike</td>
            <td>
                <select name="strike" id="strike" onchange="loadConRev(this)" style="width: 130px">
                    <option value="">Select One</option>
                </select>
            </td>
            </tr>

            <tr>
                <td>Select Con/Rev</td>
                <td>
                    <select name="conRev" id="conRev" style="width: 130px">
                        <option value="con">Con</option>
                        <option value="rev">Rev</option>

                    </select>
                </td>
                <td>
                    <g:actionSubmit action="saveSynthetic" value="ADD" class="pace-ok" onclick="return confirm('Are you sure to submit')"/>
                </td>

            </tr>
            <tr>


            </tr>
            <tr>

            </tr>
        </table>


        <table border="0" border="0px" style="width: 100%; margin:0 auto; margin-bottom: 20px; margin-top:20px" id="calenderSpreadTable" hidden="hidden">
            <tr>
            </tr>
            <tr>

                    <td>Select Symbol</td>
                    <td>
                        %{--<select name="symbol" id="calenderSpreadSymbol" onchange="loadNames()">--}%
                            %{--<option value="">Select Symbol</option>--}%
                        %{--</select>--}%
                        <select name="symbol" id="calenderSpreadSymbol" onchange="loadNames()">
                        <option value="">Select Symbol</option>
                        <g:each in="${calenderSpreadSymbol}" var="symbol" status="i">
                        <option value="${symbol}">${symbol}</option>
                        </g:each>
                        </select>
                    </td>
                    <td>Buy Expiry</td>
                    <td>
                        <select name="buyExpiry" id="buyExpiry" onchange="removeSell()">
                            <option value="">Select Expiry</option>
                        </select>
                    </td>
                    <td> Sell Expiry</td>
                    <td>
                        <select name="sellExpiry" id="sellExpiry">
                            <option value="">Select Expiry</option>
                        </select>
                    </td>
            </tr>

            <tr><td colspan="12" style="text-align: center">
                <button  value="ADD" class="pace-ok" onclick="appendCalenderSpread()">ADD</button>

            </td></tr>
        </table>
    %{--</g:form>--}%
</div>
<sec:ifLoggedIn>

    <script type="text/javascript">
        console.log('without log in ')
        $(document).ready(function(){
            loadUserStrategy();
        })

        window.setInterval(function(){
////            / call your function here
//
            loadUserStrategyData();
        }, 1000);
    </script>
 </sec:ifLoggedIn>


<script type="text/javascript">
    $(function () {
        $(".dialog").dialog({
            autoOpen: false,
            draggable: true,
            position: ['center', 100],
            width: 800,
            resizable: true,
          //  height: 00,
            modal: true,
            title: 'Enter Strategy',
            close: function (ev, ui) {
                location.reload()
            }

        });
    });

</script>

</body>
</html>