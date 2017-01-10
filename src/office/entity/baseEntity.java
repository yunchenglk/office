package office.entity;

public class baseEntity {
	private String DBNAME;

	public String getDBNAME() {
		return DBNAME;
	}

	public baseEntity() {
		String clsName = this.getClass().toString();
		DBNAME = clsName.substring(clsName.lastIndexOf('.') + 1);
	}
}
