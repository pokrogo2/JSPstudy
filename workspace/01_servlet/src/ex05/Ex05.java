package ex05;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Optional;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex05
 */
@WebServlet("/Ex05")
public class Ex05 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ex05() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		//1인코딩
		request.setCharacterEncoding("UTF-8");
		
		//파라미터저장
		Optional<String> opt1 =Optional.ofNullable(request.getParameter("name")); //null이 아닌 인수 처리
		String name=opt1.orElse("");
//		Optional<String> opt1 =Optional.of(name); //null이 아닌 인수 처리

		Optional<String> opt2 =Optional.ofNullable(request.getParameter("age")); //null이 아닌 인수 처리
		int age=Integer.parseInt(opt2.orElse("0"));
		
		//응답의 타입을 지정해야함
		response.setContentType("text/html; charset=utf-8");
		
		//응답할 수 있도록 출력스트림
		//문자 기반 스트림 사용. html이 텍스트니까
		PrintWriter out = response.getWriter();
		
		//html문서만들기
		out.println("<!DOCTYPE html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<meta charset=\"utf-8\">");
		out.println("<title>제목</title>");
		out.println("<style>body{color : red;}</style>");
		out.println("<script>alert('반갑습니다');</script>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h3> 이름:"+name+"</h3>");
		out.println("<h3> 나이:"+age+"</h3>");
		out.println("</body>");
		out.println("</html>");
		out.flush();
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
