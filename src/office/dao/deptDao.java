package office.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import office.entity.DEPT;
import office.util.Page;

public class deptDao extends baseDao {

	public boolean init(DEPT entity) {
		String sql = "INSERT INTO DEPT VALUES(NULL,?,?,?)";
		Object[] params = { entity.getDEPT_NAME(), entity.getDEPT_FID(), entity.getDEPT_DESCRIPTION() };
		int updateRow = this.executeUpdate(sql, params);
		this.closeResouce();
		return updateRow > 0;
	}

	public int getRowCount() {
		int rowCount = 0;
		String sql = "SELECT COUNT(*) FROM DEPT";
		Object[] params = {};
		ResultSet rs = this.executeQuery(sql, params);
		try {
			while (rs.next()) {
				rowCount = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeResouce();
		}
		return rowCount;
	}

	public List<DEPT> getPageList(int pageIndex, int pageSize) {
		List<DEPT> list = new ArrayList<DEPT>();
		String sql = "select dept_id, dept_name, dept_fid, dept_description from (select d.dept_id,d.dept_name,d.dept_fid,d.dept_description,ROWNUM rn  from dept d) a where a.rn >= ?   and a.rn <= ?";
		Page page = new Page();
		page.setPageIndex(pageIndex);
		page.setPageSize(pageSize);
		Object[] params = { page.getStartRow(), page.getEndRow() };
		ResultSet rs = this.executeQuery(sql, params);
		try {
			while (rs.next()) {
				DEPT entity = new DEPT();
				entity.setDEPT_ID(rs.getInt(1));
				entity.setDEPT_NAME(rs.getString(2));
				entity.setDEPT_FID(rs.getInt(3));
				entity.setDEPT_DESCRIPTION(rs.getString(4));
				list.add(entity);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			this.closeResouce();
		}
		return list;
	}

	public List<DEPT> getParentList() {
		List<DEPT> list = new ArrayList<DEPT>();
		String sql = "SELECT * FROM DEPT WHERE DEPT_FID = ?";
		Object[] params = { 0 };
		ResultSet rs = this.executeQuery(sql, params);
		try {
			while (rs.next()) {
				DEPT entity = new DEPT();
				entity.setDEPT_ID(rs.getInt(1));
				entity.setDEPT_NAME(rs.getString(2));
				entity.setDEPT_FID(rs.getInt(3));
				entity.setDEPT_DESCRIPTION(rs.getString(4));
				list.add(entity);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			this.closeResouce();
		}
		return list;
	}

	public boolean delByID(int id) {
		String sql = "DELETE DEPT WHERE DEPT_ID = ?";
		Object[] params = { id };
		int updateRow = this.executeUpdate(sql, params);
		this.closeResouce();
		return updateRow > 0;
	}

	public DEPT getByID(int id) {
		DEPT entity = new DEPT();
		String sql = "SELECT dept_id,dept_name,dept_fid,dept_description FROM DEPT where dept_id = ?";
		Object[] params = { id };
		ResultSet rs = this.executeQuery(sql, params);
		try {
			while (rs.next()) {
				entity.setDEPT_ID(rs.getInt(1));
				entity.setDEPT_NAME(rs.getString(2));
				entity.setDEPT_FID(rs.getInt(3));
				entity.setDEPT_DESCRIPTION(rs.getString(4));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeResouce();
		}
		return entity;
	}

	public boolean update(DEPT entity) {
		String sql = "UPDATE DEPT SET DEPT_NAME=?,DEPT_FID=?,dept_description=? WHERE DEPT_ID=?";
		Object[] params = { entity.getDEPT_NAME(), entity.getDEPT_FID(), entity.getDEPT_DESCRIPTION(),
				entity.getDEPT_ID() };
		int updateRow = this.executeUpdate(sql, params);
		this.closeResouce();
		return updateRow > 0; 
	}
}
