<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="com.hrz.bean.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
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
    <link rel="stylesheet" href="css/msj_register.css">
    <!--<link rel = "stylesheet"  href="css/bootstrap.min.css">-->
    <!--<script  src="js/bootstrap.min.css"></script>-->
    <!--<script src="../js/jquery-3.3.1.min.js"></script>-->


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
    <div class="login_style">

        <a class="link login" href="">登录</a>
        <a class="link register" href="">注册</a>
        <a class="link weibo_login" href="">微博登录</a>
        <a class="link qq_login" href=""> QQ登录</a>

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

<div class="content_area">
    <div class="n1_title">
        <span class="n1_t_left"></span>
        注册美食杰
        <span class="n1_t_right"></span>
    </div>
    <div class="n1_dws_w">
        <div class="n1_dws_w1">
            <a href="javascript:void(0)" class="a1">
                <span class="icon"></span>
            </a>
            <a href="javascript:void(0)" class="a2">
                <span class="icon"></span>
            </a>
            <a href="javascript:void(0)" class="a3">
                <span class="icon"></span>
            </a>
        </div>
        <a href="javascript:void(0)" id="more_dsf_btn" class="go_link" opened="0">
            更多第三方登陆方式 ∨
        </a>
        <div id="n1_moredsf" class="n1_moredsf" style="display:none">

            <a class="a1" href="javascript:void(0)">人人网账号登陆</a>
            <a class="a2" href="javascript:void(0)">百度账号登陆</a>
            <a class="a3" href="javascript:void(0)">开心网账号登陆</a>
            <a class="a4" href="javascript:void(0)">盛大通行证登陆</a>
        </div>
    </div>
    <div class="n1_or">

    </div>
    <div class="n1_loginbox_w" id="msj_loginbox"  style="display:none">
        <form method="post">

            <div class="n1_loginitem">
                <input class="text" type="text" value="" name="username" placeholder="请输入手机号/邮箱/昵称">
            </div>
            <div class="n1_loginitem">
                <input type="password" class="password" name="password" placeholder="请输入密码">
            </div>
            <div class="n1_loginitem" style="height:33px;">
                <label>
                    <input type="checkbox" id="auto_login_next" class="checkbox" value="auto">
                    <span class="next_auto">下次自动登陆</span>
                </label>
                <a onclick="_htm.push(['_trackEvent','login','click','注册登陆页_忘记密码'])" href="javascript:void(0)" class="forgetpassword">忘记密码</a>
            </div>
            <div class="n1_loginitem" style="text-align:center">
                <input class="submit" type="submit" value="登录">
            </div>
        </form>
    </div>
    <div class="n1_more_zc" id="n1_more_zc">
        <div class="n1_table">
            <a id="zc_phone" href="javascript:void(0)">用户名注册</a>
            |
            <a id="zc_email" class="" href="javascript:void(0)">邮箱注册</a>
        </div>
        <div class="n1_loginbox_www">
            <div class="n1_loginbox_ww" style="margin-left:0px">
                <div class="n1_loginbox_w" style="float:left;">
                    <form id="n1_phone_submit_btn_form" class="register_form_pm" action="AccountServlet" method="post">
                        <div class="n1_loginitem">
                            <input id="mobile" class="text forcheck pn_forcheck" type="text" passcheck="0"
                                   placeholder="请输入账户名" name="username">
                        </div>
                        <div class="login_tips tip" style="display:none;"></div>
                       
                        <div class="login_tips false" style="display:none"></div>
                        <div class="n1_loginitem">
                            <input id="password_mobile" class="password forchek pw_forcheck"
                                   type="password" name="password" passcheck="0" placeholder="请输入密码">
                        </div>
                        <div class="login_tips tip" style="display:none"></div>
                        <div class="login_pw_tips state1" style="display:none"></div>
                        <div class="n1_loginitem">
                            <label>
                                <input id="mobile_check" class="checkbox" type="checkbox" checked="1" name="agree">
                                <span class="next_auto">我已阅读并且同意</span>
                                <a href="javascript:void(0)">美食杰用户使用协议</a>
                            </label>
                        </div>
                          <div class="n1_loginitem" style="text-align:center;">
                            
                                   <input id="n1_phone_submit_btn" class="submit register_submit"
                                        value="注册" type="submit">
                                         <span id="notice_user" style="color:#ec5541;;font-size:15px;float:right;padding-top: 10px;"></span>
                             
                        </div>
                     
                    </form>
                     
                </div>
                <div class="n1_loginbox_w" style="float:left">
             
                    <form  id="n1_emial_submit_btn_form" class="register_form_email"  method="post" action="userRegister">
                        <div class="n1_loginitem">
                            <input id="email" class="text forcheck email_forcheck"
                                   type="text" name="email" passcheck="0" placeholder="请输入邮箱">
                        </div>
                        
                        <div class="n1_loginitem">
                            <input id="mobile_code" class="text forcheck pyzm_forcheck"
                                 name="code"  type="text" passcheck="0" placeholder="请输入验证码" style="width:150px">
                            <a id="phone_yzmbtn" class="phone_yzmbtn sended" href="javascript:void(0)">免费获取验证码</a>
                        </div>
                        
                        <div class="login_tips tip" style="display:none;"> </div>
                        <div class="n1_loginitem">
                            <input id="email_password" class="password forcheck pw_forcheck" type="passowrd"
                                   name="password" placeholder="请输入密码">
                        </div>
                        <div class="login_tips tip" style="display:none"></div>
                        <div class="login_pw_tips state2" style="display:none;"> </div>
                        <div class="n1_loginitem" style="height:33px">
                            <label>
                                <input id="email_check" class="checkbox" type="checkbox" checked="1">
                                <span class="next_auto">我已阅读并同意</span>
                                <a href="javascript:void(0)">美食杰用户使用协议</a>
                            </label>
                        </div>
                          <div class="n1_loginitem" style="text-align:center;">
                            <input id="n1_email_submit_btn" class="submit register_submit"
                                   type="submit" value="注册">
                                    <span id="notice" style="color:#ec5541;;font-size:15px;float:right;padding-top: 10px;">请先完成邮箱验证</span>
                        </div>
                       
                    </form>
                    
                </div>


            </div>
        </div>
    </div>
    <a id="n1_gozc" class="go_link" href="javascript:void(0)" opened="0">还没有账号?免费注册∧</a>
</div>

<!--<div id="yzmbox" class="yzmbox">-->
<!--<div class="yzmbox_w">-->
<!--<p class="p1">请输入验证码</p>-->
<!--<div class="yzminput">-->
<!--<div id="yzm_mobile" class="text" type="text" value=""></div>-->
<!--</div>-->
<!--</div>-->
<!--</div>-->

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
<c:if test="${code==-1}">
     <script>
       $(function(){
          
    	   $("#notice").html("验证码不正确");
    	  
       })
     </script>
</c:if>
<c:if test="${code==-2}">
     <script>
       $(function(){
    	   $("#notice").html("用户名密码不能为空");
    	  
       })
     </script>
</c:if>

<c:if test="${code==0}">
     <script>
       $(function(){
    	   $("#notice").html("该邮箱已经注册");
    	  
       })
     </script>
</c:if>

<script src="js/common_tail_head.js"></script>
<script type="text/javascript" src="js/msj_register.js">//导航栏当前选中对象 </script>
</html>