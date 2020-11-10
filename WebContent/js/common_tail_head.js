$(document).ready(function(){
    $("#main_nav>li").each(function (index) {
        $(this).click(function () {
            $("li").removeClass("active");
            $("li").eq(index).addClass("active");
        })
    })
    $(".hasmore").mouseover(function () {
        $(".cookbook").show();
        $(".hasmore .fa-angle-up").hide();
        $(".hasmore .fa-angle-down").show();
    })
    $(".hasmore").mouseout(function () {
        $(".cookbook").hide();
        $(".hasmore .fa-angle-down").hide();
        $(".hasmore .fa-angle-up").show();

    })
    $(".health_hasmore").mouseover(function () {
        $(".health_diet").show();
        $(".health_hasmore .fa-angle-up").hide();
        $(".health_hasmore .fa-angle-down").show();
    })
    $(".health_hasmore").mouseleave(function () {
        $(".health_diet").hide();
        $(".health_hasmore .fa-angle-down").hide();
        $(".health_hasmore .fa-angle-up").show();
    })
})