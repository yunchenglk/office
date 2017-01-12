package office.Server;

import java.util.List;

import office.dao.deptDao;
import office.entity.DEPT;

public class baseService {  
	private static deptDao dao;

	public baseService() {
		dao = new deptDao();
	}

	public boolean update(DEPT entity) {
		if (entity.getDEPT_ID() == 0)
			return dao.init(entity);
		else
			return dao.update(entity);
	}

	public int getRowCount() {
		return dao.getRowCount();
	}

	public List<DEPT> getPage(int pageIndex, int pageSize) {
		return dao.getPageList(pageIndex, pageSize);
	}

	public List<DEPT> getFirstList() {
		return dao.getParentList();
	}

	public boolean delByID(int id) {
		return dao.delByID(id);
	}

	public DEPT getByID(int id) {
		return dao.getByID(id);
	}
}
