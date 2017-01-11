package office.entity;

public class ResultBase {
	private boolean status;
	private String msg;
	private String url;

	private ResultBase() {
	}

	public ResultBase(boolean status) {
		this.status = status;
	}

	public ResultBase(boolean status, String msg) {
		this.status = status;
		this.msg = msg;
	}

	public ResultBase(boolean status, String msg, String url) {
		this.status = status;
		this.msg = msg;
		this.url = url;
	}

	public String getUrl() {
		return url;
	}

	public void setUrl(String url) {
		this.url = url;
	}

	public boolean isStatus() {
		return status;
	}

	public void setStatus(boolean status) {
		this.status = status;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

}
