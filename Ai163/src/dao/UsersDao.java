package dao;

import util.DBHelper;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import bean.News;
import bean.Users;



public class UsersDao extends DBHelper{
	
	////�û���֤(ֻ��Ҫ��֤�˻������뼴��)
	public Users login(String uaccount, String upassword) {
		DBHelper dbHelper = new DBHelper();
		Connection conn = dbHelper.getConn();
		String sql = "select * from users where uaccount = ? and upassword = ?";
		Users users = null;
		List<Map<Integer, Object>> listForMap = new ArrayList<Map<Integer, Object>>();
		listForMap = dbHelper.executeQuery(conn, sql, uaccount, upassword);
		for (Map<Integer, Object> map : listForMap) {
			users = new Users();
			users.setId(Integer.parseInt(map.get(1).toString()));
			users.setUaccount(map.get(2).toString());
			users.setUpassword(map.get(3).toString());
		}
		dbHelper.close(conn);
		return users;
	}
	
	//ע���û� 
	public int addUsers(Users users) throws UnsupportedEncodingException {
		Connection conn = super.getConn();
		String sql = "insert into users(uaccount,upassword,uname,utel,uemail) values(?,?,?,?,?);";
		int i = -1;
		i = super.executeUpdate(conn, sql, users.getUaccount(), users.getUpassword(),
				users.getUname().getBytes("utf-8"), users.getUtel(), users.getUemail());
		super.close(conn);
		return i;
	}		


//�����û�
public List<Users> getAllUsers() {
	Connection conn = super.getConn();
	String sql = "select * from Users;";
	List<Map<Integer, Object>> list = new ArrayList<Map<Integer, Object>>();
	List<Users> listUsers = new ArrayList<Users>();
	list = super.executeQuery(conn, sql);
	for (Map<Integer, Object> map : list) {
		Users users = new Users();
		users.setId(Integer.parseInt(map.get(1).toString()));
		users.setUaccount(map.get(2).toString());
		users.setUpassword(map.get(3).toString());
		users.setUname(map.get(4).toString());
		users.setUtel(map.get(5).toString());
		users.setUemail(map.get(6).toString());
		
		listUsers.add(users);
	}
	super.close(conn);
	return listUsers;
	}
}