package test;

import office.Server.deptServiceImpl;
import office.entity.DEPT;

public class Test {
	public static void main(String[] args) {
		deptServiceImpl db = new deptServiceImpl();
		DEPT entity = new DEPT();
		entity.setDEPT_NAME("°¢Ë¹µÙ·Ò"); 
		entity.setDEPT_FID(0);
		entity.setDEPT_DESCRIPTION("123");
		db.Save(entity);
	}
}
