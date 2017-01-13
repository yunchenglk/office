package office.inFace;

import java.util.List;

public interface baseDao<T> {

	Boolean Save(T entity);

	Boolean Update(T entity);

	int getRowCount(String where);

	int getRowCount();

	List<T> getPageList(int pageIndex, int pageSize);

	T Single(int id);
}
