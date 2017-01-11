package office.DAL;

import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.ParameterizedType;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import office.entity.Cloumn;
import office.entity.baseEntity;
import office.util.Page;

public class baseDaoImpl<T extends baseEntity> extends DBImpl {
	private T t;
	private Class<T> clazz;

	public baseDaoImpl() {
		ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
		clazz = (Class<T>) pt.getActualTypeArguments()[0];
	}

	/**
	 * 添加
	 * 
	 * @param entity
	 * @return
	 */
	public Boolean Save(T entity) {
		int updateRow = 0;
		try {
			Field[] fields = t.getClass().getDeclaredFields();
			StringBuffer sql = new StringBuffer();
			StringBuffer columns = new StringBuffer();
			ArrayList list = new ArrayList();
			for (Field f : fields) {
				if (f.isAnnotationPresent(Cloumn.class)) {
					continue;
				}
				String name = f.getName().toUpperCase();
				columns.append(name + ",");
				Method m = entity.getClass().getMethod("get" + name);
				Object val = m.invoke(entity);
				list.add(val);
			}
			columns.delete(columns.length() - 1, columns.length());

			sql.append("INSERT INTO " + entity.getDBNAME());
			sql.append("( " + columns.toString() + ") ");
			sql.append(" VALUES (");
			for (int i = 0; i < list.size(); i++) {
				sql.append("?,");
			}
			sql.delete(sql.length() - 1, sql.length());
			sql.append(" )");
			System.out.println(sql.toString());
			updateRow = this.executeUpdate(sql.toString(), list.toArray());
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} finally {
			this.closeResouce();
		}
		return updateRow > 0;
	}

	/**
	 * 根据主键更新实体
	 * 
	 * @param entity
	 * @return
	 */
	public Boolean Update(T entity) {
		int updateRow = 0;
		try {

			Field[] fields = t.getClass().getDeclaredFields();
			String parMaryKey = "";
			Object pkVal = null;

			StringBuffer sql = new StringBuffer();
			StringBuffer columns = new StringBuffer();
			ArrayList param = new ArrayList();
			for (Field f : fields) {
				String name = f.getName().toUpperCase();
				// 获取主键
				if (f.isAnnotationPresent(Cloumn.class)) {
					parMaryKey = name;
				} else {
					columns.append(name + " = ?,");
				}
				// 设置值
				Method m;
				m = entity.getClass().getMethod("get" + name);
				Object val = m.invoke(entity);
				if (f.isAnnotationPresent(Cloumn.class)) {
					pkVal = val;
				} else {
					param.add(val);
				}
			}
			columns.delete(columns.length() - 1, columns.length());

			sql.append("UPDATE " + entity.getDBNAME());
			sql.append(" SET " + columns.toString());
			sql.append(" WHERE " + parMaryKey + " = ?");
			param.add(pkVal);
			updateRow = this.executeUpdate(sql.toString(), param.toArray());

		} catch (NoSuchMethodException | SecurityException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} finally {
			this.closeResouce();
		}
		return updateRow > 0;
	}

	/**
	 * 获取信息总数
	 * 
	 * @return
	 */
	public int getRowCount(String where) {
		int rowCount = 0;
		String sql = "SELECT COUNT(*) FROM " + t.getDBNAME() + " " + where;
		Object[] params = {};
		ResultSet rs = this.executeQuery(sql, params);
		try {
			while (rs.next()) {
				rowCount = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			this.closeResouce();
		}
		return rowCount;
	}

	public int getRowCount() {
		return this.getRowCount("");
	}

	/**
	 * 获取分页
	 * 
	 * @param pageIndex
	 *            当前页
	 * @param pageSize
	 *            页面显示量
	 * @return
	 */
	public List<T> getPageList(int pageIndex, int pageSize) {
		List<T> list = new ArrayList<T>();
		try {
			t = clazz.newInstance();
			ArrayList param = new ArrayList();
			StringBuffer sql = new StringBuffer();
			StringBuffer columns = new StringBuffer();
			for (Field f : t.getClass().getDeclaredFields()) {
				String name = f.getName().toUpperCase();
				columns.append(name + ",");

			}
			// columns.delete(columns.length() - 1, columns.length());

			sql.append("SELECT * FROM (SELECT " + columns + " ROWNUM rn FROM " + t.getDBNAME()
					+ ") where rn>=? and rn<=?");
			Page page = new Page();
			page.setPageIndex(pageIndex);
			page.setPageSize(pageSize);
			Object[] params = { page.getStartRow(), page.getEndRow() };

			ResultSet rs = this.executeQuery(sql.toString(), params);
			list = takeListT(rs);

		} catch (InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}

		return list;
	}

	private List<T> takeListT(ResultSet rs) {
		List<T> list = new ArrayList<T>();
		try {
			while (rs.next()) {
				T emp = clazz.newInstance();
				for (Field f : emp.getClass().getDeclaredFields()) {
					String name = f.getName().toUpperCase();
					String type = f.getGenericType().toString();
					Method m;
					if (type.equals("class java.lang.String")) {
						String value = rs.getString(name);
						if (value != null) {
							m = emp.getClass().getMethod("set" + name, String.class);
							m.invoke(emp, value);
						}
					}
					if (type.equals("class java.lang.Integer")) {
						int value = rs.getInt(name);
						m = emp.getClass().getMethod("set" + name, Integer.class);
						m.invoke(emp, value);
					}
				}
				list.add(emp);
			}
		} catch (InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	/**
	 * 根据ID获取实体
	 * 
	 * @param id
	 * @return
	 */
	public T Single(int id) {
		try {
			t = clazz.newInstance();
		 
			StringBuffer columns = new StringBuffer();
			String parMaryKey = "";
			for (Field f : t.getClass().getDeclaredFields()) {
				if (f.isAnnotationPresent(Cloumn.class)) {
					parMaryKey = f.getName();
				}
			}
			String Sql = "SELECT * FROM " + t.getDBNAME() + " WHERE " + parMaryKey + " = ?";
			System.out.println(Sql);
			Object[] params = { id };
			ResultSet rs = this.executeQuery(Sql.toString(), params);
			t = takeListT(rs).get(0);

		} catch (InstantiationException | IllegalAccessException e) {
			e.printStackTrace();
		}
		return t;
	}
}
