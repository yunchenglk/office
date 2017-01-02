package office.util;

public class Page {
	// ��ҳ��
	private int totalPageCount = 0;
	// ÿҳ��ʾ��¼��
	private int pageSize = 0;
	// ��¼����
	private int rowCount = 0;
	// ��ǰҳ��
	private int pageIndex = 0;

	public int getPageIndex() {
		return pageIndex;
	}

	public void setPageIndex(int pageIndex) {
		if (pageIndex > 0)
			this.pageIndex = pageIndex;
	}

	public int getTotalPageCount() {
		return totalPageCount;
	}

	public void setTotalPageCount(int totalPageCount) {
		this.totalPageCount = totalPageCount;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		if (pageSize > 0)
			this.pageSize = pageSize;
	}

	public int getRowCount() {
		return rowCount;
	}

	public void setRowCount(int rowCount) {
		if (rowCount > 0) {
			this.rowCount = rowCount;
			setTotalCount();
		}
	}

	public void setTotalCount() {
		if (this.rowCount % this.pageSize == 0)
			this.totalPageCount = this.rowCount / this.pageSize;
		else if (this.rowCount % this.pageSize > 0)
			this.totalPageCount = this.rowCount / this.pageSize + 1;
		else
			this.totalPageCount = 0;
	}

	// �õ���ʼ��¼��
	public int getStartRow() {
		return (this.pageIndex - 1) * this.pageSize + 1;
	}

	// �õ�������¼��
	public int getEndRow() {
		return this.pageIndex * this.pageSize;
	}

}
