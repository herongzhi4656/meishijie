<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>美食</title>
    <!--<link type="text/css" href="css/index.css" rel="stylesheet">-->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
    <!--<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>-->
    <script src="https://cdn.staticfile.org/jquery/3.3.1/jquery.min.js" type="text/javascript"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/common_tail_head.css">
   <link rel="stylesheet" href="css/meishijie_change.css">
</head>
<body>
<!--首页的头部-->
<div class="firstHeader">
    <img id="logo" src="https://s2.ax1x.com/2019/09/19/nb6qAA.png">
    <!--<img id="left_log" src="https://s2.ax1x.com/2019/09/19/nb6c79.png">-->
    <div class="top_search">
        <input id="input_String" class="text" type="text" default="请输入菜谱/食材/菜单/作者"
               name="meishijie" value="请输入菜谱/食谱/菜单/作者" onfocus="this.value=''">
        <input class="input_submit" type="submit" value="搜索">

    </div>
  <div class="login_style" id="login_changed">
         <img class="loginImage" id="aImg" src="${userInfo.userPhoto}" style="width:40px">
          <a class="link login"  id="index_exit" href="#">退出</a>
          <a class="link login" href="#">发布菜谱</a>
          <a class="link login" href="#">收藏</a>
         <a class="link login" id="username" href="#">${userInfo.userName}</a> 
    </div>
 
 
</div>
<div class="firstNavigation">
    <ul id="main_nav">
        <li class="active">
            <a href="#">
                <span>首页</span>
            </a>
        </li>
        <li class="hasmore">
            <a href="#">
                <span>菜谱大全</span>
                <i class="fa fa-angle-up" aria-hidden="true"></i>
                <i class="fa fa-angle-down" aria-hidden="true"></i>
                <div class="cookbook" id="more_set">
                    <dl class="cookbook_first">
                        <dt>家常菜谱</dt>
                        <dd>家常菜</dd>
                        <dd>凉菜</dd>
                        <dd>素食</dd>
                        <dd>晚餐</dd>
                        <dd>私家菜</dd>
                        <dd>热菜</dd>
                        <dd>海鲜</dd>
                        <dd>孕妇</dd>
                        <dd>早餐</dd>
                        <dd>午餐</dd>
                        <dd>甜品点心</dd>
                        <dd>汤粥</dd>
                        <dd>宝宝食谱-婴儿食谱</dd>
                        <dd>糕点主食</dd>
                        <dd>微波炉</dd>
                    </dl>
                    <dl class="cookbook_left">
                        <dt>中华菜系</dt>
                        <dd>川菜</dd>
                        <dd>粤菜</dd>
                        <dd>东北菜</dd>
                        <dd>湘菜</dd>
                        <dd>鲁菜</dd>
                        <dd>浙菜</dd>
                        <dd>湖北菜</dd>
                        <dd>清蒸菜</dd>
                    </dl>
                    <dl class="cookbook_right">
                        <dt>各地小吃</dt>
                        <dd>四川小吃</dd>
                        <dd>广东小吃</dd>
                        <dd>北京小吃</dd>
                        <dd>陕西小吃</dd>
                    </dl>

                    <dl class="cookbook_left">
                        <dt>外国菜谱</dt>
                        <dd>韩国料理</dd>
                        <dd>日本料理</dd>
                        <dd>法国菜</dd>
                        <dd>意大利餐</dd>
                    </dl>

                    <dl class="cookbook_right">
                        <dt>烘焙</dt>
                        <dd>蛋糕面包</dd>
                        <dd>饼干配方</dd>
                        <dd>甜品点心</dd>

                    </dl>

                    <dl class="cookbook_left">
                        <dt>厨房百科</dt>
                        <dd>摆盘围边</dd>
                        <dd>烹饪技巧</dd>
                        <dd>生活妙招</dd>
                        <dd>美食专题</dd>
                    </dl>

                    <dl class="cookbook_left">
                        <dt>食材百科</dt>
                        <dd>蔬菜</dd>
                        <dd>水果</dd>
                        <dd>谷类</dd>
                    </dl>
                </div>
            </a>


        </li>


        <li class="health_hasmore">
            <a href="#">
                <span>饮食健康</span>
                <i class="fa fa-angle-up" aria-hidden="true"></i>
                <i class="fa fa-angle-down" aria-hidden="true"></i>
                <div class="health_diet">
                    <dl class="cookbook_first">
                        <dt>健康饮食</dt>
                        <dd>饮食小常识</dd>
                        <dd>瘦身美容</dd>
                        <dd>食品安全</dd>
                        <dd>养生妙方</dd>
                        <dd>饮食禁忌</dd>
                        <dd>中医保健</dd>
                        <dd>母婴健康饮食</dd>
                        <dd>饮食新闻</dd>
                    </dl>
                    <dl>
                        <dt>功能性调理</dt>
                        <dd>清热去火</dd>
                        <dd>减肥</dd>
                        <dd>祛痰</dd>
                        <dd>乌发</dd>
                        <dd>滋阴补肾</dd>
                        <dd>健脾开胃</dd>
                        <dd>消化不良</dd>
                        <dd>清热解毒</dd>
                        <dd>补阳壮阳</dd>
                        <dd>增肥</dd>
                    </dl>

                    <dl class="cookbook_left">
                        <dt>人群膳食</dt>
                        <dd>孕妇</dd>
                        <dd>老人</dd>
                        <dd>产妇</dd>
                        <dd>哺乳期</dd>
                        <dd>青少年</dd>
                        <dd>幼儿</dd>
                        <dd>学龄期儿童</dd>
                    </dl>

                    <dl class="cookbook_right">
                        <dt>疾病调理</dt>
                        <dd>糖尿病</dd>
                        <dd>高血压</dd>
                        <dd>痛风</dd>
                        <dd>胃炎</dd>
                        <dd>痔疮</dd>
                        <dd>更年期</dd>
                        <dd>甲状腺</dd>
                    </dl>

                    <dl class="cookbook_left">
                        <dt>脏腑调理</dt>
                        <dd>感冒</dd>
                        <dd>补肾</dd>
                        <dd>阳痿早泄</dd>
                        <dd>补血</dd>
                        <dd>便秘</dd>
                        <dd>腹泻</dd>
                        <dd>活血化瘀</dd>
                    </dl>

                </div>
            </a>

        </li>
        <li>
            <a href="#">
                <span>美食菜单</span>
            </a>

        </li>
        <li>
            <a href="#">
                <span>家居馆</span>
            </a>

        </li>
        <li>
            <a href="#">
                <span>美食达人</span>
            </a>

        </li>
        <li>
            <a href="#">
                <span>菜谱视频</span>
            </a>

        </li>
        <li>
            <span>产品下载</span>

        </li>
    </ul>
