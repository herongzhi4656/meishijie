<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<title>美食</title>
<!--<link type="text/css" href="css/index.css" rel="stylesheet">-->
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.bootcss.com/font-awesome/4.7.0/css/font-awesome.css">
<!--<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>-->
<script src="https://cdn.staticfile.org/jquery/3.3.1/jquery.min.js"
	type="text/javascript"></script>
<script
	src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/swiper.css">
<link rel="stylesheet" href="css/swiper.min.css">
<script src="js/swiper.js">
	
</script>
<script src="js/swiper.min.js">
	
</script>
<link rel="stylesheet" href="css/common_tail_head.css">
<link rel="stylesheet" href="css/meishijie_cookie.css">
</head>
<body>
	<!--首页的头部-->
	<div class="firstHeader">
		<img id="logo" src="https://s2.ax1x.com/2019/09/19/nb6qAA.png">
		<!--<img id="left_log" src="https://s2.ax1x.com/2019/09/19/nb6c79.png">-->
		<div class="top_search">
			<input id="input_String" class="text" type="text"
				default="请输入菜谱/食材/菜单/作者" name="meishijie" value="请输入菜谱/食谱/菜单/作者"
				onfocus="this.value=''"> <input class="input_submit"
				type="submit" value="搜索">

		</div>
			<div class="login_style" id="login_change">

			<a class="link login" href="MsjLogin.jsp">登录</a> <a
				class="link register" href="MsjRegister.jsp">注册</a> <a
				class="link weibo_login" href="">微博登录</a> <a class="link qq_login"
				href=""> QQ登录</a>

		</div>
		<div class="login_style" id="login_changed" style="display: none">
			<img class="loginImage" id="aImg1" src="${userImg}"
				style="width: 40px"> <a class="link login" id="index_exit"
				href="#">退出</a> 
				<a class="link login" href="MsjPubMenu.jsp">发布菜谱</a> <a
				class="link login" href="#">收藏</a> <a class="link login"
				id="index_cookie1" href="MsjChange.jsp">${userName}</a>
        </div>
		
	</div>
	<div class="firstNavigation">
		<ul id="main_nav">
			<li class="active"><a href="#"> <span>首页</span>

			</a></li>
			<li class="hasmore"><a href="#"> <span>菜谱大全</span> <i
					class="fa fa-angle-up" aria-hidden="true"></i> <i
					class="fa fa-angle-down" aria-hidden="true"></i>
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
			</a></li>


			<li class="health_hasmore"><a href="#"> <span>饮食健康</span> <i
					class="fa fa-angle-up" aria-hidden="true"></i> <i
					class="fa fa-angle-down" aria-hidden="true"></i>
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
			</a></li>
			<li><a href="#"> <span>美食菜单</span>
			</a></li>
			<li><a href="#"> <span>家居馆</span>
			</a></li>
			<li><a href="#"> <span>美食达人</span>
			</a></li>
			<li><a href="#"> <span>菜谱视频</span>
			</a></li>
			<li><span>产品下载</span></li>
		</ul>
	</div>

	<!--中间内容区域-->
	<div class="main_w clearfix">
		<div class="main clearfix">
			<ul class="pathstyle1">
				<li>首页</li>
				<li>></li>
				<li>菜谱大全</li>
				<li>></li>
				<li>芋泥麻薯欧软包</li>
			</ul>
			<c:forEach items="${menuInfo}" var="message">

				<div class="cp_header clearfix">
					<div class="cp_headerimg_w">
						<img alt="芋泥麻薯软欧包的做法" src="${message.achieveImage}" id="cookie_img">
					</div>
					<div class="cp_main_info_w">
						<div class="info1">
							<h1 class="title">
								<a id="tongji_title" title="芋泥麻薯软欧包的做法">${message.title}</a>
							</h1>
							<div class="erweima_t" id="erweima_t"></div>
							<span class="favbtns"><a
								href="javascript:add_fav(1948339)" title="芋泥麻薯软欧包的做法"
								class="addToFav_con" id="addToFav_con">收藏<span id="f_num">(1)</span></a>
							<div id="bdshare" class="bdshare_b">
									<div class="bdsharebuttonbox" data-tag="share_1"
										style="height: 50px; width: 168px; background: #f5f5f5; position: relative; float: left; line-height: 50px;">
										<a class="bds_more" data-cmd="more"
											style="display: block; position: absolute; left: 0px; top: 0px; height: 48px; width: 167px; text-indent: -9999px; background: none; margin: 0px; padding: 0px; border: 1px solid #e5e5e5; border-left: 0px;">更多</a><span
											style="display: block; height: 50px; font-size: 14px; font-weight: bold; color: #999; width: 78px; text-align: right; float: left;">分享到：</span><a
											class="bds_sqq" data-cmd="sqq"
											style="margin-top: 17px; position: relative;"></a><a
											class="bds_qzone" data-cmd="qzone" href="#"
											style="margin-top: 17px; position: relative;"></a><a
											class="bds_tsina" data-cmd="tsina"
											style="margin-top: 17px; position: relative;"></a>
									</div>
								</div></span>
							<dl class="yj_tags clearfix">
								<dt>
									<a id="tongji_gx_0" href="javascript:;">抵抗力</a>
								</dt>
								<dt>
									<a id="tongji_gx_1" href="javascript:;">健脾</a>
								</dt>
							</dl>
						</div>
						<div class="info2">
							<ul class="clearfix">
								<li class="w127"><strong>工艺</strong><a id="tongji_gy"
									href="javascript:;" title="芋泥麻薯软欧包的工艺" class="big">${message.attributeCraft}</a></li>
								<li class="w270"><strong>难度</strong>
								<div class="processing_w">
										<span class="icon icon_nd"></span><span
											class="processing processing_nd4"> </span><a id="tongji_nd"
											href="javascript:;" title="芋泥麻薯软欧包的难度" class="small">${message.attributeDiffucult}</a>
									</div></li>
								<li class="w270 br0"><strong>人数</strong>
								<div class="processing_w">
										<span class="icon icon_rs"></span> <span
											class="processing processing_nd12"></span> <a id="tongji_rsh"
											href="javascript:;" title="芋泥麻薯软欧包的人数" class="small">${message.attributeCount}</a>
									</div></li>
								<li class="w127 bb0"><strong>口味</strong><a id="tongji_kw"
									href="javascript:;" title="芋泥麻薯软欧包的口味" class="big">${message.attributeFlavor}</a></li>
								<li class="w270 bb0"><strong>准备时间</strong>
									<div class="processing_w">
										<span class="icon icon_zb"></span><span
											class="processing processing_nd7"></span> <a id="tongji_zbsj"
											href="javascript:;" title="芋泥麻薯软欧包的准备时间" class="small">${message.attributeTime}</a>
									</div></li>
								<li class="w270 bb0 br0"><strong>烹饪时间</strong>
								<div class="processing_w">
										<span class="icon icon_pr"></span><span
											class="processing processing_nd9"> </span><a
											href="javascript:;" id="tongji_prsj" title="芋泥麻薯软欧包的烹饪时间"
											class="small">&lt;${message.attributeCookie}</a>
									</div></li>
							</ul>
						</div>

						<div class="info3">
							<div class="user">
								<a target="_blank" id="tongji_author_img" href="#" class="img"><img
									src="https://s1.st.meishij.net/user/123/106/t9651623_152359212776319.jpg"><span
									class="masker pngFix"></span></a>
								<div class="info">
									<h4>
										<a id="tongji_author" target="_blank" href="javascript:;">${message.publishName}</a>
										<a target="_blank" class="v_small"
											href="https://i.meishi.cc/expert/" title="达人"
											_hover-ignore="1"></a>
									</h4>
									<span>菜谱：102 / 关注：1 / 粉丝：4258</span> <strong>2019-12-09
										/ <em id="viewclicknum">420</em>人看过
									</strong>
								</div>
							</div>
						</div>


					</div>
				</div>
			</c:forEach>




			<div class="cp_body clearfix">
				<div class="cp_body_left">
					<div class="materials">
						<p>
							<strong>“</strong>hehe<strong>”</strong>
						</p>
						<strong class="cpc_h2">用料</strong>

						<div class="materials_box">
							<div class="yl zl clearfix">
								<h3>
									<a href="javascript:;" title="芋泥麻薯软欧包的主料">主料</a>
								</h3>

								<ul class="clearfix">
									<c:forEach items="${pmaterial}" var="pm">
										<li class=""><a target="_blank" href="javascript:;"
											class="img"></a>

											<div class="c">
												<h4>
													<a target="_blank" href="javascript:;">${pm.ingredients}</a><span>${pm.iusage}</span>
												</h4>
												<a href="#" class="fortb" data-type="2" biz-keyword="酵母 鲜"
													biz-category="50016422" data-style="1" data-tmpl="290x380"
													target="_blank"></a>
											</div></li>
									</c:forEach>
								</ul>

							</div>
							<div class="yl fuliao clearfix">
								<h3>
									<a href="javascript:;" title="芋泥麻薯软欧包的辅料">辅料</a>
								</h3>
								<ul class="clearfix">
									<c:forEach items="${smaterial}" var="sm">
										<li class=""><h4>
												<a href="javascript:;">${sm.subsidary}</a>
											</h4>
											<span>${sm.susage}</span> <a href="#" class="fortb"
											data-type="2" biz-keyword="液体 鲜" biz-category="50016422"
											data-style="1" data-tmpl="290x380" target="_blank"></a></li>
									</c:forEach>
								</ul>
							</div>
						</div>

					</div>
					<div class="measure">
						<h2 class="cpc_h2">芋泥麻薯软欧包的做法</h2>
						<div class="editnew edit">
							<c:forEach items="${stepInfo}" var="st">
								<div class="content clearfix">
									<em class="step" id="step_num1">步骤</em>
									<div class="c">
										<p>${st.step}</p>
									</div>
								</div>
							</c:forEach>


							<h2 class="cpc_h2">芋泥麻薯软欧包成品图</h2>
							<style>
