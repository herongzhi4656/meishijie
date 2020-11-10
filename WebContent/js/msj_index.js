//导航栏当前选中对象
$(document).ready(function () {
 
    $('.carousel').carousel({
        interval: 2000
    })

    $(".b_heathitem.b0>li").each(function (index2) {
        $(this).hover(function () {
            $(".b_heathitem.b0 li").removeClass("active_news ac0");
            $(".news_img.pic0>img").hide();
            $(".b_heathitem.b0 li").eq(index2).addClass("active_news ac0");
            $(".news_img.pic0>img").eq(index2).show();

        })

    })

    $(".b_heathitem.b1>li").each(function (index3) {
        $(this).hover(function () {

            $(".b_heathitem.b1 li").removeClass("active_news ac1");
            $(".news_img.pic1>img").hide();
            $(".b_heathitem.b1 li").eq(index3).addClass("active_news ac1");
            $(".news_img.pic1>img").eq(index3).show();

        })

    })

    $(".b_heathitem.b2>li").each(function (index4) {
        $(this).hover(function () {
            $(".b_heathitem.b2 li").removeClass("active_news ac2");
            $(".news_img.pic2>img").hide();
            $(".b_heathitem.b2 li").eq(index4).addClass("active_news ac2");
            $(".news_img.pic2>img").eq(index4).show();

        })

    })


    $(".b_heathitem.b3>li").each(function (index5) {
        $(this).hover(function () {
            $(".b_heathitem.b3 li").removeClass("active_news ac3");
            $(".news_img.pic3>img").hide();
            $(".b_heathitem.b3 li").eq(index5).addClass("active_news ac3");
            $(".news_img.pic3>img").eq(index5).show();

        })

    })


    $("#health_sc1").mouseover(function () {
        $(".index_th_p1").show();
    })
    $("#health_sc1").mouseleave(function () {
        $(".index_th_p1").hide();
    })
    $("#health_sc2").mouseover(function () {
        $(".index_th_p2").show();
    })
    $("#health_sc2").mouseleave(function () {
        $(".index_th_p2").hide();
    })

    $("#fruit_list>li").each(function (index1) {
        $(this).mouseover(function () {
            $("#fruit_list li").removeClass("c_active");
            $("#fruit_list li").eq(index1).addClass("c_active");

        })
    })
    $("#index_exit").click(function(){
    	$("#login_change").show();
    	$("#login_changed").hide();
    })
    $("#index_cookie").click(function(){
    	 var aImg=$("#aImg").attr("src");
    	 var aName=$("#index_cookie").text();
    	 alert(aName);
    	 var date = new Date();
    	 date.setDate(date.getDate()+7);
    	 var expires = date.toGMTString();
    	 document.cookie="aImg="+aImg;
    	 document.cookie="aName="+aName;
    	 document.cookie="expires="+expires;
    	 
    	// document.cookie="aImg="+aImg+"; aName="+aName+"; expires="+expires;
    	// document.cookie=aImg+","+aName+";expirse="+date;
    	 loacation.href="MeiShiJie/";
    	
    })
//    $.ajax({
//    	type:"POST",
//		url:"NewsMenuServlet",
//		data:{
//			email:$("#email").val(),
//		},
//		success:function(data){
//			alert("验证码发送成功，请注意查收.");
//			alert("这是："+data);
//		}
//    	
//    })

})
// 制造上滑效果
var msg = document.getElementsByClassName('i')[0];
msg.onmouseleave = function () {
    i.style.transform = 0;
}


var box = document.getElementsByClassName('content')[0],
    big = document.getElementsByClassName('bigBox')[0],
    index_img = 0,
    border = 0,
    lock = true;
right_first = document.getElementsByClassName('arrow_right_first')[0],
    left_first = document.getElementsByClassName('arrow_left_first')[0],
    fenye = document.getElementsByClassName('fenye')[0].children;
var inter = setInterval('move()', 3000);
right_first.onclick = function () {
    move('right_first')
};
left_first.onclick = function () {
    move('left_first')
};
right_first.onmouseenter = function () {
    clearInterval(inter);
};
left_first.onmouseenter = function () {
    clearInterval(inter);
    if (index_img == 0) {
        box.style.transition = '0s';
        box.style.marginLeft = -.6 * 4 * box.firstElementChild.clientWidth + 'px';
        index_img = 4;
    }
};
left_first.onmouseleave = function () {
    if (index_img == 4) {
        index_img = 0
    }
};
/* big.onmouseover = function(){clearInterval(inter);};*/
big.onmouseleave = function () {
    setInterval(inter);
    console.log('触发了leave')
};
for (let i = 0; i < fenye.length; i++) {  /*分页窗经过效果*/
    fenye[i].onmouseover = function () {
        clearInterval(inter);
        if (i != 0 && i != 6) {
            for (let i = 0; i < fenye.length; i++) {
                fenye[i].classList.remove('redBorder');
            }
            fenye[i].classList.add('redBorder');
            box.style.transition = '.6s';
            box.style.marginLeft = -.6 * (i - 1) * box.firstElementChild.clientWidth + 'px';
            border = i
        }

    }
    fenye[i].onmouseleave = function () {
        setInterval(inter);
    }
}

function move(value) {
    if (lock) {
        lock = false;
        if (value == 'left_first') {
            if (border != 0) {
                border--;
            } else {
                border = 4
            }
        } else {
            if (border >= 4) {
                border = 0
            } else {
                border++
            }
        }
        if (value == 'left_first') {
            index_img--;
            console.log(index_img)
        } else {
            console.log('不是left');
            index_img++
        }
        if (index_img == -1 && value == 'left_first') {
            box.style.transition = '0s';
            box.style.marginLeft = -.6 * index_img * box.firstElementChild.clientWidth + 'px';
            index_img = 4;
        }
        if (index_img == 0) {
            setTimeout(function () {
                box.style.transition = '0s';
                box.style.marginLeft = -.6 * 4 * box.firstElementChild.clientWidth + 'px';
                index_img = 4;
            }, 600)

        }
        if (value == 'left_first' && index_img == 4) {
            box.style.transition = '0s';
        } else {
            box.style.transition = '.6s';
        }
        box.style.marginLeft = -.6 * index_img * box.firstElementChild.clientWidth + 'px';
        if (index_img <= 4) {
            if (index_img == 4 && value != 'left_first') {
                setTimeout(function () {
                    box.style.transition = '0s';
                    box.style.marginLeft = '0';
                    index_img = 1;
                }, 600)
            }
        }
        for (let i = 0; i < fenye.length; i++) {
            fenye[i].classList.remove('redBorder');
            fenye[border + 1].classList.add('redBorder');
        }
        setTimeout(function () {
            lock = true;
        }, 600)
    }
}

