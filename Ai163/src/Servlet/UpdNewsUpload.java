package Servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import bean.News;
import dao.NewsDao;

@WebServlet("/UpdNewsUpload")
@MultipartConfig
public class UpdNewsUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 处理中文页面跳转中出现乱码
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		/*
		 * 文件上传
		 */
		Part part = request.getPart("imgs");
		String fileName = part.getSubmittedFileName();
		String path = getServletContext().getRealPath("/") + "//article_img//" + fileName;// 构建上传路径
		part.write(path);// 完成文件复制，实现文件上传功能

		// 接收jsp跳转传值（input）
		String id = request.getParameter("id");
		String type = request.getParameter("type");
		String tittle = request.getParameter("tittle");
		String top = request.getParameter("top");
		String center = request.getParameter("center");
		String foot = request.getParameter("foot");
		String date = request.getParameter("date");
		String author = request.getParameter("author");

		// 将数据装箱到news实例
		News news = new News();
		news.setId(Integer.parseInt(id));
		news.setType(type);
		news.setTittle(tittle);
		news.setTop(top);
		news.setCenter(center);
		news.setFoot(foot);
		news.setDate(date);
		news.setNimg("article_img//" + fileName);
		news.setAuthor(author);

		// 提交news实例到数据库
		NewsDao newsDao = new NewsDao();
		PrintWriter out = response.getWriter();
		if (newsDao.updNews(news) > 0) {
			request.getRequestDispatcher("listNews.jsp").forward(request, response);
		} else {
			out.print("<h1 style='color:red;'>修改失败</h1>");
		}
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
}
