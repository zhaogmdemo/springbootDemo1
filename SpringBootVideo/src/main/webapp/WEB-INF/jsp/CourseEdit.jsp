<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0047)http://localhost:8080/Voids/Course/addCourse.do -->
<html><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
    pageContext.setAttribute("path", request.getContextPath());
%> 

<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!--<base href="http://localhost:8080/Voids/">--><base href=".">
<!-- ä¸è¿°3ä¸ªmetaæ ç­¾*å¿é¡»*æ¾å¨æåé¢ï¼ä»»ä½å¶ä»åå®¹é½*å¿é¡»*è·éå¶åï¼ -->
<title>智游教育</title>

<link href="./js/bootstrap.css" rel="stylesheet">

<style type="text/css">
.col-md-1 {
	padding-top: 20px;
}

.a1 {
	color: gray;
}

b {
	float: right;
}
</style>



</head>

<body>

	




<nav class="navbar-inverse">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<a class="navbar-brand">视频管理系统</a>
		</div>

		<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-9">
			<ul class="nav navbar-nav">
				<li><a>视频管理</a></li>
				<li><a>主讲人管理</a></li>
				<li class="active"><a>课程管理</a></li>
			</ul>
			<p class="navbar-text navbar-right">
				<span>admin</span> <i class="glyphicon glyphicon-log-in" aria-hidden="true"></i>&nbsp;&nbsp;<a class="navbar-link">退出</a>
			</p>
		</div>
		<!-- /.navbar-collapse -->


	</div>
	<!-- /.container-fluid -->
</nav>



	<div class="jumbotron" style="padding-top: 15px;padding-bottom: 15px;">
		<div class="container">

			
			
				<h2>修改课程</h2>
			
		</div>
	</div>



	<div class="container" style="margin-top: 20px;">

		<form id="infoForm" action="updateCourse.do" class="form-horizontal" method="post">

		<!-- 	<input name="id" value="6" type="hidden"> -->
			
			<div class="form-group">
			    <label for="subjectId" class="col-sm-2 control-label">所属学科</label>
			    <div class="col-sm-10">
									
					<select name="subject_id" id="subjectId" class="form-control">
						<option value="${Course.subjectId}">${Subject.subjectName}</option>
							
							
							
							<%-- <option value="${Course.subject_id}">WEB前端</option> --%>
							
			
							
					</select>

			    </div>
			  </div>
			
			
			
			<div class="form-group">
				<label for="subjectTitle" class="col-sm-2 control-label">标题</label>
				<div class="col-sm-10">
					 <input type="hidden" name="id" value="${Course.id}" />
					<input class="form-control" name="course_title" id="subjectTitle" value="${Course.courseTitle}" placeholder="课程标题" type="text">
				</div>
			</div>
			<div class="form-group">
				<label for="courseDesc" class="col-sm-2 control-label">简介</label>
				<div class="col-sm-10">
					<textarea class="form-control" id="courseDesc" name="course_desc" rows="3">${Course.courseDesc}</textarea>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">保存</button>
				</div>
			</div>
		</form>	<form id="infoForm1" action="AdminLogin1.do" class="form-horizontal"  method="post" >
		<div class="form-group" >
		<div class="col-sm-offset-2 col-sm-10">
				
			<button onclick="back()" class="btn btn-default">返回</button>
			</div>
		</div></div></form>	

	
<!--[if lt IE 9]>
<script src="https://cdn.bootcss.com/html5shiv/3.7.3/html5shiv.min.js"></script>
<script src="https://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
<script src="./课程修改_files/jquery-1.js.下载"></script>
<script src="./课程修改_files/bootstrap.js.下载"></script>
<script src="./课程修改_files/confirm.js.下载"></script>
<script src="./课程修改_files/jquery.js.下载"></script>
<script src="./课程修改_files/message_cn.js.下载"></script>
<script src="./JS1/jquery-3.4.1.js"></script>
<script src="./JS1/jquery.validate.min.js"></script>


<script type="text/javascript">

$().ready(function(){
	$("#infoForm").validate({
		
		
		rules:{
			subject_id:{
				required:true,
				
				
			},
			course_title:{
				required:true,
			

			},
			course_desc:{
				required:true,
			
				

			}
			
		
		
			
		},
		messages:{
			subject_id:{
				required:"请选择所选学科",
				
	
			},
			course_title:{
				required:"请输入课程标题",
			


			},

			
			course_desc:{
				required:"请输入描述",
				
			}
		}
	});
})</script>




<div id="modal-background" class=""></div><div id="confirm-modal" class="modal fade role=" dialog"="" tabindex="-1"><div class="modal-dialog modal-undefined"><div class="modal-content"><div class="modal-header"><button id="modal-upper-close" class="close modal-close" aria-label="Close" type="button"><span aria-hidden="true">×</span></button><h4 id="modal-title" class="modal-title">Modal Title</h4></div><div id="modal-body" class="modal-body"> Modal Message </div><div id="modal-footer" class="modal-footer"></div></div></div></div><div id="modal-background" class=""></div></body></html>