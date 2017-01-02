package office.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import office.Server.deptService;
import office.entity.dept;

/**
 * Servlet implementation class deptServlet
 */
@WebServlet("/deptServlet")
public class deptServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public deptServlet() {
		super();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException { 
		dept entity = new dept();
		//entity.setDept_id(Integer.parseInt(request.getParameter("dept_id")));
		entity.setDept_name(request.getParameter("dept_name"));
		entity.setDept_fid(Integer.parseInt(request.getParameter("dept_fid")));
		entity.setDept_description(request.getParameter("dept_desc"));
		System.out.println("psot");
		deptService.instance().Add(entity);
	}

}
