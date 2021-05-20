package ex01;

import java.io.IOException;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class MySevlet
 * 서블릿을 실행하면 웹 브라우저가 열린다.
 * 웨 브라우저 url은 http://localhost:포트번호/컨텍스트패스/url매핑" 방식으로 구성
 * 
 *  */
@WebServlet("/MySevlet") //url매핑
public class MySevlet extends HttpServlet { //httpServlet클래스를 상속받으면 서블릿이다.
	private static final long serialVersionUID = 1L;//직렬화를 위한 ID값 여기서는 관심이 없다.

    /**
     * Default constructor. 
     */
    public MySevlet() {
        // TODO Auto-generated constructor stub
    	System.out.println("생성자 호출");
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 * 1.생성자
	 * 	가장먼저 호출된다.
	 * 	생성자가 호출된 뒤 init메소드호출
	 * 2.init()메소드
	 * 	최초한번
	 * 	초기화용도
	 * 	init 호출 뒤 service 메소드 호출
	 */
	public void init(ServletConfig config) throws ServletException {
		// TODO Auto-generated method stub
		System.out.println("init");
	}

	/**
	 * @see Servlet#destroy()
	 * 서버에서프로젝트가 소멸되면 호출
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		System.out.println("destroy");
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 * service 메소드
	 * 실제처리수행
	 * 매개변수 1
	 * httpservletrequest request
	 * 사용자의 요청을 저장하는 객체
	 * 사용자들이 요청한 파라미터(검색어,아디비번) 사용자들의 접속ip등
	 * 매개변수2
	 * 서버의 응답을 처리하는 객체
	 * 사용자들의 요청을 처리한 결과(검색결과,로그인성공유무)
	 * 서비스 메소드가 없으면 do get 또는 doPost (기본은doGet)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("service호출");
		 if(request.getMethod().equalsIgnoreCase("get")) {
			 doGet(request,response);
		 }else if(request.getMethod().equalsIgnoreCase("post")) {
			 doPost(request,response);
		 }
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 *	doGet()
	 *	get 방식의 요청을 처리하는 메소드
	 *get방식 요청 2가지
	 * url로 직접 요청 
	 * <form method="get">
	 * $.ajax({type:get})
	 * service 메소드를 사용하지 않는 경우 실제처리는 doget이한다.
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("get 호출");
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 * doPost 방식의 요청을처리하는 메소드
	 * 사실 실제로는 아무처리안함, doget에게 위임함
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("do post 호출");
		doGet(request, response);
	}

}
