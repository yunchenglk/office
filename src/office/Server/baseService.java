package office.Server;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import office.DAL.baseDaoImpl;
import office.DAL.deptDao;
import office.entity.baseEntity;
import office.inFace.baseDao;

public class baseService<T extends baseEntity> implements baseDao<T> {
	private baseDaoImpl db;

	public baseService() {
		ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
		Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
		db = new baseDaoImpl<>(clazz);
	}

	@Override
	public Boolean Save(T entity) {
		return db.Save(entity);
	}

	@Override
	public Boolean Update(T entity) {
		return db.Update(entity);
	}

	@Override
	public int getRowCount(String where) {
		return db.getRowCount(where);
	}

	@Override
	public int getRowCount() {
		return db.getRowCount();
	}

	@Override
	public List<T> getPageList(int pageIndex, int pageSize) {
		return db.getPageList(pageIndex, pageSize);
	}

	@Override
	public T Single(int id) {
		return (T)db.Single(id);
	}

}
