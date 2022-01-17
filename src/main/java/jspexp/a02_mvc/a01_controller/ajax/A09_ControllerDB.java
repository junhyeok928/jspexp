package jspexp.a02_mvc.a01_controller.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import jspexp.a03_database.A01_Dao;

/**
 * Servlet implementation class A09_ControllerDB
 */
@WebServlet(name = "empAjax.do", urlPatterns = { "/empAjax.do" })
public class A09_ControllerDB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A09_ControllerDB() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 1. 요청값.
		String ename = request.getParameter("ename"); if(ename==null) ename="";
		String job = request.getParameter("job"); if(job==null) job="";
		System.out.println("# 요청값 #");
		System.out.println("ename:"+ename);
		System.out.println("job:"+job);
		
		// 2. model : db데이터 json문자열 처리
		A01_Dao dao = new A01_Dao();
		Gson gson = new Gson();
		String empJson = gson.toJson(dao.empListPre(ename,job));
		
		// 3. json 문자열 처리..
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		out.print(empJson);
	}

}
