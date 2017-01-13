package office.entity;

import java.util.Date;

public class EMPLOYEE {
	@Cloumn
	private int EMP_ID;
	private String EMP_CODE;//员工编号
	private String EMP_NAME;//员工姓名
	private String EMP_PWD;//登陆密码
	private char EMP_SEX;//员工性别
	private Date EMP_JOINDATE;//入职时间
	private Date EMP_BIRTH;//员工生日
	private String EMP_ADDRESS;//家庭地址
	private String EMP_EMAIL;//员工邮箱
	private String EMP_PHONE;//员工电话
	private String EMP_DESCRIPTION;//备注
	private int DEPT_ID;//部门ID
	public int getEMP_ID() {
		return EMP_ID;
	}
	public void setEMP_ID(int eMP_ID) {
		EMP_ID = eMP_ID;
	}
	public String getEMP_CODE() {
		return EMP_CODE;
	}
	public void setEMP_CODE(String eMP_CODE) {
		EMP_CODE = eMP_CODE;
	}
	public String getEMP_NAME() {
		return EMP_NAME;
	}
	public void setEMP_NAME(String eMP_NAME) {
		EMP_NAME = eMP_NAME;
	}
	public String getEMP_PWD() {
		return EMP_PWD;
	}
	public void setEMP_PWD(String eMP_PWD) {
		EMP_PWD = eMP_PWD;
	}
	public char getEMP_SEX() {
		return EMP_SEX;
	}
	public void setEMP_SEX(char eMP_SEX) {
		EMP_SEX = eMP_SEX;
	}
	public Date getEMP_JOINDATE() {
		return EMP_JOINDATE;
	}
	public void setEMP_JOINDATE(Date eMP_JOINDATE) {
		EMP_JOINDATE = eMP_JOINDATE;
	}
	public Date getEMP_BIRTH() {
		return EMP_BIRTH;
	}
	public void setEMP_BIRTH(Date eMP_BIRTH) {
		EMP_BIRTH = eMP_BIRTH;
	}
	public String getEMP_ADDRESS() {
		return EMP_ADDRESS;
	}
	public void setEMP_ADDRESS(String eMP_ADDRESS) {
		EMP_ADDRESS = eMP_ADDRESS;
	}
	public String getEMP_EMAIL() {
		return EMP_EMAIL;
	}
	public void setEMP_EMAIL(String eMP_EMAIL) {
		EMP_EMAIL = eMP_EMAIL;
	}
	public String getEMP_PHONE() {
		return EMP_PHONE;
	}
	public void setEMP_PHONE(String eMP_PHONE) {
		EMP_PHONE = eMP_PHONE;
	}
	public String getEMP_DESCRIPTION() {
		return EMP_DESCRIPTION;
	}
	public void setEMP_DESCRIPTION(String eMP_DESCRIPTION) {
		EMP_DESCRIPTION = eMP_DESCRIPTION;
	}
	public int getDEPT_ID() {
		return DEPT_ID;
	}
	public void setDEPT_ID(int dEPT_ID) {
		DEPT_ID = dEPT_ID;
	}
	
}

