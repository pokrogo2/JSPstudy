package command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.ModelAndView;
import dao.BoardDAO;
import dto.BoardDTO;

public class SelectOneBoardCommand implements BoardCommand {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		long idx = Long.parseLong(request.getParameter("idx"));
		
		BoardDTO dto = BoardDAO.getInstance().selectOneBoardByIdx(idx);
		
		//조회수 증가
		BoardDAO.getInstance().updateHit(idx);
		//dao의 updateHit()메소드 호출
		//어디로
		ModelAndView mav = new ModelAndView("/board/viewBoard.jsp",false);
		return mav;
	}

}
