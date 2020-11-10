$("#cp_com_submit").click(function(){
	var content =$("#cp_com_textarea").val();
	var title =$("#tongji_title").text();
	var publishName=$("#tongji_author").text();
	var userName=$("#index_cookie1").text();
	var userImg=$("#aImg1")[0].src;
	alert(userImg);
	if(userName==null){
		userName="游客";
		usreImg="https://s2.ax1x.com/2019/12/11/QrwjQU.png";
	}
	$.ajax({
		type:"POST",
		url:"collection",
		data:{
			content:$("#cp_com_textarea").val(),
			title:$("#tongji_title").text(),
			publishName:$("#tongji_author").text(),
			name:userName,
			img:userImg
		},success:function(data){
			alert("成功");
			console.log(data);
		},error:function(data){
			alert("失败");
		}
	})	
		
})
  $("#addToFav_con").click(function(){
        // $("#f_num").val($(this).val().replace(/[~'!<>@#$%^&*()-+_=:]/g, ""));
	    var userImg=$("#cookie_img")[0].src;
        var num=$("#f_num").html();
        var number =parseInt(num.replace(/[~'!<>@#$%^&*()-+_=:]/g, ""));
        alert(number);
        if(userName==null){
    		userName="游客";
    		usreImg="https://s2.ax1x.com/2019/12/11/QrwjQU.png";
    	}
        var userName=$("#index_cookie1").text();
        $("#f_num").html('('+ ++number+')');
        $.ajax({
        	type:"POST",
    		url:"collection",
    		data:{
    			img:userImg,
    			title:$("#tongji_title").text(),
    			publishName:$("#tongji_author").text(),
    			name:userName,
    			
    		},success:function(data){
    			alert("成功");
    			console.log(data);
    		},error:function(data){
    			alert("失败");
    		}
        	
        	
        })
    })
	

