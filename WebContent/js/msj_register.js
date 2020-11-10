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

    $("#more_dsf_btn").click(function(){
        if($(this).attr("opened")==0){
            $("#n1_moredsf").slideDown();
            $(this).html("收起∧");
            $(this).attr("opened","1");
        }else{
            $("#n1_moredsf").slideUp();
            $(this).html("更多第三方登陆方式∨");
            $(this).attr("opened","0");
        }
    })
    $("#n1_gozc").click(function(){
        if($(this).attr("opened")==0){
            $("#msj_loginbox").slideDown();
            $(this).html("还没有账号?免费注册∨");
            $(this).attr("opened",1);
            $(this).attr("onclick","_htm.push(['_trackEvent','zhuce','click','注册登录页_去登陆'])");
            $("#n1_more_zc").slideUp();
            $(".n1_title").html('<span class="n1_t_left"></span>注册美食杰<span class="n1_t_right"></span>');

        }else{
            $("#msj_loginbox").slideUp();
            $(this).html("已有账号?马上登陆∧");
            $(this).attr("opened","0");
            $(this).attr("onclick","_htm.push['_trackEvent','zhuce','click','注册登录页_去注册']");
            $("#n1_more_zc").slideDown();
            $(".n1_title").html('<span class="n1_t_left"></span>登陆美食杰<span class="n1_t_right"></span>');
        }
    })
    $("#zc_phone").click(function(){
        var _this=$(this);
        $(".n1_loginbox_ww").animate({"margin-left":"0px"},300,function(){
            _this.siblings().removeClass("current");
            _this.addClass("current");
        });
    });
    $("#zc_email").click(function(){
        var _this = $(this);
        $(".n1_loginbox_ww").animate({"margin-left":"-320px"},300,function(){
            _this.siblings().removeClass("current");
            _this.addClass("current");
        })
    })
   
    $("#phone_yzmbtn").click(function(){
    	if($("#email").val()){
    		$.ajax({
    			type:"POST",
    			url:"SendEmailServlet?random"+Math.random(),
    			data:{
    				email:$("#email").val(),
    			},
    			success:function(data){
    				alert("验证码发送成功，请注意查收.");
    				alert("这是："+data);
    			}
    		})
    	}else{
    		alert("邮箱发送失败");
    		$("#notice").html("请填写邮箱");
    		setTimeout(function(){
    			$("#notice").hide();
    		},1000);
    		
    	}
    
    });
    $("#n1_email_submit_btn").click(function(){
    	var email_check=$("#email_check").is(':checked');
    	if($("#email").val()&&$("#email_password").val()&&("#mobile_code").val()&&
    			email_check==true){
    		$("#n1_emial_submit_btn_form").submit();
    	}else{
    		$("#notice").html("请填写完整信息并同意协议");
    			setTimeout(function(){
    				$("#notice").hide();
    			},1000);
    		}
    	});
//     $("#n1_phone_submit_btn").click(function(){
//    	 alert($("#mobile").val());
//    	 alert($("#password_mobile").val())
//    	 if($("#mobile").val()&&$("#password_mobile").val()){
//    		   $.ajax({
//    			   dataType:"json",
//    			   type:"post",
//    			   timeout:50000,
//    			   url:"AccountServlet",
//    			   data:{
//    				   mobile:$("#mobile").val(),
//    		           password_mobile:$("#password_mobile").val(),
//    			   },
//    			   success:function(data){
//    				   alert("access"+data);
//    				   alert("注册成功，快去登录吧");
//    			   },
//    			   error:function(data){
//    				   alert("失败");
//    				 
//    			   }
//    				   
//    		   })  
//    		 
//    	 }else{
//    		 alert("用户名，密码不能为空");
//    	 }
//     })
})