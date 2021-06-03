package command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.ModelAndView;
import dao.BoardDAO;

public class DeleteCommand implements BoardCommand {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		long no = Long.parseLong(request.getParameter("no"));
		int result = BoardDAO.getInstance().delete(no);
		return new ModelAndView("/11_MYBATIS/board/deleteResult.jsp", true);
	}

}
