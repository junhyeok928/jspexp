package jspexp.a02_mvc.a01_controller.ajax;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jspexp.a05_th_member.A01_Dao;
import jspexp.a05_th_member.vo.Member;

/**
 * Servlet implementation class A11_CheckIdCtrl
 */
@WebServlet(name = "checkId.do", urlPatterns = { "/checkId.do" })
public class A11_CheckIdCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A11_CheckIdCtrl() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		// 1. 요청값..
		String id = request.getParameter("id"); if(id==null) id=""; //null예외방지
		// 2. DAO 연결, ID가 있는지 확인.
		A01_Dao dao = new A01_Dao();
		Member m = dao.getMember(id);
		
		// 3. 전달할 keyword, json
		PrintWriter out = response.getWriter();
		// 요청값이 있고, 검색한 id로 데이터가 없을 때..
		if(!id.equals("") && m==null) {
			out.print("Y");// 데이터없을때, 유효하다고 Y를 client에 전달
			System.out.println(m);
		}else {
			out.print("N");// 데이터있을때, 유효하지 않다고 N을 client에 전달
			System.out.println(m);
		}
		
	}


}
