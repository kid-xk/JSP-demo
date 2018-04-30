<%@page import="bean.News"%>
<%@page import="bean.Admin"%>
<%@page import="java.util.List"%>
<%@page import="dao.NewsDao"%>
<%@page import="dao.AdminDao"%>
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
<meta charset="UTF-8" />
<title>管理员操作界面</title>
<style type="text/css">
body {
	font-family: "微软雅黑";
	background-color: #f9f9f9;
	text-align: center;
}

#all {
	width: 1450px;
	height: 100%;
	margin: 0 auto;
}

.td1 {
	width: 20px;
	font-size: 15px;
}

.td2 {
	width: 30px;
	font-size: 15px;
}

.td3 {
	width: 150px;
	font-size: 17px;
}

.td4 {
	width: 200px;
	font-size: 15px;
}

.td5 {
	width: 400px;
	font-size: 15px;
}

.td6 {
	width: 100px;
	font-size: 15px;
}

.t7 {
	width: 50px;
	font-size: 15px;
}

.t8 {
	width: 150px;
	font-size: 17px;
}
</style>
</head>
<body>
	<h2>新闻列表</h2>
	<div id="all">
		<table border="1" cellspacing="0">
			<tr>
				<td class="td1">ID</td>
				<td class="td2">分类</td>
				<td class="td3">标题</td>
				<td class="td4">首段</td>
				<td class="td5">主要内容</td>
				<td class="td4">结尾</td>
				<td class="td6">新闻发布时间</td>
				<td class="td6">图片路径</td>
				<td class="td7">作者</td>
				<td class="td8">操作</td>
			</tr>
			<%
					request.setCharacterEncoding("utf-8");
					response.setCharacterEncoding("utf-8");

					NewsDao newsDao = new NewsDao();

					List<News> list = newsDao.getAllNews();
					for (News s : list) {
			%>
			<tr>
				<td class="td1"><%=s.getId()%></td>
				<td class="td2"><%=s.getType()%></td>
				<td class="td3"><a href="article.jsp?id=<%=s.getId()%>"><%=s.getTittle()%></a></td>
				<td class="td4"><%=s.getTop()%></td>
				<td class="td5"><%=s.getCenter()%></td>
				<td class="td4"><%=s.getFoot()%></td>
				<td class="td6"><%=s.getDate()%></td>
				<td class="td6"><%=s.getNimg()%></td>
				<td class="td7"><%=s.getAuthor()%></td>

				<td><a href="updNews.jsp?id=<%=s.getId()%>">修改 </a><br /> <br />
					<a href="delNews.jsp?id=<%=s.getId()%>">删除</a><br /> <br /> <a
					href="addNews.jsp?id=<%=s.getId()%>">增加 </a></td>
			</tr>
			<%
				}
			%>
		</table>

	</div>
</body>
</html>
<%
	} else {
		response.sendRedirect("index.jsp");
	}
%>