</div>

<div class="main_w" clearfix>
    <div class="main" clearfix>
        <h1 class="bbtitles">修改个人资料</h1>
        <div class="user_main clearfix">
            <div class="user_inner_tab">
                <a href="#" class="user_backbtn1" title="返回我的空间" alt="返回我的空间"></a>
                <ul class="user_inner_tab_ul" id="user_inner_tab_ul" id="user_inner_tab_ult">
                    <li class="current_li">
                        <a class="link" href="#">修改图像</a>
                    </li>
                    <li>
                        <a class="link" href="#">修改密码</a>
                    </li>
                </ul>
            </div>
            <div class="sixin_list" id="show_img">
                <div class="sixin_list_w">
                    <div class="useredit_w">
                        <ul class="useredit_ul clearfix">
                            <form  class="form2" enctype="multipart/form-data" action="ChangeImgServlet" method="post">
                                <li><dl class="clearfix"><dt>当前头像：</dt><dd class="dd1"><img src="${userInfo.userPhoto}" class="useravatar" id="current_img"></dd><dd class="dd2"><span class="tip"></span></dd></dl></li>
                                <li><dl class="clearfix"><dt>新的头像：</dt><dd class="dd1">
                                    <div id="upload_big_img">
                                       
                                            <input type="hidden" value="titlepic" name="act">
                                            <img id="clickToUpload" src="https://s2.ax1x.com/2019/12/11/QsRYSH.gif">
                                            <input type="file" class="file" id="upload_top_img" name="photos" size="1" value="浏览" >
                                            <div class="uploading" id="uploading">上传中...</div>
                                     
                                    </div>
                                </dd><dd class="dd2"><span class="tip"></span></dd></dl></li>
                                <input type="hidden" value="save" name="action">
                                <input type="hidden" value="" id="avatar" name="avatar">
                                <li><dl class="clearfix"><dt></dt>
                                <dd class="dd1">
                                <input type="submit" value="保存" class="submit" id="current_input">
                                </dd><dd class="dd2"></dd></dl></li>
                            </form>
                            
                            
                        </ul>
                    </div>
                </div>
            </div>


            <div class="sixin_list" id="sixin_listid" style="display:none">
                <div class="sixin_list_w">
                    <div class="useredit_w">
                        <ul class="useredit_ul clearfix">
                            <form method="POST" action="ChangePwd" enctype="multipart/form-data">
                                <input type="hidden" value="modi_p" name="action">
                                <li><dl class="clearfix"><dt>旧密码：</dt><dd class="dd1"><input type="password" name="oldpassword" class="text"></dd><dd class="dd2"></dd></dl></li>
                                <li><dl class="clearfix"><dt>新密码：</dt><dd class="dd1"><input type="password" name="new_password" class="text"></dd><dd class="dd2"></dd></dl></li>
                                <li><dl class="clearfix"><dt>重复密码：</dt><dd class="dd1"><input type="password" name="re_password" class="text"></dd><dd class="dd2"></dd></dl></li>
                                <li>
                                <dl class="clearfix"><dt></dt><dd class="dd1"><input type="submit" value="提交" class="submit">
                                </dd><dd class="dd2"></dd></dl></li>
                            </form>
                        </ul>
                    </div>
                </div>
  
            </div>


        </div>
    </div>
