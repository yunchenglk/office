package office.entity;

public class DEPT extends baseEntity {
	private Integer DEPT_ID = 0;
	private String DEPT_NAME = "";
	private Integer DEPT_FID = 0;
	private String DEPT_DESCRIPTION = "";

	public Integer getDEPT_ID() {
		return DEPT_ID;
	}

	public void setDEPT_ID(Integer dEPT_ID) {
		DEPT_ID = dEPT_ID;
	}

	public String getDEPT_NAME() {
		return DEPT_NAME;
	}

	public void setDEPT_NAME(String dEPT_NAME) {
		DEPT_NAME = dEPT_NAME;
	}

	public Integer getDEPT_FID() {
		return DEPT_FID;
	}

	public void setDEPT_FID(Integer dEPT_FID) {
		DEPT_FID = dEPT_FID;
	}

	public String getDEPT_DESCRIPTION() {
		return DEPT_DESCRIPTION;
	}

	public void setDEPT_DESCRIPTION(String dEPT_DESCRIPTION) {
		DEPT_DESCRIPTION = dEPT_DESCRIPTION;
	}

}
