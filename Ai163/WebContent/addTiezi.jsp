<%@page import="dao.TieziDao"%>
<%@page import="bean.Tiezi"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>增加帖子</title>
</head>
<body>
	<%
		//处理中文页面跳转中出现乱码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String id = request.getParameter("id"); /* //隐藏参数 */
		//接收jsp跳转传值（input）
	%>
	<input type="hidden" name="id" value="<%=id%>" />
	<%
		String uaccount = request.getParameter("uaccount");
		String upassword = request.getParameter("upassword");
		String uname = request.getParameter("uname");
		String content = request.getParameter("content");
		String date = request.getParameter("date");

		Tiezi tiezi = new Tiezi();

		tiezi.setUaccount(uaccount);
		tiezi.setUpassword(upassword);
		tiezi.setUname(uname);
		tiezi.setContent(content);
		tiezi.setDate(date);

		//提交student实例到数据库
		TieziDao tieziDao = new TieziDao();
		if (tieziDao.addtiezi(tiezi) > 0) {
			request.getRequestDispatcher("article.jsp").forward(request, response);
		} else {
			out.print("<h1 style='color:red;'>添加失败</h1>");
		}
	%>
</body>
</html>