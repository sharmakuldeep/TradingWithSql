/**
 * Created by Digvijay on 9/7/14.
 */

var jqXHR;

function loadSymbols(){
    var instrument = $('#instrument').val()
    $("#symbol").empty().append('<option value="">Choose Symbol</option>');
    $("#buySymbol").empty().append('<option value="">Choose Symbol</option>');
    $("#sellSymbol").empty().append('<option value="">Choose Symbol</option>');
    if(instrument){
        $.ajax({
            type: "post",
            url: url('fetchData', 'fetchSymbol', ''),
            data: {instrument:instrument},
            success: function (data) {
                var buySymbol =  $("#buySymbol")
                var sellSymbol =  $("#sellSymbol")
                var symbol = $('#symbol')
                symbol.empty().append('<option value="">Choose Symbol</option>');
                var output = [];
                output.push('<option value=" ">Select Symbol</option>')
                data.symbols.sort();
                $.each(data.symbols, function(key, value)
                {
                    output.push('<option value="'+ value +'">'+ value +'</option>');
                });

                symbol.html(output.join(''));
//                sellSymbol.html(output.join(''));
            }

        });
    }
    else{
        $("#symbol").empty().append('<option value="">Choose Symbol</option>');
        $("#buySymbol").empty().append('<option value="">Choose Symbol</option>');
        $("#sellSymbol").empty().append('<option value="">Choose Symbol</option>');
    }
}

function loadNames(){
    var symbol = $('#calenderSpreadSymbol').val()
    if(symbol){
        $.ajax({
            type: "post",
            url: url('fetchData', 'fetchSymbolExpiry', ''),
            data: {symbol:symbol},
            success: function (data) {
                var buySymbol =  $("#buyExpiry")
                var sellSymbol =  $("#sellExpiry")
                var output = [];
                var abc =[];
                output.push('<option value=" ">Select One</option>')
                $.each(data.symbols, function(key, value){
                    abc.push(new Date((value+315532800)*1000).toUTCString())
                });

                $.each(abc, function(key, value)
                {
                    output.push('<option value="'+ value +'">'+ value.substring(7, 16) +'</option>');
                });

                buySymbol.html(output.join(''));
                sellSymbol.html(output.join(''));
            }

        });
    }
    else{
        $("#buySymbol").empty().append('<option value="">Choose Symbol</option>');
        $("#sellSymbol").empty().append('<option value="">Choose Symbol</option>');
    }

    }


function loadOptions(){

    var instrument = $('#instrument').val()
    var symbol = $('#symbol').val()
    if(instrument){
        $.ajax({
            type: "post",
            url: url('fetchData', 'fetchOptions', ''),
            data: {instrument:instrument, symbol:symbol},
            success: function (data) {

                var callPut =  $("#callPut")
                callPut.empty().append('<option value="">Select One</option>');
                var output = [];
                output.push('<option value=" ">Select One</option>')
                data.options.sort();
                $.each(data.options, function(key, value)
                {
                    output.push('<option value="'+ value +'">'+ value +'</option>');
                });

                callPut.html(output.join(''));
            }

        });
    }
    else{
//        $("#buySymbol").empty().append('<option value="">Choose Symbol</option>');
    }

}


function loadExpiry(){
    var instrument = $('#instrument').val()
    var symbol = $('#symbol').val()
    var option = $("#callPut").val()
    if(instrument){
        $.ajax({
            type: "post",
            url: url('fetchData', 'fetchExpiry', ''),
            data: {instrument:instrument, symbol:symbol, callPut:option},
            success: function (data) {

                var expiry =  $("#expiry")
                expiry.empty().append('<option value="">Select One</option>');
                var output = [];
                var abc =[];
                output.push('<option value=" ">Select One</option>')
                $.each(data.expiry, function(key, value){
                     abc.push(new Date((value+315532800)*1000).toUTCString())
                });

                $.each(abc, function(key, value)
                {
                    output.push('<option value="'+ value +'">'+ value.substring(7, 16) +'</option>');
                });

                expiry.html(output.join(''));
            }

        });
    }
    else{
       // $("#buySymbol").empty().append('<option value="">Choose Symbol</option>');
    }
}
function loadExpiry1(){
    var instrument = $('#instrument').val()
    var symbol = $('#symbol').val()
    if(instrument){
        $.ajax({
            type: "post",
            url: url('fetchData', 'fetchExpiryDate', ''),
            data: {instrument:instrument, symbol:symbol},
            success: function (data) {

                var expiry =  $("#expiry")
                expiry.empty().append('<option value="">Select One</option>');
                var output = [];
                var abc =[];
                output.push('<option value=" ">Select One</option>')
                $.each(data.expiry, function(key, value){
                    abc.push(new Date((value+315532800)*1000).toLocaleString())
                });

                $.each(abc, function(key, value)
                {
                    output.push('<option value="'+ value +'">'+ value.substring(0, value.indexOf(' ')) +'</option>');
                });

                expiry.html(output.join(''));
            }

        });
    }
    else{
        // $("#buySymbol").empty().append('<option value="">Choose Symbol</option>');
    }
}

