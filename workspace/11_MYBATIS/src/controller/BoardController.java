package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.board.BoardCommand;
import command.board.DeleteCommand;
import command.board.FindListCommand;
import command.board.InsertCommand;
import command.board.InsertPageCommand;
import command.board.InsertReplyCommand;
import command.board.InsertReplyPageCommand;
import command.board.SelectListCommand1;
import command.board.SelectListCommand2;
import command.board.SelectListCommand3;
import common.ModelAndView;

/**
 * Servlet implementation class BoardController
 */
@WebServlet("*.do")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
    public BoardController() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		
		String[] arr = request.getRequestURI().split("/");
		String cmd = arr[arr.length-1];
		
		
		
		
		ModelAndView mav = null;
		BoardCommand command = null;
		switch(cmd) {
		case "selectList1.do":
			command = new SelectListCommand1();
			break;
		case "selectList2.do":
			command = new SelectListCommand2();
			break;
		case "selectList3.do":
			command = new SelectListCommand3();
			break;
		case "insertPage.do":
			command = new InsertPageCommand();
			break;
		case "insert.do":
			command = new InsertCommand();
			break;
		case "insertReplyPage.do":
			command = new InsertReplyPageCommand();
			break;
		case "insertReply.do":
			command = new InsertReplyCommand();
			break;
		case "findList.do":
			command = new FindListCommand();
			break;
		case "delete.do":
			command = new DeleteCommand();
			break;
	
		}
		if(command !=null) {
			try {
			mav = command.execute(request, response);
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		if(mav !=null) {
			if(mav.isRedirect()) {
				response.sendRedirect(mav.getView());
			}else {
				request.getRequestDispatcher(mav.getView()).forward(request,response);
			}
			
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
