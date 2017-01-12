package office.web.servlet;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import office.entity.baseEntity;

/**
 * Servlet implementation class AddServlet
 */
@WebServlet("/AddServlet")
public class AddServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		try {
			String dbname = req.getParameter("dbname");
			String backUrl = req.getParameter("url");
			System.out.println("office.Server." + dbname.toLowerCase() + "ServiceImpl");
			Class cls = Class.forName("office.Server." + dbname.toLowerCase() + "ServiceImpl");
			System.out.println(cls.getDeclaredMethods().length);
			for (Method m : cls.getDeclaredMethods()) {
				System.out.println(m);
			}

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

		super.doPost(req, resp);
	}

	public baseEntity getEneity(String dbName, HttpServletRequest request) {
		baseEntity entity = null;
		try {
			Class cls = Class.forName("office.entity." + dbName.toUpperCase());
			entity = (baseEntity) cls.newInstance();
			// entity.setDBNAME(dbName.toUpperCase());
			Field[] fils = cls.getDeclaredFields();
			for (Field f : fils) {
				String name = f.getName().toUpperCase();
				String type = f.getGenericType().toString();
				String value = request.getParameter(name);
				Method m;
				if (type.equals("class java.lang.String")) {
					if (value != null) {
						m = entity.getClass().getMethod("set" + name, String.class);
						m.invoke(entity, value);
					}
				}
				if (type.equals("class java.lang.Integer")) {
					if (value != null) {
						m = entity.getClass().getMethod("set" + name, Integer.class);
						m.invoke(entity, Integer.parseInt(value));
					}
				}
				if (type.equals("class java.lang.Boolean")) {
					if (value != null) {
						m = entity.getClass().getMethod("set" + name, Boolean.class);
						m.invoke(entity, Boolean.parseBoolean(value));
					}
				}
				if (type.equals("class java.util.Date")) {
					if (value != null) {
						m = entity.getClass().getMethod("set" + name, Date.class);
						m.invoke(entity, new Date());
					}
				}
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (InstantiationException e) {
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			e.printStackTrace();
		} catch (SecurityException e) {
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			e.printStackTrace();
		}
		return entity;
	}

}