function loadStrike(){
    var instrument = $('#instrument').val()
    var symbol = $('#symbol').val()
    var option = $("#callPut").val()
    var expiry = $("#expiry").val()
    var date = new Date (expiry)
    var myEpoch = date.getTime()/1000.0;
    myEpoch= parseInt(myEpoch)-315532800
    if(instrument){
        $.ajax({
            type: "post",
            url: url('fetchData', 'fetchStrike', ''),
            data: {instrument:instrument, symbol:symbol, callPut:option, expiryDate:myEpoch},
            success: function (data) {

                var strike1 =  $("#strike1")
                var strike2 =  $("#strike2")
//                var strike3 =  $("#strike3")
                strike1.empty().append('<option value="">Select One</option>');
                strike2.empty().append('<option value="">Select One</option>');
//                strike3.empty().append('<option value="">Select One</option>');
                var output = [];
                var arr =[]
//                data.strike.sort();
                $.each(data.strike, function(key, value)
                {
                    arr.push(value/100 );
                });
                arr.sort(function(a,b){return a - b});
                output.push('<option value="">Select one</option>')
                $.each(arr, function(key, value)
                {
                    output.push('<option value="'+ value +'">'+ value +'</option>');
                });

                strike1.html(output.join(''));
                strike2.html(output.join(''));
                //strike3.html(output.join(''));
            }

        });
    }
    else{
        $("#buySymbol").empty().append('<option value="">Choose Symbol</option>');
        $("#sellSymbol").empty().append('<option value="">Choose Symbol</option>');
    }
}

function loadStrike1(){
    var instrument = $('#instrument').val()
    var symbol = $('#symbol').val()
    var expiry = $("#expiry").val()
    var date = new Date (expiry)
    var myEpoch = date.getTime()/1000.0;
    myEpoch= parseInt(myEpoch)-315532800
    if(instrument){
        $.ajax({
            type: "post",
            url: url('fetchData', 'fetchStrike1', ''),
            data: {instrument:instrument, symbol:symbol, expiryDate:myEpoch},
            success: function (data) {
                var strike =  $("#strike")
                strike.empty().append('<option value="">Select One</option>');
                var output = [];
                var arr =[]
                $.each(data.strike, function(key, value)
                {
                    arr.push(value/100 );
                });
                arr.sort(function(a,b){return a - b});
                $.each(arr, function(key, value)
                {
                    output.push('<option value="'+ value +'">'+ value +'</option>');
                });

                strike.html(output.join(''));
            }

        });
    }
    else{
        $("#buySymbol").empty().append('<option value="">Choose Symbol</option>');
        $("#sellSymbol").empty().append('<option value="">Choose Symbol</option>');
    }
}


function openStrategyPopup(){
    $('#strategyDiv').dialog('open')

}


function selectTable(){
    var strategy = $('#strategySelect').val()
    if(strategy=='butterfly'){
         $('#butterfly').show()
         $('#synthetic').hide()
        $('#calenderSpreadTable').hide()
    }
    else if(strategy=='synthetic'){
        $('#synthetic').show()
        $('#butterfly').hide()
        $('#calenderSpreadTable').hide()

    }
    else if(strategy=='calenderSpread'){
        $('#synthetic').hide()
        $('#butterfly').hide()
        $('#calenderSpreadTable').show()

    }

}

function removeSell(){
    var buySymbol = $('#buyExpiry').val();
    $("#sellExpiry option").prop('disabled', false);
    $("#sellExpiry option[value='"+buySymbol+"']").prop('disabled', true);
}





