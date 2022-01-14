package jspexp.a02_mvc.a01_controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class A02_Controller
 */
@WebServlet(name = "mvc02.do", urlPatterns = { "/mvc02.do" })
public class A02_Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public A02_Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 1. 요청값 처리
		//		1) post방식의 한글 요청값 처리를 위해 encoding 처리
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		System.out.println("# 요청값 #");
		System.out.println("아이디:"+id);
		System.out.println("패스워드:"+pass);

		//  출력 확인
		
		// 2. 모델 데이터 처리.
		// 	request :session scope의 두번째 객체로 하단에 forward를 통해서 모델 데이터를 
		//     보낼 수 있다..  .setAttribute("key", "value")형태로 저장하면,  
		//     view단(jsp)에서 ${key}가져올 수있다.
		// http://localhost:7080/jspexp/mvc02.do?id=himan&pass=7777 
		String isValid = "";
		if(id!=null&&pass!=null) {
			if(id.equals("himan") && pass.equals("7777") ){
				isValid = "인증성공";
			}else {
				isValid = "미인증";
			}
		}else {
			isValid = "로그인하세요";
		}
		request.setAttribute("isValid", isValid); // jsp : ${isValid}
		// 3. view 화면 호출
		String page = "a01_begin\\a31_mvc02.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

}
