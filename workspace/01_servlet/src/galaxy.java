

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class galaxy
 * 서블릿 실행방법
 * 톰캣을 실행
 * 톰캣 컨테이너에프로젝트 담음
 * 주소창에url입력
 * url =호스트명:포트번호/contextPath/urlMapping
 * contextPath는 해당프로젝트로 생성된웹페이들의 기본 주소로 사용된다.
 * urlMapping은 어떤 페이지의 주소로 사용 기본값은 서블릿이름
 * 
 * contextPath수정 방법
 * 프로젝트 생성단계에서 Context root를 변경한다.
 * 프로젝트의 properties에서 변경
 * 
 * 서블릿매핑 수정방법
 * url매핑 변경
 * @webservle변경
 * web.xml을 열고<servle>태그와 <servlet-mapping>태그를 추가
 * 
 */
@WebServlet("/galaxy")
public class galaxy extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public galaxy() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
