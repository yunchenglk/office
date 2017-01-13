package office.DAL;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import office.entity.DEPT;
import office.entity.baseEntity;

public class deptDao  extends baseDaoImpl<DEPT> {

	public List<DEPT> getParentList(int fid) {
		List<DEPT> list = new ArrayList<DEPT>();
		String sql = "SELECT * FROM DEPT WHERE DEPT_FID = ?";
		Object[] params = { fid };
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
		} finally {
			this.closeResouce();
		}
		return list;
	}
}
