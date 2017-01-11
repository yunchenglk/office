package test;

import office.Server.deptServiceImpl;
import office.entity.DEPT;

public class Test {
	public static void main(String[] args) {

		deptServiceImpl db = new deptServiceImpl();
		DEPT dept = db.Single(201);
		System.out.println(dept.getDEPT_NAME());

	}
}
