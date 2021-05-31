package command.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.ModelAndView;
import dao.MemberDAO;
import dto.MemberDTO;

public class updateMemberCommand implements MemberCommand {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		HttpSession session = request.getSession();
		MemberDTO loginDTO = (MemberDTO)session.getAttribute("loginDTO");
		MemberDTO dto = new MemberDTO();
		dto.setName(name);
		dto.setEmail(email);
		dto.setNo(loginDTO.getNo());
		int result =MemberDAO.getInstance().updateMember(dto);
		try {
			PrintWriter out = response.getWriter();
			if(result > 0) {
				//업데이트
				loginDTO.setName(name);
				loginDTO.setEmail(email);
				//응답 및 이동
				out.println("<script>");
				out.println("alert('회원정보가 수정되었습니다')");
				out.println("location.href='/09_MODEL2/myPage.m'");
				out.println("</script>");
			}else {
				out.println("<script>");
				out.println("alert('회원정보가 수정x')");
				out.println("history.back()");
				out.println("</script>");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
