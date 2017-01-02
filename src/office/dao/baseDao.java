package office.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import office.util.ConfigManager;

public class baseDao {
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement ps;

	public boolean getConnection() {
		try {
			System.out.println(ConfigManager.instance().getVal("jdbc.class"));
			Class.forName(ConfigManager.instance().getVal("jdbc.class"));
			conn = DriverManager.getConnection(ConfigManager.instance().getVal("jdbc.conn.url"),
					ConfigManager.instance().getVal("jdbc.conn.username"),
					ConfigManager.instance().getVal("jdbc.conn.password"));
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return false;
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
		return true;
	}

	public ResultSet executeQuery(String sql, Object[] params) {
		if (getConnection()) {
			try {
				ps = conn.prepareStatement(sql);
				int i = 0;
				for (Object o : params) {
					ps.setObject(++i, o);
				}
				rs = ps.executeQuery();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return rs;
	}

	public int executeUpdate(String sql, Object[] params) {
		int updateRow = 0;
		if (getConnection()) {
			try {
				ps = conn.prepareStatement(sql);
				int i = 0;
				for (Object o : params) {
					ps.setObject(++i, o);
				}
				updateRow = ps.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return updateRow;

	}

	public boolean closeResouce() {
		if (ps != null) {
			try {
				ps.close();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
		}
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
		}
		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
				return false;
			}
		}
		return true;

	}

}
