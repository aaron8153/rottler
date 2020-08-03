$(document).ready(function(){

    $('th.filled_slot').click(function (e) {
        var id = $(this).data("wo-id");
        var name = $("th.first_filled_slot[data-wo-id='" + id + "']").data("name");
        var city = $("th.first_filled_slot[data-wo-id='" + id + "']").data("city");
        var time = $("th.first_filled_slot[data-wo-id='" + id + "']").data("time");
        var duration = $("th.first_filled_slot[data-wo-id='" + id + "']").data("duration");
        var price = $("th.first_filled_slot[data-wo-id='" + id + "']").data("price");

        $('#work_order_modal #name').html(name);
        $('#work_order_modal #work_order_name').html(name);
        $('#work_order_modal #city').html(city);
        $('#work_order_modal #time').html(time);
        $('#work_order_modal #duration').html(duration);
        $('#work_order_modal #price').html(price);


        jquery('#work_order_modal').modal('show');
    });

    $('th.empty_slot').click(function (e) {
        var previous_time = $(this).data("time-since-previous");
        var next_time = $(this).data("time-to-next");

        $('#work_order_time_modal #time-since').html(previous_time);
        $('#work_order_time_modal #time-til').html(next_time)

        jquery('#work_order_time_modal').modal('show');
    })
});