function loadUserStrategy(){
    console.log('called afer 1 sec');
     $.ajax({
        type: "post",
        url: url('fetchData', 'fetchUserStrategy', ''),
        data: {},
        success: function (data) {
            var output = [];
            var userStrategy =  $("#userStrategy")
            userStrategy.find("tr:gt(1)").remove();
            var i =1
            $.each(data.userStrategyList, function(key, value)
            {
                userStrategy.append('<tr id="row'+i+'"><td><input name="strategyCheck" class="strategyCheck" type="checkbox" id=' + value.userStrategyId+ '></td>' +
                    '<td>'+ i +'</td><td class="userStrategyId" hidden="hidden">'+value.userStrategyId+'</td>' +
                    '<td>'+value.strategyType+'</td><td>'+value.symbol+'</td><td style="width: 68px">'+value.feature1+'</td><td style="width: 68px">'+value.feature2+'</td>' +
                    '<td>'+(value.feature3 ? value.feature3 : 0)+'</td>' +
                    '<td><input type="text" class="myText firstGroup" value="'+value.orderLot1+'"  style="width:40px" id="orderLot'+i+'"/></td><td><input type="text" class="myText firstGroup" value="'+value.totalLot1+'" style="width:40px" id="totalLot'+i+'"/></td>' +
                    '<td class="mktPrice " id="mktPrice'+i+'">'+value.marketPrice1+'</td><td><input type="text" value="'+(value.priceDiff1/100)+'" class="myText firstGroup" style="width: 40px" id="priceDiff'+i+'"/></td>' +
                    '<td class="trdLot" id="trdLot'+i+'">'+value.tradedLot1+'</td>' +
                    '<td class="rmngLot" id="rmngLot'+i+'">'+value.remainingLot1+'</td>' +
                    '<td id="status'+i+'">'+statusString(value.statusPositive)+'</td>'+
                    '<td><input type="text" class="myText secondGroup" value="'+value.orderLot2+'" style="width:40px" id="orderLot1'+i+'"/></td><td><input type="text" class="myText secondGroup" value="'+value.totalLot2+'" style="width:40px" id="totalLot1'+i+'"/></td>' +
                    '<td class="mktPrice1" id="mktPrice1'+i+'">'+value.marketPrice2+'</td><td><input type="text" class="myText secondGroup" value="'+(value.priceDiff2/100)+'" style="width:40px" id="priceDiff1'+i+'"/></td>' +
                    '<td class="trdLot1" id="trdLot1'+i+'">'+value.tradedLot2+'</td><td class="rmngLot1" id="rmngLot1'+i+'">'+value.remainingLot2+'</td><td id="status1'+i+'">'+statusString(value.statusNegative)+'</td></tr>');
                i++;
            });

            $.each(data.userStrategyList, function(key, value){
                $("#userStrategy tr").each(function(){
                    if($(this).find('td:eq(14)').text()==statusString(1)){
                        $(this).find('.firstGroup').attr('readonly', 'true');
                        $(this).find('.firstGroup').addClass('input-disabled')
                    }
                    else if($(this).find('td:eq(14)').text()==statusString(0) || $(this).find('td:eq(14)').text()==statusString(3) || $(this).find('td:eq(14)').text()==statusString(4)){
                        $(this).find('.firstGroup').attr('readonly', false);
                        $(this).find('.firstGroup').removeClass('input-disabled')
                    }
                    if($(this).find('td:eq(21)').text()==statusString(1)){
                        $(this).find('.secondGroup').attr('readonly', 'true');
                        $(this).find('.secondGroup').addClass('input-disabled')
                    }
                    else if($(this).find('td:eq(21)').text()==statusString(0) || $(this).find('td:eq(21)').text()==statusString(3)  || $(this).find('td:eq(21)').text()==statusString(4)){
                        $(this).find('.secondGroup').attr('readonly', false);
                        $(this).find('.secondGroup').removeClass('input-disabled')
                    }

                })
            })

        }
})
}




