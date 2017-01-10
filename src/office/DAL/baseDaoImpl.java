package office.DAL;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.time.Month;
import java.util.ArrayList;
import java.util.Date;

import office.entity.baseEntity;

public class baseDaoImpl<T extends baseEntity> extends DBImpl {
	private T t;

	public baseDaoImpl() {
		try {
			ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
			Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[0];
			t = clazz.newInstance();
		} catch (InstantiationException | IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public Boolean Save(T entity) {
		int updateRow = 0;
		try {
			Field[] fields = t.getClass().getDeclaredFields();
			StringBuffer sql = new StringBuffer();

			sql.append("INSERT INTO ");
			sql.append(entity.getDBNAME());
			sql.append(" VALUE (");
			for (int i = 0; i < fields.length; i++) {
				sql.append("?,");
			}
			sql.delete(sql.length() - 1, sql.length());
			sql.append(" )");
			ArrayList list = new ArrayList();
			for (Field f : fields) {
				String name = f.getName().toUpperCase();
				Method m = entity.getClass().getMethod("get" + name);
				Object val = m.invoke(entity);
				list.add(val);
			}
			System.out.println(sql.toString());
			updateRow = this.executeUpdate(sql.toString(), list.toArray());
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return updateRow > 0;
	}

}
