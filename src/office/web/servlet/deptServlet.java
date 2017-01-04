package office.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.json.JSONArray;
import office.Server.deptService;
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
		entity.setDept_id(Integer.parseInt(request.getParameter("dept_id")));
		entity.setDept_name(request.getParameter("dept_name"));
		entity.setDept_fid(Integer.parseInt(request.getParameter("dept_fid")));
		entity.setDept_description(request.getParameter("dept_desc")); 
		if (db.update(entity))
			response.sendRedirect("jsp/dept.jsp");
		else
			response.sendRedirect("jsp/index.jsp");
	}

}
