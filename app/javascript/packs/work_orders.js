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

    $('th.empty_slot').hover(function (e) {
        var tech_id = $(this).data("tech-id");
        var time_since_previous = $(this).data("time-since-previous");
        var next_work_order = $(this).closest("").next(".first_filled_slot[data-tech-id=" + tech_id + "]");

        console.log(next_work_order);
    })
});