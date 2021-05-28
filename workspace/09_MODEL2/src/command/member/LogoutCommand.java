package command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.ModelAndView;
import dao.MemberDAO;
import dto.MemberDTO;

public class LogoutCommand implements MemberCommand {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		//세션의 loginDTO의 로그아웃 기록을 위해 id가 필요
		HttpSession session = request.getSession();
		String id =((MemberDTO)session.getAttribute("loginDTO")).getId();
		//DAO의 logoutLog()호출
		//DB로 보낼 DTO
		
		
		MemberDAO.getInstance().logoutLog(id);
		session.invalidate();
		return new ModelAndView("/09_MODEL2/index.do",true);

}}
