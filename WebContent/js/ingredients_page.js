
//导航栏当前选中对象
$(document).ready(function(){
    $(".turn_page_w>span").each(function(page_index){
        $(this).click(function(){
            $(".turn_page_w>span").removeClass("page_active");
            $(".turn_page_w>span").eq(page_index).addClass("page_active");
            $(".list_show").hide();
            $(".list_show").eq(page_index).show();
        })
    })

    $(".hasmore").mouseover(function(){
        $(".cookbook").show();
    })
    $(".hasmore").mouseout(function(){
        $(".cookbook").hide();
    })
    $(".health_hasmore").mouseover(function(){
        $(".health_diet").show();
    })
    $(".health_hasmore").mouseleave(function(){
        $(".health_diet").hide();
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
    $(".show_right").mouseover(function(){
        $(".show_right").css("width","80%");
    })
    $(".show_right").mouseleave(function(){
        $(".show_right").css("width","232px");
    })

})