function loadUserStrategyData(){
    console.log('called afer 1 sec');
      $.ajax({
        type: "post",
        url: url('fetchData', 'fetchUserStrategy', ''),
        data: {},
        success: function (data) {
            for(var i=1 ; i<=data.userStrategyList.length;i++){
                $('#mktPrice'+i).html('');
                $('#trdLot'+i).html('');
                $('#rmngLot'+i).html('');
                $('#mktPrice1'+i).html('');
                $('#trdLot1'+i).html('');
                $('#rmngLot1'+i).html('');
                $('status'+i).html('')   ;
                $('status1'+i).html('')
//                alert($("#mktPrice" +i).html())
            }
            for(i=1 ; i<=data.userStrategyList.length;i++){
                $('#mktPrice' +i).html(data.userStrategyList[i-1].marketPrice1);
                $('#trdLot' +i).html(data.userStrategyList[i-1].tradedLot1+ data.userStrategyList[i-1].modQuantity1);
                $('#rmngLot' +i).html(data.userStrategyList[i-1].totalLot1-(data.userStrategyList[i-1].tradedLot1+ data.userStrategyList[i-1].modQuantity1));
                $('#mktPrice1' +i).html(data.userStrategyList[i-1].marketPrice2);
                $('#trdLot1' +i).html(data.userStrategyList[i-1].tradedLot2 + data.userStrategyList[i-1].modQuantity2);
                $('#rmngLot1'+i).html(data.userStrategyList[i-1].totalLot2 - (data.userStrategyList[i-1].tradedLot2 + data.userStrategyList[i-1].modQuantity2));
                $('#status' +i).html(statusString(data.userStrategyList[i-1].statusPositive));
                $('#status1' +i).html(statusString(data.userStrategyList[i-1].statusNegative));

//                alert(data.userStrategyList[i-1].userId)
            }

            $.each(data.userStrategyList, function(key, value){
                $("#userStrategy tr").each(function(){
                    if($(this).find('td:eq(14)').text()==statusString(1)){
                        $(this).find('.firstGroup').attr('readonly', 'true');
                        $(this).find('.firstGroup').addClass('input-disabled')
                    }
                    else if($(this).find('td:eq(14)').text()==statusString(0) || $(this).find('td:eq(14)').text()==statusString(3) || $(this).find('td:eq(14)').text()==statusString(4)){
                        $(this).find('.firstGroup').attr('readonly', false);
                        $(this).find('.firstGroup').removeClass('input-disabled')
                    }
                    if($(this).find('td:eq(21)').text()==statusString(1)){
                        $(this).find('.secondGroup').attr('readonly', 'true');
                        $(this).find('.secondGroup').addClass('input-disabled')
                    }
                    else if($(this).find('td:eq(21)').text()==statusString(0) || $(this).find('td:eq(21)').text()==statusString(3)  || $(this).find('td:eq(21)').text()==statusString(4)){
                        $(this).find('.secondGroup').attr('readonly', false);
                        $(this).find('.secondGroup').removeClass('input-disabled')
                    }

                })
            })

        }
    })
}

