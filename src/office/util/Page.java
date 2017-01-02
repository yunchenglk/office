package office.util;

public class Page {
	// 总页数
	private int totalPageCount = 0;
	// 每页显示记录数
	private int pageSize = 0;
	// 记录总数
	private int rowCount = 0;
	// 当前页码
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

	// 得到开始记录数
	public int getStartRow() {
		return (this.pageIndex - 1) * this.pageSize + 1;
	}

	// 得到结束记录数
	public int getEndRow() {
		return this.pageIndex * this.pageSize;
	}

}
