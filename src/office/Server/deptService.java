package office.Server;

import office.dao.deptDao;
import office.entity.dept;

public class deptService {
	private static deptService service;
	private static deptDao dao;

	private deptService() {
		dao = new deptDao();
	}

	public static deptService instance() {
		if (service == null) {
			service = new deptService();
		}
		return service;
	}

	public boolean Add(dept entity) {
		return dao.init(entity);
	}

}
