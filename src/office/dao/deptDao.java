package office.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import office.entity.dept;
import office.util.Page;

public class deptDao extends baseDao {

	public boolean init(dept entity) {
		String sql = "INSERT INTO DEPT VALUES(NULL,?,?,?)";
		Object[] params = { entity.getDept_name(), entity.getDept_fid(), entity.getDept_description() };
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

	public List<dept> getPageList(int pageIndex, int pageSize) {
		List<dept> list = new ArrayList<dept>();
		String sql = "select dept_id, dept_name, dept_fid, dept_description from (select d.dept_id,d.dept_name,d.dept_fid,d.dept_description,ROWNUM rn  from dept d) a where a.rn >= ?   and a.rn <= ?";
		Page page = new Page();
		page.setPageIndex(pageIndex);
		page.setPageSize(pageSize);
		Object[] params = { page.getStartRow(), page.getEndRow() };
		ResultSet rs = this.executeQuery(sql, params);
		try {
			while (rs.next()) {
				dept entity = new dept();
				entity.setDept_id(rs.getInt(1));
				entity.setDept_name(rs.getString(2));
				entity.setDept_fid(rs.getInt(3));
				entity.setDept_description(rs.getString(4));
				list.add(entity);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

}
