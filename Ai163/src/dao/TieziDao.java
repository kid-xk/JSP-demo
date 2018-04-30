
package dao;

import util.DBHelper;

import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import bean.Tiezi;


	public class TieziDao extends DBHelper{

		public int addtiezi(Tiezi tiezi) throws UnsupportedEncodingException {
			Connection conn = super.getConn();
			String sql = "insert into tiezi(uaccount,upassword,uname,content,date) values(?,?,?,?,?);";
			int i = -1;
			i = super.executeUpdate(conn, sql, tiezi.getUaccount(), tiezi.getUpassword(),tiezi.getUname().getBytes("utf-8"),
					tiezi.getContent().getBytes("utf-8"), tiezi.getDate());
			super.close(conn);
			return i;
		}
			public List<Tiezi> getAlltiezi() {
				Connection conn = super.getConn();
				String sql = "select * from tiezi;";
				List<Map<Integer, Object>> list = new ArrayList<Map<Integer, Object>>();
				List<Tiezi> listtiezi = new ArrayList<Tiezi>();
				list = super.executeQuery(conn, sql);
				for (Map<Integer, Object> map : list) {
					Tiezi tiezi = new Tiezi();
					tiezi.setUid(Integer.parseInt(map.get(1).toString()));
					tiezi.setUaccount(map.get(2).toString());
					tiezi.setUpassword(map.get(3).toString());
					tiezi.setUname(map.get(4).toString());
					tiezi.setContent(map.get(5).toString());
					tiezi.setDate(map.get(6).toString());
			
					listtiezi.add(tiezi);
				}
				super.close(conn);
				return listtiezi;
			}

		}
		
					
