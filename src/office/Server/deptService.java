package office.Server;

import java.util.List;

import office.dao.deptDao;
import office.entity.dept;

public class deptService {
	private static deptDao dao;

	public deptService() {
		dao = new deptDao();
	}

	public boolean Add(dept entity) {
		return dao.init(entity);
	}

	public int getRowCount() {
		return dao.getRowCount();
	}

	public List<dept> getPage(int pageIndex, int pageSize) {
		return dao.getPageList(pageIndex, pageSize);

	}
}
