// var liarr = document.getElementById("main_nav").getElementsByTagName("li");
// var i,j;
// var length = liarr.length;
// for(i=0;i<length;i++){
//     liarr[i].onclick=function(){
//         for(j=0;j<length;j++){
//             liarr[j].className="";
//         }
//         this.className+="select_nav";
//     }
// }
//导航栏当前选中对象
$(document).ready(function(){
    $("#main_nav>li").each(function(index){
        $(this).click(function(){
            $("li").removeClass("active");
            $("li").eq(index).addClass("active");
        })
    })
    // $(".hasmore").hover(function(){
    //     $(".cookbook").attr("style","display:none");
    // },function(){
    //     $(".cookbook").attr("style","display:block");
    // })

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



})
