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
		// ��������ҳ����ת�г�������
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		/*
		 * �ļ��ϴ�
		 */
		Part part = request.getPart("imgs");
		String fileName = part.getSubmittedFileName();
		String path = getServletContext().getRealPath("/") + "//article_img//" + fileName;// �����ϴ�·��
		part.write(path);// ����ļ����ƣ�ʵ���ļ��ϴ�����

		// ����jsp��ת��ֵ��input��
		String id = request.getParameter("id");
		String type = request.getParameter("type");
		String tittle = request.getParameter("tittle");
		String top = request.getParameter("top");
		String center = request.getParameter("center");
		String foot = request.getParameter("foot");
		String date = request.getParameter("date");
		String author = request.getParameter("author");

		// ������װ�䵽newsʵ��
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

		// �ύnewsʵ�������ݿ�
		NewsDao newsDao = new NewsDao();
		PrintWriter out = response.getWriter();
		if (newsDao.updNews(news) > 0) {
			request.getRequestDispatcher("listNews.jsp").forward(request, response);
		} else {
			out.print("<h1 style='color:red;'>�޸�ʧ��</h1>");
		}
	}	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
	
}
