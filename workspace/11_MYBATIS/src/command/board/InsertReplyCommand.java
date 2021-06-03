package command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.ModelAndView;
import dao.BoardDAO;
import dto.BoardDTO;

public class InsertReplyCommand implements BoardCommand {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		String author = request.getParameter("author");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		String ip = request.getRemoteAddr();
		long groupno = Long.parseLong(request.getParameter("groupno"));
		BoardDTO replyDTO = new BoardDTO();
		replyDTO.setAuthor(author);
		replyDTO.setTitle(title);
		replyDTO.setContent(content);
		replyDTO.setIp(ip);
		replyDTO.setGroupno(groupno);
		replyDTO.setDepth(1);
		replyDTO.setGroupord(1);
		//기존댓글들의 groupord를 1씩증가
		//기존댓글 구분 1.같은 그룹no + depth가 1 
		//같은 groupno + groupord가 0초과
		BoardDAO.getInstance().incresGroupordPreviousReply(groupno);
		
	
		int result = BoardDAO.getInstance().insertReply(replyDTO);
		//결과 처리할 insertResult .jsp만들고 이동
		
		
		return new ModelAndView("/11_MYBATIS/board/insertReplyResult.jsp?result="+result, true);
	}

}
