package test;

import java.util.List;

import office.Server.deptServiceImpl;
import office.entity.DEPT;

public class Test {
	public static void main(String[] args) {

		deptServiceImpl db = new deptServiceImpl();

		List<DEPT> list = db.getPageList(1, 3);
		for(DEPT d: list){
			System.out.println(d.getDEPT_NAME());
		}
		
		System.out.println(list.size());

	}
}
