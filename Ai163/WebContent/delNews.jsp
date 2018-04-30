<%@page import="dao.NewsDao"%>
<%@page import="bean.News"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>删除新闻</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	response.setCharacterEncoding("utf-8");
	
		String id = request.getParameter("id");

		NewsDao newsDao = new NewsDao();
		if (newsDao.delNews(Integer.parseInt(id)) > 0) {
			request.getRequestDispatcher("listNews.jsp").forward(request, response);
		} else {
			out.print("<h1 style='color:red;'>删除失败</h1>");
		}
	%>
</body>
</html>