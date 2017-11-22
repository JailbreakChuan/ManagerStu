<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
   String path = request.getContextPath();
   String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html>
	<head>
		<!-- Page title -->
		<title>学生成绩管理系统</title>
		<!-- End of Page title -->
		<!-- Libraries -->
		<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>

		<!-- End of Libraries -->
	</head>
	<body>
	<div id="container">
		<div class="logo">
			<a href="#"><img src="assets/logo.png" alt="" /></a>
		</div>
		<div id="box">
			<form action="/LoginServlet" method="post">
			<p class="main">
				<label>用户名: </label>
				<input name="username" value="" /> 
				<label>密码: </label>
				<input type="password" name="password" value="">	
			</p>
			<p class="space">
				<input type="submit" value="登录" class="login" style="cursor: pointer;"/>
				<input type="reset" value="重置">
			</p>

			</form>
		</div>
	</div>
	</body>
</html>