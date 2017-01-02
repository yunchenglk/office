package office.dao;

import office.entity.dept;

public class deptDao extends baseDao {

	public boolean init(dept entity) { 
		String sql = "INSERT INTO DEPT VALUES(NULL,?,?,?)";
		Object[] params = { entity.getDept_name(), entity.getDept_fid(), entity.getDept_description() };
		return this.executeUpdate(sql, params) > 0; 
	}

}
