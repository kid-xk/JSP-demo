package dao;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import bean.News;
import util.DBHelper;

public class NewsDao extends DBHelper {

	//增加新闻
	public int addNews(News news) throws UnsupportedEncodingException {
		Connection conn = super.getConn();
		String sql = "insert into News(Type,Tittle,Top,Center,Foot,Date,Nimg,Author) values(?,?,?,?,?,?,?,?);";
		int i = -1;
		i = super.executeUpdate(conn, sql, news.getType().getBytes("utf-8"), news.getTittle().getBytes("utf-8"),
				news.getTop().getBytes("utf-8"), news.getCenter().getBytes("utf-8"), news.getFoot().getBytes("utf-8"), news.getDate(), news.getNimg(),news.getAuthor().getBytes("utf-8"));
		super.close(conn);
		return i;
	}

	//查看所有
	public List<News> getAllNews() {
		Connection conn = super.getConn();
		String sql = "select * from News;";
		List<Map<Integer, Object>> list = new ArrayList<Map<Integer, Object>>();
		List<News> listNews = new ArrayList<News>();
		list = super.executeQuery(conn, sql);
		for (Map<Integer, Object> map : list) {
			News news = new News();
			news.setId(Integer.parseInt(map.get(1).toString()));
			news.setType(map.get(2).toString());
			news.setTittle(map.get(3).toString());
			news.setTop(map.get(4).toString());
			news.setCenter(map.get(5).toString());
			news.setFoot(map.get(6).toString());
			news.setDate(map.get(7).toString());
			news.setNimg(map.get(8).toString());
			news.setAuthor(map.get(9).toString());
			listNews.add(news);
		}
		super.close(conn);
		return listNews;
	}

	//删除新闻
	public int delNews(int id) throws UnsupportedEncodingException {
		Connection conn = super.getConn();
		String sql = "delete from News where id = ?;";
		int i = -1;
		i = super.executeUpdate(conn, sql, id);
		super.close(conn);
		return i;
	}

	//修改新闻
	public int updNews(News news) throws UnsupportedEncodingException {
		Connection conn = super.getConn();
		String sql = "update news set type=?,tittle=?, top=?, center=?, foot=?,date=?,nimg=?,author=? where id = ?;";
		int i = -1;
		i = super.executeUpdate(conn, sql, news.getType().getBytes("utf-8"), news.getTittle().getBytes("utf-8"),
				news.getTop().getBytes("utf-8"), news.getCenter().getBytes("utf-8"), news.getFoot().getBytes("utf-8"), news.getDate(), news.getNimg(),news.getAuthor().getBytes("utf-8"),news.getId());
		super.close(conn);
		return i;
	}

	//查询
	public News getNewsById(int id) {
		Connection conn = super.getConn();
		String sql = "select * from news where id = ?;";
		List<Map<Integer, Object>> list = new ArrayList<Map<Integer, Object>>();
		list = super.executeQuery(conn, sql, id);
		News news = null;
		for (Map<Integer, Object> map : list) {
			news = new News();
			news.setId(Integer.parseInt(map.get(1).toString()));
			news.setType(map.get(2).toString());
			news.setTittle(map.get(3).toString());
			news.setTop(map.get(4).toString());
			news.setCenter(map.get(5).toString());
			news.setFoot(map.get(6).toString());
			news.setDate(map.get(7).toString());
			news.setNimg(map.get(8).toString());
			news.setAuthor(map.get(9).toString());
		}
		super.close(conn);
		return news;
	}
}
