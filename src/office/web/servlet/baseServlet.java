package office.web.servlet;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import office.Server.deptService;
import office.entity.baseEntity;
import office.entity.DEPT;

@SuppressWarnings("serial")
public class baseServlet extends HttpServlet {
	deptService db = new deptService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		String type = request.getParameter("t");
		switch (type) {
		case "getFid":
			List<DEPT> list = db.getFirstList();
			response.getWriter().print(JSONArray.fromObject(list));
			break;
		case "del":
			String id = request.getParameter("id");
			int ID = Integer.parseInt(id);
			boolean result = db.delByID(ID);
			if (result)
				response.getWriter().append("操作成功");
			else
				response.getWriter().append("操作成功");
			break;
		default:
			break;
		}
		response.getWriter().flush();
		response.getWriter().close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String dbname = request.getParameter("dbname");
		baseEntity entity = getEneity(dbname, request);
		DEPT de = (DEPT) entity;
		if (db.update(de))
			response.sendRedirect("jsp/dept.jsp");
		else
			response.sendRedirect("jsp/index.jsp"); 
		// dbname
		// dept entity = new dept();
		// request.setCharacterEncoding("utf-8");
		// entity.setDEPT_ID(Integer.parseInt(request.getParameter("dept_id")));
		// entity.setDEPT_NAME(request.getParameter("dept_name"));
		// entity.setDEPT_FID(Integer.parseInt(request.getParameter("dept_fid")));
		// entity.setDEPT_DESCRIPTION(request.getParameter("dept_desc"));
		// if (db.update(entity))
		// response.sendRedirect("jsp/dept.jsp");
		// else
		// response.sendRedirect("jsp/index.jsp");
	}

	public baseEntity getEneity(String dbName, HttpServletRequest request) {
		baseEntity entity = null;
		try {
			Class cls = Class.forName("office.entity." + dbName.toUpperCase());
			entity = (baseEntity) cls.newInstance();

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
			System.out.println("123");

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
