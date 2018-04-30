<%@page import="bean.Users"%>
<%@page import="dao.UsersDao"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"/>
<title>用户验证</title>
</head>
<body>
	<%
		
		String uaccount = request.getParameter("uaccount");
		String upassword = request.getParameter("upassword");

		UsersDao usersDao = new UsersDao();
		Users users = null;
		users = usersDao.login(uaccount,upassword);

		if (users != null) {
			session.setAttribute("users", users);
			request.getRequestDispatcher("main.jsp").forward(request, response);//页面转发
		} else {
			response.sendRedirect("index.jsp");					//页面重定向
		}
	%>
</body>
</html>