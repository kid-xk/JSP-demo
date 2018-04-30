package util;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Properties;

public class DBHelper {

	private String dirver = null;
	private String url = null;
	private String user = null;
	private String password = null;

	/**
	 * ��ʼ����Ϣ
	 */
	public void init() {
		Properties p = new Properties();
		InputStream is = getClass().getClassLoader().getResourceAsStream("jdbc.properties");
		try {
			p.load(is);
		} catch (IOException e) {
			e.printStackTrace();
		}
		this.dirver = p.getProperty("driver");
		this.url = p.getProperty("url");
		this.user = p.getProperty("user");
		this.password = p.getProperty("password");
	}

	/**
	 * ��ȡ���ݿ�����
	 * 
	 * @return
	 */
	public Connection getConn() {
		init();
		Connection conn = null;
		try {
			Class.forName(dirver);
			conn = DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return conn;
	}

	/**
	 * �ύ��ӡ�ɾ�����޸ĵķ���
	 * 
	 * @param conn
	 *            ���ӳ�
	 * @param sql
	 *            sql���
	 * @param values
	 *            ������
	 * @return
	 */
	public int executeUpdate(Connection conn, String sql, Object... values) {
		PreparedStatement ps = null;
		int num = -1;
		try {
			ps = conn.prepareStatement(sql);
			for (int i = 0; i < values.length; i++) {
				ps.setObject((i + 1), values[i]);
			}
			num = ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return num;
	}

	/**
	 * �ύ��ѯ�ķ���
	 * 
	 * @param conn
	 *            ���ӳ�
	 * @param sql
	 *            sql���
	 * @param values
	 *            ������
	 * @return
	 */
	public List<Map<Integer, Object>> executeQuery(Connection conn, String sql, Object... values) {
		List<Map<Integer, Object>> list = new ArrayList<Map<Integer, Object>>();
		Map<Integer, Object> map = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		ResultSetMetaData rsmd = null;
		try {
			ps = conn.prepareStatement(sql);
			for (int i = 0; i < values.length; i++) {
				ps.setObject((i + 1), values[i]);
			}
			rs = ps.executeQuery();
			rsmd = rs.getMetaData();
			while (rs.next()) {
				map = new HashMap<Integer, Object>();
				for (int i = 1; i <= rsmd.getColumnCount(); i++) {
					map.put(i, rs.getObject(i));
				}
				list.add(map);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * �ر�����
	 * 
	 * @param rs
	 * @param ps
	 * @param conn
	 */
	public void close(Connection conn) {
		try {
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
