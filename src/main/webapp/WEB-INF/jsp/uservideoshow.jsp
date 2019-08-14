<%@page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0050)http://localhost:8080/Voids/controller/web.do?id=1 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--<base href="http://localhost:8080/Voids/">-->
<base href=".">


<!-- base href="http://localhost:8080/video/" -->
<meta name="viewport"
	content="initial-scale=1, maximum-scale=1, user-scalable=no">

<meta name="renderer" content="webkit">
<meta name="keywords"
	content="Web前端视频教程,大数据视频教程,HTML5视频教程,UI视频教程,PHP视频教程,java视频教程,python基础教程">
<meta name="description"
	content="智游教育在线课程视频,为您提供java,python,HTML5,UI,PHP,大数据等学科经典视频教程在线浏览学习,精细化知识点解析,深入浅出,想学不会都难,智游教育,学习成就梦想！">

<link rel="stylesheet" href="http://localhost:8080/SpringBootVideo/js/base.css">
<link rel="stylesheet" href="http://localhost:8080/SpringBootVideo/js/css.css">
<link rel="icon" href="http://localhost:8080/video/favicon.png"
	type="image/png">
<title>在线公开课-智游教育|java|大数据|HTML5|python|UI|PHP视频教程</title>
<style type="text/css">
.sss1 {
	width: 1120px;
	height: 210px;

}

.section-main {
	float: left;
	width: 220px;
	height: 208px;
}

.thum {


width: 220px;
	height: 208px;
	background-size: 100% 100%;  
}
.floatclear{
clear: both;
}
</style>
</head>

<body class="w100" style="padding-top: 0px;">
	<header>
	<div class="container">
		<span>欢迎来到IT培训的黄埔军校——智游教育！</span>





		<div id="userBlock" style="float: right">
			<c:if test="${user2s.accounts!=null }">
				<a
					href="${pageContext.request.contextPath}/UserShow.action?accounts=${user2s.accounts}">${user2s.accounts}
				</a>
			</c:if>
			<c:if test="${user2s.accounts==null }">
				<a href="" data-toggle="modal" data-dismiss="modal"
					data-target="#login">登录</a>
			</c:if>
			<a href="" data-toggle="modal" data-dismiss="modal"
				data-target="#reg">注册</a>
		</div>



		<a onclick="JavaScript:addFavorite2()"><img
			src="http://localhost:8080/SpringBootVideo/images/sc.png" draggable="false">加入收藏</a>
		<a target="_blank"><img
			src="http://localhost:8080/SpringBootVideo/images/we.png" draggable="false">后台管理</a>
		<a class="color_e4"><img
			src="http://localhost:8080/SpringBootVideo/images/phone.png" draggable="false">
			0371-88888598 4006-371-555</a>

	</div>
	</header>


	<div id="app">
		<!--banner图-->
		<div class="banner">
			<img alt="" src="http://localhost:8080/SpringBootVideo/images/banner-1.jpg"
				width="100%" height="470px;">
		</div>

		<!--面包屑导航-->
		<div class="container mian-nav" id="navDiv">公开课 / WEB前端</div>

		<c:forEach items="${course2s }" var="i">

			<div class="classify">
				<div class="container" id="dataContainer">
					<div class="section">
						<div class="classifyName">
							<p class="title title-first">${i.courseTitle}</p>
						</div>
						<div class="kcIntro">
							<p class="int">
								<span>课程介绍：</span> ${i.courseDesc}

							</p>

						</div>

						<ul class="sss1">
							<c:forEach items="${video2s}" var="j">
								<c:if test="${i.id==j.courseId }">
									<li class="section-main" onclick="getvideo()">
										<input type=hidden id="videoId" name="videoId" value="${j.videoId}">
										<input type=hidden id="courseId" name="courseId" value="${j.courseId}">
										<div class="thum" style="background-image:url(${j.imageUrl})"></div>
										<p>前端开发环境搭建</p>
										<div class="classify-v-info">
											<span class="count" title="观看次数"><img
												src="http://localhost:8080/SpringBootVideo/images/count.png" alt="">${j.playNum}</span>
											<span class="duration" title="视频时长"><img
												src="http://localhost:8080/SpringBootVideo/images/player.png" alt="">${j.time}</span>
										</div>
									</li>
								</c:if>
							</c:forEach>
						</ul>
