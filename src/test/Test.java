package test;

import office.util.ConfigManager;

public class Test {
	public static void main(String[] args) { 
		String sss = ConfigManager.instance().getVal("jdbc.class");
		System.out.println(sss);
	}
}
