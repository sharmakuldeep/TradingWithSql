//$(document).ready(function(){
//
////    loadUserStrategy();
//})


function loadUserStrategy(){
    console.log('called afer 1 sec');
    $.ajax({
        type: "post",
        url: url('fetchData', 'fetchUserStrategy', ''),
        data: {},
        success: function (data) {
            var output = [];
            var userStrategy =  $("#userStrategy")
            userStrategy.find("tr:gt(0)").remove();
            var i =1
            $.each(data.userStrategyList, function(key, value)
            {
                userStrategy.append('<tr><td>'+ i +'</td><td>'+value.user_id+'</td><td>'+value.fill_qty+'</td><td>'+value.open_qty+'</td><td>'+value.order_id+'</td><td>'+value.order_id+'</td><td>'+value.order_id+'</td><td>'+value.order_id+'</td><td>'+value.total_qty+'</td></tr>');
                i++;
            });

        }
    })
}
//
//window.setInterval(function(){
//    /// call your function here
//
////    loadUserStrategyData();
//}, 3000);

function removeSell(){
    var buySymbol = $('#buySymbol').val();
    $("#sellSymbol option[value='"+buySymbol+"']").remove();
}

function appendCalenderSpread(){
    var userStrategy= $('#strategySelect').val()
    var calenderSpreadSymbol= $('#calenderSpreadSymbol').val()
    var buyExpiry= $('#buyExpiry').val()
    var buyExpiryConversion= $('#buyExpiry').find(":selected").text();
    var sellExpiryConversion= $('#sellExpiry').find(":selected").text();
    var sellExpiry= $('#sellExpiry').val()
    var date1 = new Date (buyExpiry)
    var date2 = new Date (sellExpiry)
    var buyExpiryEpoch = date1.getTime()/1000.0;
    buyExpiryEpoch= parseInt(buyExpiryEpoch)-315532800;
    var sellExpiryEpoch = date2.getTime()/1000.0;
    sellExpiryEpoch= parseInt(sellExpiryEpoch)-315532800
    if(userStrategy && sellExpiry){
        $.ajax({
            type: "post",
            url: url('home', 'saveUserInput', ''),
            data: {userStrategy:userStrategy, calenderSpreadSymbol:calenderSpreadSymbol,buyExpiryEpoch:buyExpiryEpoch,sellExpiryEpoch:sellExpiryEpoch,buyExpiryConversion:buyExpiryConversion, sellExpiryConversion:sellExpiryConversion},
            success: function (data) {
                if(data.saved){
                    alert('in success')
                    $('#strategySelect option:first').attr('selected','selected');
                    $('#calenderSpreadSymbol option:first').attr('selected','selected');
                    $('#buyExpiry option:first').attr('selected','selected');
                    $('#sellExpiry option:first').attr('selected','selected');
                    loadUserStrategy();

                }
            }

        });
    }
    else{

    }

//    var rowCount = $('#userStrategy tr').length;
//    userStrategy.append('<tr><td>'+rowCount+1 +'</td><td>'+rowCount+1 +'</td><td>'+ $('#strategySelect').val() +'</td><td>'+ $('#calenderSpreadSymbol').val() +'</td><td>'+  $('#buySymbol').val() +'</td><td>'+ $('#sellSymbol').val()+'</td><td>'+ $('#sellSymbol').val()+'</td><td>'+ $('#sellSymbol').val()+'</td><td>'+ 0+'</td><td>'+0+'</td><td>'+ 0+'</td><td>'+ 0+'</td><td>'+0+'</td></tr>')
}