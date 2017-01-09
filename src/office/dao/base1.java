package office.dao;

import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

import office.entity.baseEntity;

@SuppressWarnings(value = "all")
public class base1<T extends baseEntity> extends baseDao implements IBaseDao<T> {
	private Class<T> entityClass;

	public base1() {
		Type genType = getClass().getGenericSuperclass();
		Type[] params = ((ParameterizedType) genType).getActualTypeArguments();
		entityClass = (Class) params[0];
	}

	@Override
	public T get() {
		try {
			return entityClass.newInstance();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

}
