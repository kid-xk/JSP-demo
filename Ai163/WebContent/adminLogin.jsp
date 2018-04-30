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
<title>管理员验证</title>
</head>
<body>
	<!-- 防止盗链，必修登录才能操作  -->
	<%
		
		String account = request.getParameter("account");
		String passwords = request.getParameter("passwords");

		AdminDao adminDao = new AdminDao();
		Admin admin = null;
		admin = adminDao.login(account, passwords);

		if (admin != null) {
			session.setAttribute("admin", admin);
			request.getRequestDispatcher("listNews.jsp").forward(request, response);//页面转发
		} else {
			response.sendRedirect("index.jsp");	//页面重定向
		}
	%>

</body>
</html>