$(document).on('change', "input[name='selectAll']", function () {
    $('input[type="checkbox"]').prop('checked', $("#selectAll").prop("checked"))
});
var userInputs=[] ;
var temp =0
$(document).unbind('keyup');
$(document).on("keydown", ".myText", function(e) {

    var keycode;
    if (window.event) keycode = window.event.keyCode;
    else if (e) keycode = e.which;
    var e = e || window.event;
    if (keycode==77 && e.altKey) {
       if(0==temp){
           temp=1
           var id = this.id;
           var value = this.value;
           var parentRow = $(this).closest('tr')
           var strategyId = $(this).closest('tr').find('td:eq(2)').text();
           var statusNegative = $(this).closest('tr').find('td:eq(21)').text();
           statusNegative = statusInteger(statusNegative)
           var statusPositive = $(this).closest('tr').find('td:eq(14)').text();
           statusPositive = statusInteger(statusPositive)
           console.log('hello '+statusPositive)
           console.log('hello '+statusNegative)

//           console.log(parentRow.attr('id'))
           $("input:text", parentRow).each(function(){
//           console.log($(this).val());
            userInputs.push($(this).val())
           });

           $.ajax({
               type: "post",
               url: url('home', 'saveUserStrategyInputs', ''),
               data: {strategyId:strategyId, userInput: JSON.stringify(userInputs), statusPositive:statusPositive, statusNegative:statusNegative},
               success: function (data) {
                   alert('in suceesssss')
                   userInputs.length=0

//                   var userStrategy =  $("#userStrategy")
//                   userStrategy.find("tr:gt(0)").remove();
//                   var i =1
//                   $.each(data.userStrategyList, function(key, value)
//                   {
//                       userStrategy.append('<tr id="row'+i+'"><td><input name="strategyCheck" class="strategyCheck" type="checkbox" id=' + value.userStrategyId+ '></td>' +
//                           '<td>'+ i +'</td><td class="userStrategyId">'+value.userStrategyId+'</td>' +
//                           '<td>'+value.strategyType+'</td><td>'+value.symbol+'</td><td>'+value.feature1+'</td><td>'+value.feature2+'</td>' +
//                           '<td>'+(value.feature3 ? value.feature3 : 0)+'</td>' +
//                           '<td><input type="text" class="myText" style="width:40px" id="orderLot'+i+'"/></td><td><input type="text" class="myText" style="width:40px" id="totalLot'+i+'"/></td>' +
//                           '<td class="mktPrice" id="mktPrice'+i+'">value.marketPrice1</td><td><input type="text" class="myText" style="width: 40px" id="priceDiff'+i+'"/></td>' +
//                           '<td class="trdLot" id="trdLot'+i+'">'+value.tradedLot1+'</td>' +
//                           '<td class="rmngLot" id="rmngLot'+i+'">'+value.remainingLot1+'</td><td><input type="text" class="myText" style="width:40px" id="orderLot1'+i+'"/></td><td><input type="text" class="myText" style="width:40px" id="totalLot1'+i+'"/></td>' +
//                           '<td class="mktPrice1" id="mktPrice1'+i+'">'+value.marketPrice2+'</td><td><input type="text" class="myText" style="width:40px" id="priceDiff1'+i+'"/></td>' +
//                           '<td class="trdLot1" id="trdLot1'+i+'">'+value.tradedLot2+'</td><td class="rmngLot1" id="rmngLot1'+i+'">'+value.remainingLot2+'</td><td>'+value.order_id+'</td></tr>');
//                       i++;
//                   });

                   if(data.sucess=='saved'){
//                       alert('hello u r back')
                       userInputs.length=0
                   loadUserStrategy();
                   }
               }
           })



       }
        else
       {
           temp=0
       }


    }
});

function statusString(a){
    a= parseInt(a)
    var b;
    switch (a){
        case 0:
            b= "INATV"
        break;
        case 1:
            b= "MODSTR"
        break;
        case 2:
            b= 'MODSTP'
            break;
        case 3:
            b= 'STR'
            break;
        case 4:
            b= 'STP'
            break;
        case 5:
            b= 'DEL'
            break;
    }
    return b;

}
function statusInteger(a){
    switch (a){
        case "INATV": return  0
            break;
        case "MODSTR": return 1
            break;
        case "MODSTP": return 2
            break;
        case "STR": return  3
            break;
        case "STP": return  4
            break;
        case "DEL": return 5
            break;
    }

}

function stopStrategy(){
    var stopArray =[]
    var a=  $('input:checked')
    a.each(function(){
       console.log(this.id)
        if(this.id!='selectAll')
        stopArray.push(this.id)
    })
    console.log(stopArray)

    $.ajax({
        type: "post",
        url: url('home', 'stopUserStrategyInputs', ''),
        data: {stopArray: JSON.stringify(stopArray)},
        success: function (data) {
            userInputs.length=0
            if(data.sucess=='Done'){
                stopArray.length=0
                loadUserStrategy();
                alert('Stopped Successfully')
            }
        }
    })
}

function deleteStrategy(){
    var stopArray =[]
    var a=  $('input:checked')
    a.each(function(){
        console.log(this.id)
        if(this.id!='selectAll')
        stopArray.push(this.id)
    })
    console.log(stopArray)

    $.ajax({
        type: "post",
        url: url('home', 'deleteUserStrategyInputs', ''),
        data: {stopArray: JSON.stringify(stopArray)},
        success: function (data) {
            stopArray.length=0
            if(data.sucess=='Done'){
                stopArray.length=0
                loadUserStrategy();
                alert('Deleted Successfully')
            }
        }
    })

}

function stopAllStrategy(){
    var stopArray =[]
    var a=  $('input[type="checkbox"]')
    a.each(function(){
        console.log(this.id)
        if(this.id!='selectAll')
            stopArray.push(this.id)
    })
    console.log(stopArray)

    $.ajax({
        type: "post",
        url: url('home', 'stopUserStrategyInputs', ''),
        data: {stopArray: JSON.stringify(stopArray)},
        success: function (data) {
            userInputs.length=0
            if(data.sucess=='Done'){
                stopArray.length=0
                loadUserStrategy();
                alert('Stopped Successfully')
            }
        }
    })
}






