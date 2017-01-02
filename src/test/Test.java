package test;

import java.util.List;

import office.dao.deptDao;
import office.entity.dept;

public class Test {
	public static void main(String[] args) {
		
		deptDao db = new deptDao();
		List<dept> list = db.getPageList(1, 2);
		for(dept entity:list){
			System.out.println(entity.getDept_name());
		}

	}
}
