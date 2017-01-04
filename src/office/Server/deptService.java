package office.Server;

import java.util.ArrayList;
import java.util.List;

import office.dao.deptDao;
import office.entity.dept;

public class deptService {
	private static deptDao dao;

	public deptService() {
		dao = new deptDao();
	}

	public boolean update(dept entity) {
		if (entity.getDept_id() == 0)
			return dao.init(entity);
		else
			return dao.update(entity);
	}

	public int getRowCount() {
		return dao.getRowCount();
	}

	public List<dept> getPage(int pageIndex, int pageSize) {
		return dao.getPageList(pageIndex, pageSize);
	}

	public List<dept> getFirstList() {
		return dao.getParentList();
	}

	public boolean delByID(int id) {
		return dao.delByID(id);
	}

	public dept getByID(int id) {
		return dao.getByID(id);
	}
}