</div>


<div class="tail">
    <div class="tail_log">

    </div>

    <div class="linkfooter">
        <ul class="link_fix">
            <li class="sina">
                <span>关注:49万</span>
                <p>
                    点击进入
                    <br>美食节官方微博
                </p>
            </li>
            <li class="tencent">
                <span>关注10.9万</span>
                <p>点击进入<br>美食杰QQ空间</p>
            </li>
            <li class="wechat">
                <span></span>
                <p>
                    扫描二维码添加
                    <br>美食杰为微信好友
                </p>
            </li>
            <li class="phoneclient">
                <span></span>
                <p>
                    扫描二维码下载
                    <br>美食杰手机客户端
                </p>
            </li>
        </ul>
    </div>

    <div class="friend_link">
        <dl class="friend_link_fix">
            <dt>友情链接</dt>
            <dd>美食</dd>
            <dd>体质测试</dd>
            <dd>伊特</dd>
            <dd>9酷音乐网</dd>
            <dd>365音乐网</dd>
            <dd>图吧</dd>
            <dd>汽车论坛</dd>
            <dd>39健康饮食</dd>
            <dd>家具网</dd>
            <dd>QQ下载</dd>
            <dd>搜狐天下</dd>
            <dd>美食天下</dd>
            <dd>中华美食网</dd>
            <dd>合肥公交网</dd>
            <dd>红餐微杂志</dd>
            <dd>北京搜房网</dd>
            <dd>更多友情链接</dd>
            <!--<dd></dd>-->
        </dl>
    </div>

    <div class="footer_lcon">
        <ul class="lcon_fix">
            <li>公司简介</li>
            <li>关于我们</li>
            <li>产品下载</li>
            <li>加入我们</li>
            <li>联系我们</li>
            <li>商务合作</li>
            <li>用户协议</li>
            <li>隐私政策</li>
            <li>网站地图</li>
            <li>友情链接</li>
        </ul>
        <p>京ICP备14303059号
            <img src="https://s2.ax1x.com/2019/09/19/nLXVxK.png">
            京公安网安备11111252656632555 Copyright@2019-2039 MEISHIJIE CO.LTD.
        </p>
    </div>
</div>
</body>

<c:if test="${correct==0}">
    <script>
       $(document).ready(function(){
    	   alert("两次密码输入不正确");
       })
    
    </script>
</c:if>
<c:if test="${correct==1}">
    <script>
       $(document).ready(function(){
    	   alert("密码修改成功");
       })
    
    </script>
</c:if>
<c:if test="${correct==2}">
    <script>
       $(document).ready(function(){
    	   alert("密码修改失败");
       })
    
    </script>
</c:if>

<c:if test="${correct==3}">
    <script>
       $(document).ready(function(){
    	   alert("旧密码输入错误");
       })
    
    </script>
    
</c:if>
<c:if test="${filePath==-1}">
    <script>
       $(document).ready(function(){
    	   alert("图片上传格式错误");
       })
    </script>
</c:if>

<c:if test="${filePath==1}">
    <script>
       $(document).ready(function(){
    	   alert("图像更改成功,下次登录可见");
       })
    </script>
</c:if>





<script src="js/common_tail_head.js"></script>
<script src="js/meishijie_change.js"></script>
</html>