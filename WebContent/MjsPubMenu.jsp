<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="css/publish_recipe.css">
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

<!--中间内容区域-->

     <form id="uploadform" action="PublishServlet" method="post" name="form1" enctype="multipart/form-data">
    <div class="main">
        <h3 class="bbtitles">欢迎发布新菜谱，先介绍一下你的大作！</h3>
        <div class="item clearfix">
       
        <input type="hidden" value="new" id="r_act" name="act" />
         <input type="hidden" value="1" name="stype" id="stype" />
           <input type="hidden" name="id" id="r_id" value="0" />
            <div class="uploadbox">
                <div class="uploaditem">
                    <h5>标题</h5>
                    <div class="row1_box">
                        <div class="input_text_item">
                            <input type="text" title="title" value="" name="title" placeholder="请填写菜谱名称，10字以内" class="hastip">
                            <div class="upload_tips" style="bottom:54px;left:0px;">
                                1、菜谱名称保持10个汉字以内
                            </div>

                            <input type="text" style="display:none;" title="from_site" value="" name="from_site" id="from_site" placeholder="请填写菜谱原文地址，如 http://www.meishi.cc/"></input>
                        </div>
                    </div>
                </div>
                <div class="uploaditem">
                    <h5>自媒体标题（8-30个字符）：</h5>
                    <div class="row1_box">
                        <div class="input_text_item">
                            <input type="text" value="" name="ftitle" placeholder="请填写自媒体标题" class="hastip"></input>
                        </div>
                    </div>
                </div>
                <div class="uploaditem">
                    <h5>属性</h5>
                    <div class="row1_box">
                        <div class="selectitem"><dl>
                            <dt>工艺</dt>
                            <dd class="clearfix" style="display:none">
                       
                            <span val="g1">炒</span>
                            <span val="g2">蒸</span>
                            <span val="g3">煮</span>
                            <span val="g4">其他</span>
                        </dd>
                        </dl><input type="hidden" name="gongyi" value="0">
                        </div>
                        <div class="selectitem"><dl><dt>口味</dt>
                            <dd  class="clearfix" style="display:none">
         
                            <span val="w1">香辣味</span>
                 
                            <span val="w2">甜味</span>
                            <span val="w3">酸甜味</span>
                         
                            <span val="w4">其他</span>
                        </dd>
                        </dl><input type="hidden" name="kouwei" value="0">
                        </div>
                        <div class="selectitem"><dl><dt>难度</dt>
                            <dd class="clearfix"  style="display:none">
                            <span val="d1">初级入门</span>
                            <span val="d2">中级掌勺</span>
                            <span val="d3">高级厨师</span>
                            
                        </dd>
                        </dl><input type="hidden" name="make_diff" value="0">
                        </div>
                        <div class="selectitem"><dl><dt>准备时间</dt>
                            <dd class="clearfix"  style="display:none">
                            <span val="p1">15分钟</span>
                            <span val="p2">30分钟</span>
                            <span val="p3">60分钟</span>
              
                            <div class="upload_tips_style2">TIPS：醒发、泡发、腌制等操作算作准备时间</div>
                        </dd></dl>
                            <input type="hidden" name="make_pretime" value="0">
                        </div>
                        <div class="selectitem selectitem_shijian"><dl>
                            <dt>烹饪时间</dt>
                            <dd class="clearfix"  style="display:none">
                          
                            <span val="c1"><60分钟</span>
                            <span val="c2"><90分钟 </span>
                            <span val="c3"><2小时 </span>
                          
                        </dd>
                        </dl>
                            <input type="hidden" name="make_time" value="0">
                        </div>
                        <div class="selectitem selectitem_renshu"><dl>
                            <dt>人数</dt>
                            <dd class="clearfix"  style="display:none">
                          
                            <span val="a1">1人份</span>
                            <span val="a2">2人份</span>
                            <span val="a3">3人份</span>
                            <span val="a4">未知</span>
                        </dd>
                        </dl>
                            <input type="hidden" name="make_amount" value="0">
                        </div>
                    </div>
                </div>
                
                <div class="uploaditem pb0">
                    <h5>成品图 (328*440)</h5>
                    <div class="file_box">
                        <div class="fileitem" id="upload_big_img">
                               
                                
                                
                                <input type="hidden" value="" name="newsphoto" id="newsphoto" />
                                <img src="https://s2.ax1x.com/2019/12/11/QrnFRP.png" id="clickToUpload"/>
                                <input type="file" class="file" id="upload_top_img" name="photos" size="1" value="浏览" style="position:absolute;top:470px;width:300px;cursor:pointer;font-size:400px;z-index:200px">
                                <a href="####" id="delimg"></a>
                                <!--<iframe id="newsphoto_iframe" src="https://i.meishi.cc/iframe/pic.php" frameborder="0" height="400" width="300" scrolling="no">-->

                                <!--</iframe>-->
                               
                           
                        </div>


                        <div class="textareaitem">
                            <input placeholder="说说这道菜背后的故事吧~ " name="descr">
                        </div>
                    </div>
                </div>
            </div>
         
        </div>
        

        <!-------------一---------->
        <h3 class="bbtitles">记录所有原材料</h3>
        <div class="item clearfix">
            <div class="uploadbox"  id="step2_box">
                <div class="uploaditem" id="uploaditem_zl">

                    <div class="upload_tips_style3"><strong>小提示：</strong><br/>1、输入食材后，下方会弹出相应食材可选择；如果没有弹出，可能是您输入的食材有误，或者没有当前食材（请联系小编）<br/>2、“适量、少许”尽量少用或者不用，用量精确对您的粉丝更有帮助</div>

                     <input type="hidden" value="2" name="stype" id="stype" />
                    <h5>主料</h5>
                    <div id="zlinputs" class="ylinputs">
                        <div class="row1_box_half">
                            <div class="suggestionsBox suggestions" style="display:none;"><ul class="suggestionList autoSuggestionsList" ></ul></div>
                            <div class="input_text_item1"><input class="inputtext_scname" name="zlsc1" value="" type="text" placeholder="比如：面粉"  defaultval="请填写主料名称" autocomplete="off">
                            </div><div class="input_text_item2"><input  name="zlyl1" value="" type="text" placeholder="比如：200克">
                        </div><span class="delsc"></span>
                        </div>
              
                      
                       
                            
                             <div class="row1_box_half">
                            <div class="suggestionsBox suggestions" style="display:none;"><ul class="suggestionList autoSuggestionsList" ></ul></div>
                            <div class="input_text_item1"><input class="inputtext_scname" name="zlsc2" value="" type="text" placeholder="请填写主料名称"  defaultval="请填写主料名称" autocomplete="off">
                            </div><div class="input_text_item2"><input name="zlyl2" value="" type="text" placeholder="请填写用量">
                        </div><span class="delsc"></span>
                        </div>
                        <div class="row1_box_half">
                            <div class="suggestionsBox suggestions" style="display:none;"><ul class="suggestionList autoSuggestionsList" ></ul></div>
                            <div class="input_text_item1"><input class="inputtext_scname" name="zlsc3" value="" type="text" placeholder="请填写主料名称" defaultval="请填写主料名称" autocomplete="off">
                            </div><div class="input_text_item2"><input name="zlyl3" value="" type="text" placeholder="请填写用量">
                        </div><span class="delsc"></span>
                        </div>
                        
                         <div class="row1_box_half">
                            <div class="suggestionsBox suggestions" style="display:none;"><ul class="suggestionList autoSuggestionsList" ></ul></div>
                            <div class="input_text_item1"><input class="inputtext_scname" name="zlsc4" value="" type="text" placeholder="请填写主料名称" defaultval="请填写主料名称" autocomplete="off">
                            </div><div class="input_text_item2"><input name="zlyl4" value="" type="text" placeholder="请填写用量">
                        </div><span class="delsc"></span>
                        </div>
                        
                         
                        
                        
                        
                    </div>
                  
                    <div class="row1_box_half">
                        <a class="addsc_item" id="addazl" href="####">+ 增加一项</a>
                    </div>
                </div>
                <div class="uploaditem pb0" id="uploaditem_fl">
                    <h5>辅料</h5>
                   
                      <input type="hidden" value="3" name="stype" id="stype" />
                    <div id="flinputs" class="ylinputs">
                        <div class="row1_box_half">
                            <div class="suggestionsBox suggestions" style="display:none;"><ul class="suggestionList autoSuggestionsList" ></ul></div>
                            <div class="input_text_item1"><input class="inputtext_scname" name="flsc1" value="" type="text" placeholder="比如：食盐"  defaultval="请填写辅料名称" autocomplete="off">
                            </div><div class="input_text_item2"><input name="flyl1" value="" type="text" placeholder="比如：1茶匙" />
                        </div><span class="delsc"></span>
                        </div>
                        <div class="row1_box_half">
                            <div class="suggestionsBox suggestions" style="display:none;"><ul class="suggestionList autoSuggestionsList" ></ul></div>
                            <div class="input_text_item1"><input class="inputtext_scname" name="flsc2" value="" type="text" placeholder="请填写辅料名称"  defaultval="请填写辅料名称" autocomplete="off">
                            </div><div class="input_text_item2"><input name="flyl2" value="" type="text" placeholder="请填写用量" />
                        </div><span class="delsc"></span>
                        </div>
                        <div class="row1_box_half">
                            <div class="suggestionsBox suggestions" style="display:none;"><ul class="suggestionList autoSuggestionsList" ></ul></div>
                            <div class="input_text_item1"><input class="inputtext_scname" name="flsc3" value="" type="text" placeholder="请填写辅料名称"  defaultval="请填写辅料名称" autocomplete="off">
                            </div><div class="input_text_item2"><input name="flyl3" value="" type="text" placeholder="请填写用量"/>
                        </div><span class="delsc"></span>
                        </div>
                        <div class="row1_box_half">
                            <div class="suggestionsBox suggestions" style="display:none;"><ul class="suggestionList autoSuggestionsList" ></ul></div>
                            <div class="input_text_item1"><input class="inputtext_scname" name="flsc4" value="" type="text" placeholder="请填写辅料名称"  defaultval="请填写辅料名称" autocomplete="off">
                            </div><div class="input_text_item2"><input name="flyl4" value="" type="text" placeholder="请填写用量" />
                        </div><span class="delsc"></span>
                        </div>
                    </div>
                  
                    <div class="row1_box_half">
                        <a class="addsc_item" id="addafl" href="####">+ 增加一项</a>
                    </div>
                </div>
            </div>
        </div>
       




        <!-------------二---------->
        <h3 class="bbtitles">开始写步骤了！能否简单易学就看你怎么写了，加油！</h3>
        <div class="item clearfix">
            <div class="upload_tips_style3" style="margin-left:50px;position:relative;top:30px;margin-bottom:30px;">
                <strong>小提示：</strong><br/>
                1、步骤图宽度在400像素至550像素，如果拼接请横向拼接2至3张（当宽度大于550时会自动压缩，不用裁切）<br/>
                2、每个步骤只用一段话描述，请勿在步骤中再细分“1.2.3.”
            </div>
            <div class="muluploadbox">
                <div id="ultiple_uploade_step_img" class="uploadify" style="height:46px; width:120px">
                   <div id="mutiple_uploade_step_img" class="uploadify-button" style="height:46px;line-height:46px;width:120px">
                       <span class="uploadfy-button-text">批量上传</span>
                   </div>

                </div>
               <div id="mutiple_uploade_step_img_queue" class="uploadify-queue"></div>
                <span class="tip">按住ctrl选择多张图片。</span>
            </div>
          
            <div class="uploadbox pr0">
                <div class="uploaditem">
                
                      <input type="hidden" value="4" name="stype" id="stype" />
                    <div id="steps">
                        <div class="stepitem">
                            <div class="stepnum">1</div>
                            <div class="stepupload">
                                <div class="upload_big_img_s">
                                    <!--<form id="uploader1" method="POST" action="">-->
                                        <!--<img id="clickToUpload1"  src="https://s2.ax1x.com/2019/12/10/Q0v4oj.png" width="180">-->
                                        <!--<input type="file" class="file" id="upload_top_img" name="photos" size="1" value="浏览">-->
                                    <!--<input type="hidden" id="step_img_5980e1e500b07f6ade81251b83537f75" name="step_img[]" />-->
                                    <!--</form>-->
                                </div>

                            </div>
                            <div class="stepright">
                            <input placeholder="请填写步骤描述" name="step_text1">
                            <!--小技巧 start-->


                            <!--小技巧 end-->

                        </div>
                            <div class="step_rightbtns">
                            <a href="####" class="moveUp"></a>
                                <a href="####" class="moveDown">
                            </a><a href="####" class="addStep"></a><a href="####" class="delStep"></a>
                        </div>
                        </div>
                        <div class="stepitem">
                            <div class="stepnum">2</div>
                            <div class="stepupload">
                                <input type="hidden" id="step_img_3d0b28fc8dd55ca90ffec0f74214ebfe" name="step_img[]" />
                            </div>
                            <div class="stepright">
                            <input placeholder="请填写步骤描述" name="step_text2">
                            <!--小技巧 start-->


                            <!--小技巧 end-->

                        </div><div class="step_rightbtns">
                            <a href="####" class="moveUp"></a><a href="####" class="moveDown"></a><a href="####" class="addStep"></a><a href="####" class="delStep"></a>
                        </div>
                        </div>
                        <div class="stepitem">
                            <div class="stepnum">3</div>
                            <div class="stepupload">
                            </div>
                            <div class="stepright">
                            <input placeholder="请填写步骤描述" name="step_text3">
                            <!--小技巧 start-->


                            <!--小技巧 end-->

                        </div><div class="step_rightbtns">
                            <a href="####" class="moveUp"></a><a href="####" class="moveDown"></a><a href="####" class="addStep"></a><a href="####" class="delStep"></a>
                        </div>
                        </div>
                        <div class="stepitem">
                            <div class="stepnum">4</div>
                            <div class="stepupload">

                            </div>
                            <div class="stepright">
                            <input placeholder="请填写步骤描述" name="step_text4">
                            <!--小技巧 start-->


                            <!--小技巧 end-->

                        </div><div class="step_rightbtns">
                            <a href="####" class="moveUp"></a><a href="####" class="moveDown"></a><a href="####" class="addStep"></a><a href="####" class="delStep"></a>
                        </div>
                        </div>
                        <div class="stepitem">
                            <div class="stepnum">5</div>
                            <div class="stepupload">
                                <input type="hidden" id="step_img_721e9575f7e3883c1ff85a3303cf0d2b" name="step_img[]" />
                            </div>
                            <div class="stepright">
                            <input placeholder="请填写步骤描述" name="step_text5">
                            <!--小技巧 start-->


                            <!--小技巧 end-->

                        </div><div class="step_rightbtns">
                            <a href="####" class="moveUp"></a><a href="####" class="moveDown"></a><a href="####" class="addStep"></a><a href="####" class="delStep"></a>
                        </div>
                        </div>
                    </div>
                  
                    
                     
                    <div class="addstep_item">
                        <a href="####" class="addstep_btn" id="addstep_btn">+ 增加一步</a>
                    </div>
                </div>
                
                 <div id="step_result" class="uploaditem">
                    <h5>最终效果图<span style="font-size:12px;color:#333;padding-left:10px;">（请上传两张或以上不同角度成品图，宽度500-600像素之间，最好横图竖图、远景近景图都有）</span></h5>
                    <div class="muluploadbox_done">
                        <div id="multiple_uploade_done_img" class="uploadify" style="height: 46px; width: 120px;">

                            <div id="multiple_uploade_done_img-button" class="uploadify-button " style="height: 46px; line-height: 46px; width: 120px;">
                                <span class="uploadify-button-text">批量上传</span>
                            </div>
                        </div>
                        <div id="multiple_uploade_done_img-queue" class="uploadify-queue"></div>
                        <span class="tip">按住ctrl选择多张图片</span>
                        </div>

                        <!--<input type="button" id="multiple_uploade_done_img" value="批量上传">-->
                        <!--<span class="tip">按住ctrl选择多张图片。</span>-->

                                <!--<span class="uploadfy-button-text">批量上传</span>-->
                    </div>
                        <div class="tipsitem">
                        <div class="stepupload">

                            <img id="clickToUpload1"  src="https://s2.ax1x.com/2019/12/10/Q0v4oj.png" width="180"></img>

                                <input type="hidden" id="step_img_6851e6d32967e2ba1eb6254043852453" name="step_result_img[]" />


                        </div>
                        <div class="stepupload">

                                <img id="clickToUpload2"  src="https://s2.ax1x.com/2019/12/10/Q0v4oj.png" width="180">
                        
                                <input type="hidden"  name="step_result_img[]" />

                        </div>
                        <div class="stepupload">

                                <img id="clickToUpload3"  src="https://s2.ax1x.com/2019/12/10/Q0v4oj.png" width="180">
     
                                <input type="hidden"  name="step_result_img[]" />

                        </div>
                        <div class="stepupload">

                                <img id="clickToUpload4"  src="https://s2.ax1x.com/2019/12/10/Q0v4oj.png" width="180">
                              
                                <input type="hidden"  name="step_result_img[]" />

                        </div>

                </div>
                
             
            </div>
        </div>
        
          
            
            </div>
        </div>


        <!-------------三---------->
        

<div class="uploadsubmit_item" style="width:460px;">
               
                  <input type="submit"  class="submit_1" value="搞定，提交审核！" style="display:inline-block;">
               
                
                
               
              
        </div>	</div>
        </form>
      


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
<script src="js/common_tail_head.js"></script>
<script src="js/publish_recipe.js"></script>
</html>