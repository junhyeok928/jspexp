package jspexp.a02_mvc.a01_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspexp.a03_database.A01_Dao;

/**
 * Servlet implementation class A03_EmpCtrl
 */
@WebServlet(name = "emp.do", urlPatterns = { "/emp.do" })
public class A03_EmpCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A03_EmpCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 1. 요청값 처리(검색)
		request.setCharacterEncoding("utf-8"); // post
		String ename = request.getParameter("ename"); if(ename==null) ename = "";
		String job = request.getParameter("job"); if(job==null) job = "";
		// 2. 모델 데이터 설정 (DB처리)
		request.setAttribute("emplist", new A01_Dao().empListPre(ename, job));
		
		// 3. view단 호출
		String page="a01_begin\\a32_empList.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
