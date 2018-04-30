package dao;

import util.DBHelper;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import bean.Admin;


//管理员验证
public class AdminDao {
		public Admin login(String account, String passwords) {
			DBHelper dbHelper = new DBHelper();
			Connection conn = dbHelper.getConn();
			String sql = "select * from admin where account = ? and passwords = ?";
			Admin admin = null;
			List<Map<Integer, Object>> listForMap = new ArrayList<Map<Integer, Object>>();
			listForMap = dbHelper.executeQuery(conn, sql, account, passwords);
			for (Map<Integer, Object> map : listForMap) {
				admin = new Admin();
				admin.setId(Integer.parseInt(map.get(1).toString()));
				admin.setAccount(map.get(2).toString());
				admin.setPasswords(map.get(3).toString());
			}
			dbHelper.close(conn);
			return admin;
		}
	}

