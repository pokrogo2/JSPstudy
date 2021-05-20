package ex04;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Ex02
 */
@WebServlet("/Ex02")
public class Ex02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ex02() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		//<a>태그로 넘어오면 무조건 get
		//함께넘어오는파라미터는 request가 처리한다.
		
		// request에서 파라미터꺼내는 방법.
		//getParameter()메소드 사용
		//String getparameter(String parameter){}형식
		String name= request.getParameter("name");
		if(name!=null&& !name.isEmpty()) {
		System.out.println(name);
		}
		String strHeight = request.getParameter("height");
		int height=0;
		if(strHeight !=null&& !strHeight.isEmpty()) {
		height= Integer.parseInt(strHeight);
		}
		double weight=0.0;
		String strWeight= request.getParameter("weight");
		if(strWeight !=null&& !strWeight.isEmpty()) {
		weight=Double.parseDouble(strWeight);
		}
		
		System.out.println("키: "+height + "cm,몸무게 : " + weight + "kg");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
