$(document).ready(function(){
	alert(1);
    $('#upload_top_img').on('change',function(){
    	
        var filePath=$(this).val();
        var fileFormat=filePath.substring(filePath.lastIndexOf(".")).toLowerCase();
        src=window.URL.createObjectURL(this.files[0]);
        if( !fileFormat.match(/.png|.jpg|.jpeg/) ) {
            alert('上传错误,文件格式必须为：png/jpg/jpeg');
            return;
        }
        $('#clickToUpload').attr('src',src);
    })
    $("#user_inner_tab_ul>li").each(function(index1){
    	
        $(this).click(function () {
       
            $("#user_inner_tab_ul>li").removeClass("current_li");
            $("#user_inner_tab_ul>li").eq(index1).addClass("current_li");
            if(index1==0){
                $('#show_img').show();
                $('#sixin_listid').hide();
            }else{
                $('#sixin_listid').show();
                $('#show_img').hide();
            }
        })
    })
//        $("#current_input").click(function(){
////    	 alert($("#mobile").val());
//        	console.log(1);
//  	 //  alert($("#upload_top_img").val())
//    	 if($("#upload_top_img").val()){
//    		   $.ajax({
//    			   dataType:"json",
//    			   type:"post",
//    			   timeout:50000,
//    			   url:"ChangeImgServlet",
//    			   data:{
//    				   img:$("#upload_top_img").val(),
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
//window.onload=function(){
//	var strcookie = document.cookie;
//	var attrcookie = strcookie.split(";")
//    var userimage=attrcookie[0].split("=")[1];
//    var username=attrcookie[2].split("=")[1];
//    console.log(username);
//    document.getElementById('aImg').src=userimage;
//    document.getElementById('username').innerHTML=username;
//    document.getElementById('current_img').src=userimage;
//    
//}

