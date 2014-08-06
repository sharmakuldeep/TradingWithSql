$(document).ready(function(){

//    loadUserStrategy();
})


//function loadUserStrategy(){
//    console.log('called afer 1 sec');
//        $.ajax({
//            type: "post",
//            url: url('fetchData', 'fetchUserStrategy', ''),
//            data: {},
//            success: function (data) {
//                var output = [];
//                var userStrategy =  $("#userStrategy")
//                userStrategy.find("tr:gt(0)").remove();
//                var i =1
//                $.each(data.userStrategyList, function(key, value)
//                {
//                    userStrategy.append('<tr><td>'+ i +'</td><td>'+value.user_id+'</td><td>'+value.fill_qty+'</td><td>'+value.open_qty+'</td><td>'+value.order_id+'</td><td>'+value.order_id+'</td><td>'+value.order_id+'</td><td>'+value.order_id+'</td><td>'+value.total_qty+'</td><td>'+value.order_id+'</td><td>'+value.order_id+'</td><td>'+value.order_id+'</td></tr>');
//                    i++;
//                });
//
//            }
//    })
//}

//window.setInterval(function(){
//    /// call your function here
//
//    loadUserStrategy();
//}, 1000);

function loadStrike3(){
    var strike1 = $('#strike1').val()
    var strike2 = $('#strike2').val()
    var last =  $('#strike1 option:last-child').val();
    var strike3 = parseInt(strike2)- parseInt(strike1)
    strike3=strike3+parseInt(strike2)
    if(strike3>parseInt(last))  {
        alert("please select correct value")
        $('#strike3').val('');
        return;
    }
    else{
    $('#strike3').val(''+strike3)
        return;
    }
}

function loadStrike2(val){
        $("#strike2 option").prop('disabled', false);
        var index = $(val).find('option:selected').index();
        index= index+1;
        $('#strike2').find("option:gt("+index+")").prop('disabled', false);
        $('#strike2').find("option:lt("+index+")").prop('disabled',true);


}


