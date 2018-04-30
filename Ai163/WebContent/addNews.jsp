<%@page import="bean.Admin"%>
<%@page import="dao.AdminDao"%>
<%@page import="dao.NewsDao"%>
<%@page import="bean.News"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 防止盗链，必修登录才能操作  -->
<%
	Admin admin = null;
	admin = (Admin) session.getAttribute("admin");
	if (admin != null) {
%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>管理员增加新闻界面</title>
<style>
	body{
		font-family:"微软雅黑";
		font-size:16px;
		background-color: #f9f9f9;
	}

	.btn1{
		width:100px;
		height:75px; 
		font-size:18px;
	}
	#all{
		width:980px;
		height:100%;
		margin:0 auto;
	}
	#all td input,textarea{
		font-size:18px;
	}
	#btn2{
		display:block;
		width:100px;
		height:50px;
		font-size:16px;
		font-family:"微软雅黑";
		margin:10px auto;
	}
</style>
</head>
<body>
<div id="all">
	<h2 align="center">新闻添加操作</h2>
	<form action="AddNewsUpload" method="post" enctype="multipart/form-data">
		<table border="1" cellspacing="0">
			<tr>
				<td>分类</td>
				<td><input style="width:200px;height:25px;" type="text" name="type" /></td>
			</tr>
			<tr>
				<td>标题</td>
				<td><textarea cols="100" rows="3" name="tittle" ></textarea></td>
			</tr>
			<tr>
				<td>首段</td>
				<td><textarea cols="100" rows="5" name="top" ></textarea></td>
			</tr>
			<tr>
				<td>主要内容</td>
				<td><textarea cols="100" rows="8" name="center" ></textarea></td>
			</tr>
			<tr>
				<td>结尾</td>
				<td><textarea cols="100" rows="5" name="foot" ></textarea></td>
			</tr>
			<tr>
				<td>新闻发布时间</td>
				<td><input style="width:200px;height:60px;" type="DATE" name="date" /></td>
			</tr>
			<tr>
				<td>图片</td>
				<td><input style="width:200px;height:25px;" type="file" name="imgs" /></td>
			</tr>
			
			<tr>
				<td>作者</td>
				<td><input style="width:200px;height:25px;" type="text" name="author" /></td>
			</tr>
			<tr>
				<td colspan="2">
					<button class="btn1" type="submit">添加内容</button>
					<button class="btn1" type="reset">重置</button>
				</td>
			</tr>
		</table>
	</form>
	
	<form action="listNews.jsp">
		<button id="btn2" type="submit">查看所有</button>
	
	</form>
	</div>
</body>
</html>
<%
	} else {
		response.sendRedirect("index.jsp");
	}
%>