package command.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.ModelAndView;
import dao.MemberDAO;
import dto.MemberDTO;

public class LoginCommand implements MemberCommand {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		//DB로 보낼 DTO
		MemberDTO dto = new MemberDTO();
		dto.setId(id);
		dto.setPw(pw);
		MemberDTO loginDTO = MemberDAO.getInstance().login(dto);//dto ->memberDAO->return loginDTO
		//성공유무 확인
		//성공하면 세션,memberlog에 기록
		if(loginDTO !=null) {
			//java는 세션을 request에서 구해서 쓴다.
			HttpSession session = request.getSession();
			session.setAttribute("loginDTO", loginDTO);
			MemberDAO.getInstance().loginLog(dto); //쿼리업데이트됨.
		}
		ModelAndView mav = new ModelAndView("/09_MODEL2/index.do",true);
		return mav;
	}

}
