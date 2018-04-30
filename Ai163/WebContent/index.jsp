<%@page import="bean.Admin"%>
<%@page import="dao.AdminDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>登录主界面</title>
<link href="css/index.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div id="admin">
		<h1>管理员登录</h1>
		<form action="adminLogin.jsp" method="post">
			管理员账户:<input class="admin_input" type="text" name="account"/>
			管理员密码:<input class="admin_input" type="password" name="passwords">
			<button class="btn1" type="submit">登录</button>
		</form>
	</div>
	
	
	<div id="users">
		<h1>用户登录</h1>
		<form action="usersLogin.jsp" method="post">
			用户账户:<input class="users_input" type="text" name="uaccount" /><br /> 
			用户密码:<input class="users_input"  type="password" name="upassword"><br />
			<button class="btn2" type="submit">登录</button>
			<p>没有账户？<p/>
			<a  id="a1" href="newUsers.jsp">请点击注册</a>
		</form>

	</div>
</body>
</html>