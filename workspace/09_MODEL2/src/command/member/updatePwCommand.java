package command.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.ModelAndView;
import dao.MemberDAO;
import dto.MemberDTO;

public class updatePwCommand implements MemberCommand {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//session에서 로그인 dto 정보알아내기
		HttpSession session = request.getSession();
		MemberDTO loginDTO = (MemberDTO)session.getAttribute("loginDTO");
		String pw = request.getParameter("pw");
		MemberDTO dto = new MemberDTO();
		dto.setPw(pw);
		dto.setNo(loginDTO.getNo());
		int result = MemberDAO.getInstance().updatePw(dto);
		try {
			PrintWriter out = response.getWriter();
			if(result>0) {
				loginDTO.setPw(pw);
				//응답 및 이동
				out.println("<script>");
				out.println("alert('비밀번호가 변경되었습니다.')");
				out.println("location.href = '/09_MODEL2/myPage.m");
				out.println("/<script>");
				
				
				
			}else {
				out.println("<script>");
				out.println("alert('비밀번호가 수정x.')");
				out.println("location.href = '/09_MODEL2/myPage.m");
				out.println("/<script>");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