<div class="floatclear"></div>
					</div>
				</div>
			</div>

		</c:forEach>


		<!--页脚-->
		<footer>
		<ul>
			<li><img src="http://localhost:8080/SpringBootVideo/images/footer_logo.png"
				alt="" draggable="false"></li>
			<li class="mt25">
				<h3>各校区地址</h3>
				<ul>
					<li>总部地址<br>中国-郑州经济技术开发区河南省通信产业园六层
					</li>
					<li>郑州校区一<br>中国-郑州经济技术开发区第一大街与经北一路
					</li>
					<li>郑州校区二<br>中国-郑州经济技术开发区第四大街经开人才市场七楼
					</li>
					<li>郑州校区三<br>中国-郑州经济技术开发区第八大街河南省留学生创业园九层、十层
					</li>
					<li>西安分校<br>中国-西安莲湖区 联系人：梁老师 13201570801
					</li>
				</ul>
			</li>
			<li class="mt25">
				<h3>联系我们</h3>
				<ul id="foo_icon">
					<li>中国-郑州经济技术开发区经北三路河南通信产业园六层</li>
					<li>e-mail:zy@zhiyou100.com</li>
					<li>电话:4006-371-555 0371-88888598</li>
					<li class="erwei"><br>
						<div>
							<img class="weixin"
								src="http://localhost:8080/SpringBootVideo/images/a_002.png" alt=""
								draggable="false"> <img class="weibo"
								src="http://localhost:8080/SpringBootVideo/images/a.png" alt=""
								draggable="false">
						</div></li>
				</ul>
			</li>
		</ul>
		<div class="record">智游教育 © 豫ICP备17000832号-1 河南智游臻龙教育科技有限公司</div>
		</footer>


		<!--登录注册弹出框-->
		<div class="mask hidden" id="login">
			<div class="mask_content">
				<div class="mask_content_header">
					<img src="./课程展示_files/logo.png" alt="" class="ma">
				</div>
				<div class="mask_content_body">
					<form id="loginForm" action="http://localhost:8080/Voids/#">
						<h3>快速登录</h3>
						<input id="loginEmail" placeholder="请输入邮箱" name="email"
							type="email"> <input id="loginPassword"
							placeholder="请输入密码" name="password" type="password">
						<div id="forget">
							<a
								href="http://localhost:8080/video/front/user/forgetPassword.action">忘记密码？</a>
						</div>
						<input onclick="return commitLogin()" value="登　录" type="submit">
					</form>
				</div>
				<div class="mask_content_footer">
					<span id="login_close">关 闭</span>
				</div>
			</div>
		</div>
		<div class="mask hidden" id="reg">
			<div class="mask_content">
				<div class="mask_content_header">
					<img src="./课程展示_files/logo.png" alt="" class="ma">
				</div>
				<div class="mask_content_body">
					<form id="regForm"
						action="http://localhost:8080/Voids/user/insertUser.action">
						<h3>新用户注册</h3>
						<input id="regEmail" placeholder="请输入邮箱" name="email" type="email"><span
							id="emailMsg"></span> <input id="regPsw" placeholder="请输入密码"
							name="password" type="password"> <input id="regPswAgain"
							placeholder="请再次输入密码" name="psw_again" type="password"><span
							id="paSpringBootVideosg"></span>
						<div id="yzm" class="form-inline">
							<input name="yzm" style="width: 45%; display: inline-block;"
								type="text">
							<div id="v_container"
								style="width: 45%; height: 40px; float: right;">
								<canvas id="verifyCanvas" width="100" height="38"
									style="cursor: pointer;">您的浏览器版本不支持canvas</canvas>
								<canvas id="verifyCanvas" width="100" height="38"
									style="cursor: pointer;">您的浏览器版本不支持canvas</canvas>
							</div>
						</div>
						<input onclick="return commitRegForm();" value="注　册" type="submit">
					</form>
				</div>
				<div class="mask_content_footer">
					<span id="reg_close">关 闭</span>
				</div>
			</div>
		</div>
		<form action="http://localhost:8080/Voids/">
			<input type="text" value="1" id="isLogin">
		</form>


	<script src="http://localhost:8080/SpringBootVideo/js/jquery-3.4.1.js"></script>
		<script src="http://localhost:8080/SpringBootVideo/js/gVerify.js"></script>
		<script src="http://localhost:8080/SpringBootVideo/js/index.js"></script>



	</div>
<script type="text/javascript">
function getvideo(){
	
	
	$.ajax({
		url:"http://localhost:8080/SpringBootVideo/VideoDisplay.action",
		data:{
			video_id:$("#videoId").val(),
			course_id:$("#courseId").val(),
		},
	success:function(data){
		location.href="http://localhost:8080/SpringBootVideo/jsp/videodisplay.jsp";
	}
	})	

	
	
}

</script>
</body>
</html>