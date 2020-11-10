<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*"%>
<%@ page import="com.hrz.bean.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
<link rel="stylesheet" href="css/common_tail_head.css">
<link rel="stylesheet" href="css/msj_index.css">

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
			<img class="loginImage" id="aImg" src="${user.userPhoto}"
				style="width: 40px"> <a class="link login" id="index_exit"
				href="#">退出</a> 
				<a class="link login" href="MsjPubMenu.jsp">发布菜谱</a> <a
				class="link login" href="collect?name=${user.userName}&img=${user.userPhoto}">收藏</a> <a class="link login"
				id="index_cookie" href="MsjChange.jsp">${user.userName}</a>



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

	<div class="index_first_content">
		<div class="index_item">
			<div class="bigBox">
				<div class="content" style="transition: .6s">
					<div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upgELj.jpg" alt="1">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/up4ew4.jpg" alt="2">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upgPW8.jpg" alt="3">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upg9FP.jpg" alt="4">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upgSot.jpg" alt="5">
						</div>
					</div>
					<div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upczdI.jpg" alt="6">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upcxeA.jpg" alt="7">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upcjLd.jpg" alt="8">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upcXsH.jpg" alt="9">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upcOQe.jpg" alt="10">
						</div>
					</div>
					<div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/19/nLj57Q.jpg" alt="11">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/19/nLjhnS.jpg" alt="12">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upgELj.jpg" alt="1">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/up4ew4.jpg" alt="2">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upgPW8.jpg" alt="3">
						</div>
					</div>
					<div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upg9FP.jpg" alt="4">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upgSot.jpg" alt="5">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upczdI.jpg" alt="6">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upcxeA.jpg" alt="7">
						</div>
						<div>
							<img src="https://s2.ax1x.com/2019/09/22/upcjLd.jpg" alt="8">
						</div>
					</div>
				</div>
				<div class="arrow_left_first"><</div>
				<div class="arrow_right_first">></div>
				<div class="left_first"></div>
				<div class="right_first"></div>
			</div>
			<div class="fenye">
				<span></span><span class="redBorder"> <span>4:00</span> <span>早餐</span>
				</span> <span> <span>10:00</span> <span>午餐</span>
				</span> <span> <span>14:00</span> <span>下午茶</span>
				</span> <span> <span>16:00</span> <span>晚餐</span>
				</span> <span> <span>21:00</span> <span>夜宵</span>
				</span> <span> <span>4:00</span> <span></span>
				</span>
			</div>


			<h3 class="third_title">
				九月，养阴润肺，防秋燥 <span class="more_food"> 更多食材 > </span>
			</h3>
			<!--第三部分-->
			<div class="index_th_part">
				<div class="index_th_w">
					<ul id="fruit_list">
						<li class="c_active" id="health_sc">水果</li>
						<li id="health_sc1">蔬菜</li>
						<li id="health_sc2">五谷</li>
						<li id="health_sc3">生鲜</li>
					</ul>
				</div>
				<div class="index_th_pic">
					<div class="index_th_p">
						<ul class="pic_itme">
							<li><img src="https://s2.ax1x.com/2019/09/19/nLjZYn.jpg"
								alt="">
								<div class="pc_w">
									<span>梨</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLjB0e.jpg"
								alt="">
								<div class="pc_w">
									<span>香蕉</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLj1w4.jpg"
								alt="">
								<div class="pc_w">
									<span>苹果</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLj3TJ.jpg"
								alt="">
								<div class="pc_w">
									<span>葡萄</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLXOdH.jpg"
								alt="">
								<div class="pc_w">
									<span>哈密瓜</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLjdOO.jpg"
								alt="">
								<div class="pc_w">
									<span>西瓜</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLX4iR.jpg"
								alt="">
								<div class="pc_w">
									<span>橙子</span>
								</div></li>

							<li><img src="https://s2.ax1x.com/2019/09/19/nLjYf1.jpg"
								alt="">
								<div class="pc_w">
									<span>石榴</span>
								</div></li>
						</ul>

					</div>
					<div class="index_th_p1">
						<ul class="pic_itme">
							<li><img src="https://s2.ax1x.com/2019/09/19/nLj0mD.jpg"
								alt="">
								<div class="pc_w">
									<span>西红柿</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLjVFs.jpg"
								alt="">
								<div class="pc_w">
									<span>空心菜</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLjlmF.jpg"
								alt="">
								<div class="pc_w">
									<span>藕</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLjGk9.jpg"
								alt="">
								<div class="pc_w">
									<span>茄子</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLXzWt.jpg"
								alt="">
								<div class="pc_w">
									<span>虹豆</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLX7QK.jpg"
								alt="">
								<div class="pc_w">
									<span>冬瓜</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLjytA.jpg"
								alt="">
								<div class="pc_w">
									<span>杏鲍菇</span>
								</div></li>

							<li><img src="https://s2.ax1x.com/2019/09/19/nLjCy8.jpg"
								alt="">
								<div class="pc_w">
									<span>黄秋葵</span>
								</div></li>
						</ul>

					</div>

					<div class="index_th_p2">
						<ul class="pic_itme">
							<li><img src="https://s2.ax1x.com/2019/09/19/nLj40g.jpg"
								alt="玉米">
								<div class="pc_w">
									<span>玉米</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLjulV.jpg"
								alt="毛豆">
								<div class="pc_w">
									<span>毛豆</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLXXod.jpg"
								alt="核桃">
								<div class="pc_w">
									<span>核桃</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLjpSP.jpg"
								alt="花生">
								<div class="pc_w">
									<span>花生</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLXgLF.jpg"
								alt="板栗">
								<div class="pc_w">
									<span>板栗</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLX5J1.jpg"
								alt="赤小豆">
								<div class="pc_w">
									<span>赤小豆</span>
								</div></li>
							<li><img src="https://s2.ax1x.com/2019/09/19/nLj21P.jpg"
								alt="薏米">
								<div class="pc_w">
									<span>薏米</span>
								</div></li>

							<li><img src="https://s2.ax1x.com/2019/09/19/nLjgpt.jpg"
								alt="燕麦">
								<div class="pc_w">
									<span>燕麦</span>
								</div></li>
						</ul>


					</div>


				</div>



			</div>
			<div class="index_four_part">
				<div id="myCarousel" class="carousel slide">
					<!-- 轮播（Carousel）指标 -->
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active">最新
							| 最热：</li>
						<li data-target="#myCarousel" data-slide-to="1">一小时</li>
						<li data-target="#myCarousel" data-slide-to="2">今日</li>
						<li data-target="#myCarousel" data-slide-to="3">七天</li>
						<li data-target=#myCarousel " data-slide-to="4">更多菜谱></li>

					</ol>

					<!-- 轮播（Carousel）项目 -->
					<div class="carousel-inner">

						<div class="item active">

							<div class="out1">
								<h3 class="four_title">最新菜谱</h3>
								<ul class="item1">

									<c:forEach items="${applicationScope.list}" var="info">
									 
									   
									   	<li>
									   	   <c:if test="${not empty user.userName}">
									   	   <a class="clickon" href="ShowMenuServlet?title=${info.title}&finalImg=${info.achieveImage}&publishName=${info.publishName}&userName=${user.userName}&userImg=${user.userPhoto}">
										   </c:if>
										   
										    <c:if test="${empty user.userName}">
									   	   <a class="clickon" href="ShowMenuServlet?title=${info.title}&finalImg=${info.achieveImage}&publishName=${info.publishName}&userName=游客&userImg=https://s2.ax1x.com/2019/12/11/QrwjQU.png">
										   </c:if>
										   
										<div class="background1">
												<img src="${info.achieveImage}" alt="" style="width:232px;height:232px" >
												<div class="i_w">
													<div class="i">
														<div class="pic_describe">
															<p>${info.title}</p>
															<p>0评论，0人气</p>
															<p>${info.publishName}</p>
														</div>
														<div class="cookie_describe">
															<ul>
																<li class="li1">${info.attributeTime}</li>
																<li class="li2">${info.attributeCraft}/${info.attributeFlavor}</li>
															</ul>
														</div>
													</div>
												</div>
											</div>
													   </a>
										</li>
									   
									   
							
									
									</c:forEach>

								</ul>


							</div>
						
							<!--<img src="image/01.jpg" alt="First slide">-->
							<!--<div class="carousel-caption"></div>-->
						</div>
						<div class="item">

							<div class="out1">
								<h3 class="four_title">每小时最热菜谱</h3>
								<ul class="item1">
									<li>
										<div class="background1">
											<img src="https://s2.ax1x.com/2019/09/19/nLXoz6.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>

									</li>
									<li>
										<div class="background1">
											<img src="https://s2.ax1x.com/2019/09/19/nLXHsO.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>

									</li>
									<li>
										<div class="background1">
											<img src="https://s2.ax1x.com/2019/09/19/nLjskd.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="https://s2.ax1x.com/2019/09/19/nLjAoj.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="https://s2.ax1x.com/2019/09/19/nLjKyT.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="https://s2.ax1x.com/2019/09/19/nLjeWq.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="https://s2.ax1x.com/2019/09/19/nLjhnS.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>


									</li>
									<li>
										<div class="background1">
											<img src="https://s2.ax1x.com/2019/09/19/nONOFf.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>

									</li>
								</ul>


							</div>


						</div>


						<div class="item">


							<div class="out1">
								<h3 class="four_title">今日最受欢迎菜谱</h3>
								<ul class="item1">
									<li>
										<div class="background1">
											<img src="image/兔子.jpg" alt="">

											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>

									</li>
									<li>
										<div class="background1">
											<img src="image/番薯.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>

									</li>
									<li>
										<div class="background1">
											<img src="image/冰糖葫芦.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="image/薏米汤.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="image/蛋糕.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="image/芝麻豆腐.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="image/红糖.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>


									</li>
									<li>
										<div class="background1">
											<img src="image/馒头片.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>

									</li>
								</ul>


							</div>


						</div>


						<div class="item">
							<div class="out1">
								<h3 class="four_title">最新菜谱</h3>
								<ul class="item1">
									<li>
										<div class="background1">
											<img src="image/兔子.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>

									</li>
									<li>
										<div class="background1">
											<img src="image/番薯.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>

									</li>
									<li>
										<div class="background1">
											<img src="image/冰糖葫芦.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="image/薏米汤.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="image/蛋糕.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="image/芝麻豆腐.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="image/红糖.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>


									</li>
									<li>
										<div class="background1">
											<img src="image/馒头片.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>

									</li>
								</ul>


							</div>


						</div>

						<div class="item">
							<div class="out1">
								<h3 class="four_title">最新菜谱</h3>
								<ul class="item1">
									<li>
										<div class="background1">
											<img src="image/兔子.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>

									</li>
									<li>
										<div class="background1">
											<img src="image/番薯.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>

									</li>
									<li>
										<div class="background1">
											<img src="image/冰糖葫芦.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="image/薏米汤.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="image/蛋糕.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="image/芝麻豆腐.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>
									</li>
									<li>
										<div class="background1">
											<img src="image/红糖.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>


									</li>
									<li>
										<div class="background1">
											<img src="image/馒头片.jpg" alt="">
											<div class="i_w">
												<div class="i">
													<div class="pic_describe">
														<p>番薯</p>
														<p>1评论，0人气</p>
														<p>樱桃小丸子</p>
													</div>
													<div class="cookie_describe">
														<ul>
															<li class="li1">19步/大概50分钟</li>
															<li class="li2">烤/甜味</li>
														</ul>
													</div>
												</div>

											</div>
										</div>

									</li>
								</ul>


							</div>


						</div>
					</div>
					<!-- 轮播（Carousel）导航 -->
					<a id="left carousel-control" id="left carousel-control"
						href="#myCarousel" role="button" data-slide="prev"> <span
						class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
						<span class="sr-only">Previous</span>
					</a> <a id="right carousel-control" id="right carousel-control"
						href="#myCarousel" role="button" data-slide="next"> <span
						class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
						<span class="sr-only">Next</span>
					</a>
				</div>

			</div>
			<div class="five_part">
				<h3 class="third_title">
					健康新闻 <span class="more_food"> 更多健康资讯 > </span>
				</h3>
				<div class="news">

					<div class="news_item m0">

						<div class="news_tag">
							<a href="">食品安全</a> <em class="arrow"> </em>
						</div>
						<div class="news_img pic0">
							<img class="news_img img1"
								src="https://s2.ax1x.com/2019/09/19/nLXdaj.jpg"> <img
								class="news_img img2"
								src="https://s2.ax1x.com/2019/10/11/ubGKvF.jpg" alt=""> <img
								class="news_img img3"
								src="https://s2.ax1x.com/2019/10/11/ubDFAS.jpg" alt="懒人早餐">
						</div>
						<div class="news_word">
							<ul class="b_heathitem b0">
								<li class="active_news ac0"><span class="news_title">新晋网红美食，爱上吹牛的蛙</span>
								</li>
								<li><span class="news_title">骨密度吃什么好?5种食物+氨糖软</span></li>
								<li><span class="news_title">儿童吃什么补充维生素C?</span></li>
							</ul>
						</div>

					</div>
					<div class="news_item m1">
						<div class="news_tag">
							<a href="">食品安全</a> <em class="arrow"> </em>
						</div>
						<div class="news_img pic1">
							<img class="news_img img1"
								src="https://s2.ax1x.com/2019/10/12/uXYm7D.jpg"> <img
								class="news_img img2"
								src="https://s2.ax1x.com/2019/10/12/uXNAeK.jpg" alt=""> <img
								class="news_img img3"
								src="https://s2.ax1x.com/2019/10/12/uXturV.jpg" alt="腊八粥">
						</div>
						<div class="news_word">
							<ul class="b_heathitem b1">
								<li class="active_news ac1"><span class="news_title">南方春节食物的寓意</span>
								</li>
								<li><span class="news_title">巅峰对决，第二届中国甜品锦标赛决</span></li>
								<li><span class="news_title">腊八除了吃腊八粥还吃什么？</span></li>
							</ul>
						</div>
					</div>
					<div class="news_item m2">
						<div class="news_tag">
							<a href="">食品安全</a> <em class="arrow"> </em>
						</div>
						<div class="news_img pic2">
							<img class="news_img img1"
								src="https://s2.ax1x.com/2019/10/12/uXNFL6.jpg" alt="白酒">
							<img class="news_img img2"
								src="https://s2.ax1x.com/2019/10/12/uXNPQ1.jpg" alt="咖啡">
							<img class="news_img img3"
								src="https://s2.ax1x.com/2019/10/12/uXNisx.jpg" alt="绿茶">
						</div>
						<div class="news_word">
							<ul class="b_heathitem b2">
								<li class="active_news ac2"><span class="news_title">奢侈消费酱香型白酒就是好酒？！</span>
								</li>
								<li><span class="news_title">“啡”同寻常 | 贝纳颂咖啡飘香奇</span></li>
								<li><span class="news_title">康师傅绿茶布局多元化营销 直指年</span></li>
							</ul>
						</div>
					</div>

					<div class="news_item m3">
						<div class="news_tag">
							<a href="">食品安全</a> <em class="arrow"> </em>
						</div>
						<div class="news_img pic3">
							<img class="news_img img1"
								src="https://s2.ax1x.com/2019/10/12/uXUIvn.jpg" alt="蛋白粉">
							<img class="news_img img2"
								src="https://s2.ax1x.com/2019/10/12/uXU7D0.jpg" alt="无主之城">
							<img class="news_img img3"
								src="https://s2.ax1x.com/2019/10/12/uXUTuq.jpg" alt="营养">
						</div>
						<div class="news_word">
							<ul class="b_heathitem b3">
								<li class="active_news ac3"><span class="news_title">缺少蛋白质该吃什么？了解下蛋白粉</span>
								</li>
								<li><span class="news_title">丽江印象斑鱼府携手爱奇艺《无主之城》</span></li>
								<li><span class="news_title">管氏餐饮品牌战略发布会暨十三周年</span></li>
							</ul>
						</div>
					</div>
				</div>


			</div>
		</div>

	</div>

	</div>

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


<c:if test="${not empty user.userName}">
	<script>
		$(document).ready(function() {
			$("#login_change").hide();
			$("#login_changed").show();
		})
	</script>
</c:if>
<script>

   
</script>
<script type="text/javascript">
	
</script>
<script src="js/common_tail_head.js"></script>
<script type="text/javascript" src="js/msj_index.js"></script>

</html>