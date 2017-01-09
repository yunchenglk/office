package office.web.servlet;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import office.Server.deptService;
import office.entity.baseEntity;
import office.entity.dept;

/**
 * Servlet implementation class deptServlet
 */
@WebServlet("/deptServlet")
public class deptServlet extends HttpServlet {
	deptService db = new deptService();

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		String type = request.getParameter("t");
		switch (type) {
		case "getFid":
			List<dept> list = db.getFirstList();
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
		dept entity = new dept();
		request.setCharacterEncoding("utf-8");
		entity.setDEPT_ID(Integer.parseInt(request.getParameter("dept_id")));
		entity.setDEPT_NAME(request.getParameter("dept_name"));
		entity.setDEPT_FID(Integer.parseInt(request.getParameter("dept_fid")));
		entity.setDEPT_DESCRIPTION(request.getParameter("dept_desc"));
		if (db.update(entity))
			response.sendRedirect("jsp/dept.jsp");
		else
			response.sendRedirect("jsp/index.jsp");
	}

	public baseEntity getEneity(String dbName) {
		baseEntity entity = new baseEntity();
		try {
			Class cls = Class.forName("office.entit." + dbName);
			entity = (baseEntity) cls.newInstance();
			Field[] fils = cls.getDeclaredFields();
			for (Field f : fils) {
				String name = f.getName().toUpperCase();
				String type = f.getGenericType().toString(); // 获取属性的类型
				 if (type.equals("class java.lang.String")) { // 如果type是类类型，则前面包含"class "，后面跟类名
	                    Method m = cls.getClass().getMethod("get" + name);
	                    String value = (String) m.invoke(cls); // 调用getter方法获取属性值
	                    if (value == null) {
	                        m = cls.getClass().getMethod("set"+name,String.class);
	                        m.invoke(cls, "");
	                    }
	                }
	                if (type.equals("class java.lang.Integer")) {
	                    Method m = cls.getClass().getMethod("get" + name);
	                    Integer value = (Integer) m.invoke(cls);
	                    if (value == null) {
	                        m = cls.getClass().getMethod("set"+name,Integer.class);
	                        m.invoke(cls, 0);
	                    }
	                }
	                if (type.equals("class java.lang.Boolean")) {
	                    Method m = cls.getClass().getMethod("get" + name);
	                    Boolean value = (Boolean) m.invoke(cls);
	                    if (value == null) {
	                        m = cls.getClass().getMethod("set"+name,Boolean.class);
	                        m.invoke(cls, false);
	                    }
	                }
	                if (type.equals("class java.util.Date")) {
	                    Method m = cls.getClass().getMethod("get" + name);
	                    Date value = (Date) m.invoke(cls);
	                    if (value == null) {
	                        m = cls.getClass().getMethod("set"+name,Date.class);
	                        m.invoke(cls, new Date());
	                    }
	                }

			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (NoSuchMethodException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return entity;
	}
}