.swiper-container1 {
	margin: 20px 20px 20px 100px;
	width: 550px;
	height: 366px;
	overflow: hidden;
}

.swiper-container1 .swiper-slide {
	position: relative;
	overflow: hidden;
	background: #eee;
}

.swiper-container1 .swiper-slide img {
	display: block;
	width: 100%;
	position: absolute;
	left: 50%;
	top: 50%;
	transform: translate(-50%, -50%);
	-webkit-transform: translate(-50%, -50%);
}

.swiper-pagination-bullet {
	opacity: .5;
	background: #fff;
}

.swiper-pagination-bullet-active {
	opacity: 1;
	background: #f42e2b;
}
</style>
							<div
								class="swiper-container swiper-container1 swiper-container-horizontal">
								<div class="swiper-wrapper swiper-wrapper1"
									style="transition-duration: 0ms; transform: translate3d(-1100px, 0px, 0px);">
									<div class="swiper-slide swiper-slide-duplicate"
										data-swiper-slide-index="3" style="width: 550px;">
										<img
											src="https://s1.st.meishij.net/rs/123/106/9651623/n9651623_157560504217683.jpg"
											alt="芋泥麻薯软欧包成品图">
									</div>
									<div class="swiper-slide swiper-slide-prev"
										data-swiper-slide-index="0" style="width: 550px;">
										<img
											src="https://s1.st.meishij.net/rs/123/106/9651623/n9651623_157560500806504.jpg"
											alt="芋泥麻薯软欧包成品图">
									</div>
									<div class="swiper-slide swiper-slide-active"
										data-swiper-slide-index="1" style="width: 550px;">
										<img
											src="https://s1.st.meishij.net/rs/123/106/9651623/n9651623_157560502019039.jpg"
											alt="芋泥麻薯软欧包成品图">
									</div>
									<div class="swiper-slide swiper-slide-next"
										data-swiper-slide-index="2" style="width: 550px;">
										<img
											src="https://s1.st.meishij.net/rs/123/106/9651623/n9651623_157560503162223.jpg"
											alt="芋泥麻薯软欧包成品图">
									</div>
									<div class="swiper-slide" data-swiper-slide-index="3"
										style="width: 550px;">
										<img
											src="https://s1.st.meishij.net/rs/123/106/9651623/n9651623_157560504217683.jpg"
											alt="芋泥麻薯软欧包成品图">
									</div>
									<div class="swiper-slide swiper-slide-duplicate"
										data-swiper-slide-index="0" style="width: 550px;">
										<img
											src="https://s1.st.meishij.net/rs/123/106/9651623/n9651623_157560500806504.jpg"
											alt="芋泥麻薯软欧包成品图">
									</div>
								</div>
								<div
									class="swiper-pagination swiper-pagination1 swiper-pagination-clickable">
									<span class="swiper-pagination-bullet"></span><span
										class="swiper-pagination-bullet swiper-pagination-bullet-active"></span><span
										class="swiper-pagination-bullet"></span><span
										class="swiper-pagination-bullet"></span>
								</div>
							</div>
							<script>
								var mySwiper = new Swiper('.swiper-container1',
										{
											pagination : '.swiper-pagination1',
											loop : true,
											autoplay : 3500,
											paginationClickable : true
										});
							</script>
							<input type="hidden" value="">
						</div>

					</div>
					<div class="cp_comment">
						<h2 class="cpc_h2">芋泥麻薯软欧包的讨论</h2>
						<a name="pl"></a>
						<div class="cp_comments_list">
							<div class="cp_com_form_w clearfix">
								<a target="_blank" class="useravatar"><img
									src="https://s1.c.meishij.net/images/default/tx2_2.png"></a>
								<div class="form_w">
									<div class="cp_pl_tag" id="cp_com_mask">
										<em>给内容一个标签：</em><span class="current" type="3">随意吐槽</span><span
											type="1">提问求解</span>
									</div>
									<form>
										<input name="id" type="hidden" id="news_id" value="1948339">
										<input name="news_title" type="hidden" id="news_title"
											value="芋泥麻薯软欧包"> <input name="from_search"
											type="hidden" id="from_search" value="0">
										<textarea id="cp_com_textarea" placeholder="想说点什么..."></textarea>
									    <input type="button" id="cp_com_submit" value="提交"
											 class="submit"> <input type="hidden" id="cp_com_type">
									</form>
										
									<a id="tongji_shangchuancgt"
										href="https://reply.meishij.net/create_dish.php?id=1948339"
										target="_blank" title="上传芋泥麻薯软欧包的图片" class="upload_zp_btn">上传成果作品</a>
								</div>
							</div>

							<div class="cp_comlist_w">

								<ul class="clearfix">
								    <c:forEach items="${judge}" var="jd">
									<li class="clearfix commentslist_li"><a target="_blank"
										href="https://i.meishi.cc/cook.php?id=12973998" class="avatar"><img
											src="${jd.judgeImg}">
										<h5>${jd.judgeName}</h5></a>
										<div class="c">
											<p class="p1">
												<strong>[随意吐槽]</strong>${jd.judgeContent}
											</p>
											<div class="info">
												<span> ${jd.judgeTime}来自 <a target="_blank"
													href="http://www.meishij.net/"> 美食杰 </a>
												</span> <a href="javascript:;" class="re re_start">回复</a> <span
													class="zzzzan" id="zzzzan6635553" plid="6635553"> <em
													class="con_comlist_zanbtn"></em> <strong>0</strong>
												</span>
											</div>

											<div class="comscoms clearfix" style="display: none;">
												<form class="re_form"
													action="https://reply.meishij.net/pl/news.php"
													id="pl_5657412">
													<input type="hidden" id="reply_id_5657412" value="5657412">
													<textarea class="re_textarea" placeholder="我也说一句"
														id="text_5657412"></textarea>
													<input type="button" onclick="submit_reply('5657412')"
														class="re_submit" value="回复">
												</form>
											</div>
										</div></li>
										</c:forEach>

								</ul>
							</div>


						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	</div>
	</div>
	<!--<div id="bbtitles" class="bbtitles" >-->
	<!--菜单是你的一桌饭-->
	<!--<span class="paixu_cd">-->
	<!--<a class="l_n cuurent" href="#">最新</a>-->
	<!--<a class="l_n" href="#">最热</a>-->
	<!--</span>-->
	<!--</div>-->

	<div class="tail">
		<div class="tail_log"></div>

		<div class="linkfooter">
			<ul class="link_fix">
				<li class="sina"><span>关注:49万</span>
					<p>
						点击进入 <br>美食节官方微博
					</p></li>
				<li class="tencent"><span>关注10.9万</span>
					<p>
						点击进入<br>美食杰QQ空间
					</p></li>
				<li class="wechat"><span></span>
					<p>
						扫描二维码添加 <br>美食杰为微信好友
					</p></li>
				<li class="phoneclient"><span></span>
					<p>
						扫描二维码下载 <br>美食杰手机客户端
					</p></li>
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
			<p>
				京ICP备14303059号 <img src="https://s2.ax1x.com/2019/09/19/nLXVxK.png">
				京公安网安备11111252656632555 Copyright@2019-2039 MEISHIJIE CO.LTD.
			</p>
		</div>
	</div>

</body>
<c:if test="${not empty userName}">
	<script>
		$(document).ready(function() {
			$("#login_change").hide();
			$("#login_changed").show();
		})
	</script>
</c:if>
<script src="js/common_tail_head.js"></script>
<script src="js/msjMenu.js"></script>
</html>