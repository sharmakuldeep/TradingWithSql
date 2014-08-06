$(document).ready(function(){

//    loadUserStrategy();
})


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
                userStrategy.append('<tr><td>'+ i +'</td><td>'+value.user_id+'</td><td>'+value.fill_qty+'</td><td>'+value.open_qty+'</td><td>'+value.order_id+'</td><td>'+value.order_id+'</td><td>'+value.order_id+'</td><td>'+value.order_id+'</td><td>'+value.total_qty+'</td><td>'+value.order_id+'</td><td>'+value.order_id+'</td></tr>');
                i++;
            });

        }
    })
}

//window.setInterval(function(){
//    /// call your function here
//
////    loadUserStrategy();
////    loadUserStrategy();
////    loadUserStrategy();
//}, 1000);