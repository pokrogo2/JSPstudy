package command.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.ModelAndView;
import dao.MemberDAO;
import dto.MemberDTO;

public class DeleteMemberCommand implements MemberCommand {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		MemberDTO loginDTO = (MemberDTO)session.getAttribute("loginDTO");
		//DAO의 deleteMember() 메소드 호출
		int result = MemberDAO.getInstance().deleteMember(loginDTO.getNo());
		try {
			PrintWriter out= response.getWriter();
			if(result>0) {
				session.invalidate();
				out.println("<script>");
				out.println("alert('탈퇴되었습니다. 이용해주셔서 감사합니다.')");
				out.println("location.href = '/09_MODEL2/index.do");
				out.println("</script>");
			}else {
				out.println("<script>");
				out.println("alert('탈퇴실패 ')");
				out.println("history.back()");
				out.println("</script>");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
