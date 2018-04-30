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
<title>注册成功转跳</title>
</head>
<body>
	<% 
		//处理中文页面跳转中出现乱码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		//接收jsp跳转传值（input）
		String uaccount = request.getParameter("uaccount");
		String upassword = request.getParameter("upassword");
		String uname = request.getParameter("uname");
		String utel = request.getParameter("utel");
		String uemail = request.getParameter("uemail");
		
		//将数据装箱到users实例
		Users users=new Users();
		users.setUaccount(uaccount);
		users.setUpassword(upassword);
		users.setUname(uname);
		users.setUtel(utel);
		users.setUemail(uemail);
		
		//提交users实例到数据库
		UsersDao usersDao=new UsersDao();
		if (usersDao.addUsers(users)>0) {
			session.setAttribute("users", users);
			request.getRequestDispatcher("index.jsp").forward(request, response);
		}else{
			out.print("<h1 style='color:red;'>注册失败</h1>");
		}
	%>
</body>
</html>