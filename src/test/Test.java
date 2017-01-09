package test;

import java.util.List;

import net.sf.json.JSONArray;
import office.Server.deptService;
import office.entity.DEPT;

public class Test {
	public static void main(String[] args) {
		deptService db = new deptService();
		List<DEPT> list = db.getFirstList(); 
		JSONArray arr = JSONArray.fromObject(list);
		System.out.println(arr);

	}
}
