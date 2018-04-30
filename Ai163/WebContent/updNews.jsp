<%@page import="bean.Admin"%>
<%@page import="dao.AdminDao"%>
<%@page import="bean.News"%>
<%@page import="dao.NewsDao"%>
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
<meta charset="UTF-8">
<title>管理员修改新闻</title>
<style>
#all {
	width: 980px;
	height: 100%;
	margin: 0 auto;
}

body {
	font-family: "微软雅黑";
	font-size: 16px;
	background-color: #f9f9f9;
}

.btn1 {
	width: 100px;
	height: 75px;
	font-size: 18px;
}

#all td input, textarea {
	font-size: 18px;
}
</style>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String id = request.getParameter("id");

		NewsDao studentDao = new NewsDao();
		News news = null;
		news = studentDao.getNewsById(Integer.parseInt(id));
		if (news != null) {
	%>
	<h2 align="center">新闻修改</h2>
	<div id="all">
		<form action="UpdNewsUpload" method="post" enctype="multipart/form-data">
			<table border="1" cellspacing="0">
				<input type="hidden" name="id" value="<%=news.getId()%>" />
				<tr>
					<td>类别</td>
					<td><input type="text" name="type" value="<%=news.getType()%>" /></td>
				</tr>
				<tr>
					<td>标题</td>
					<td><textarea cols="100" rows="3" name="tittle"><%=news.getTittle()%></textarea></td>
				</tr>

				<tr>
					<td>首段</td>
					<td><textarea cols="100" rows="5" name="top">
					<%=news.getTop()%></textarea></td>
				</tr>
				<tr>
					<td>主要内容</td>
					<td><textarea cols="100" rows="8" name="center">
					<%=news.getCenter()%></textarea></td>
				</tr>
				<tr>
					<td>结尾</td>
					<td><textarea cols="100" rows="5" name="foot">
					<%=news.getFoot()%></textarea></td>
				</tr>

				<tr>
					<td>日期</td>
					<td><input type="text" name="date" value="<%=news.getDate()%>" /></td>
				</tr>
				<tr>
					<td>图片</td>
					<td><input type="file" name="imgs" />
					</td>
				</tr>

				<tr>
					<td>作者</td>
					<td><input type="text" name="author"
						value="<%=news.getAuthor()%>" /></td>
				</tr>

				<tr>
					<td colspan="2">
						<button class="btn1" type="submit">确认修改</button>
						<button class="btn1" type="reset">重置</button>
					</td>
				</tr>
			</table>
			<%
				}
			%>
		</form>
	</div>
</body>
</html>
<%
	} else {
		response.sendRedirect("index.jsp");
	}
%>