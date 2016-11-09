package ch17.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MessageController
 */
@WebServlet("/MessageController")
public class MessageController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MessageController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	response.getWriter().append("Served at: ").append(request.getContextPath()); <-- 이건왠만하면 지워주는 게 좋다.
		requestPro(request, response); //① 웹 브라우저의 요청을 받음
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	doGet(request, response);  <-- get 방식 혹은 post 방식을 따로두고 싶다면 지우는 것이 좋다.
		requestPro(request, response);
	}
	
	private void requestPro(
			HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//② 웹 브라우저가 요구하는 작업을 분석
		String message = request.getParameter("message");
		
		//③ 요청한 작업을 처리
		Object result = null;
		if(message == null || message.equals("base"))
			result = "하하하";
		else if(message.equals("name"))
			result = "홍길동입니다.";
		else
			result = "타입이 맞지 않습니다.";
		
		//④ 로직 처리 결과를 request 객체의 속성에 저장
		request.setAttribute("result", result);
		
		//⑤ 적당한 뷰를 선택 후 뷰로 포워딩
		RequestDispatcher dispatcher =
				request.getRequestDispatcher("/ch17/messageview.jsp");
			dispatcher.forward(request, response);
	}

}