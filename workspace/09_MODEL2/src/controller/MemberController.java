package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.member.MemberCommand;
import common.ModelAndView;

/**
 * Servlet implementation class MemberController
 */
@WebServlet("*.m")
public class MemberController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MemberController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		//요청 확인 request.getReqeustURI() == "10_MODEL2/loginPage.m"
		String[] arr = request.getRequestURI().split("/");
		String cmd = arr[arr.length-1];
		//요청을 전달
		MemberCommand command = MemberCommandMapper.getInstance().getCommand(cmd);
		ModelAndView mav =null;
		if(command !=null) {
			mav = command.execute(request, response);
		}
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
