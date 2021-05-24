package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.ModelAndView;
import model.ShapeCommand;

/**
 * Servlet implementation class HomeController
 */
@WebServlet("*.do")
public class HomeController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HomeController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String[] arr =request.getRequestURI().split("/");
		String cmd =arr[arr.length-1];
		//요청에따른 모델선택
		//ModelMapper
		//매개변수 : String cmd(어떤요청인지)
		//반환타입 : model
		
		//model의 기본
		//인터페이스를 하나 생성
		// 해당 인터페이스 구현
		// 모든 모델의 타입은 인터페이스
		
		ShapeCommand command = ModelMapper.getInstance().getModel(cmd);
		//String path = command.execute(request,response);
		ModelAndView mav =null;
		mav =command.execute(request,response);
		if(mav==null) {
			return;
		}
		if(mav.isRedirect()) {
			response.sendRedirect(mav.getView());
		}else {
		request.getRequestDispatcher(mav.getView()).forward(request, response);
		}
	
	
	
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
