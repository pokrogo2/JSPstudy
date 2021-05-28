package command.member;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.ModelAndView;
import dao.MemberDAO;
import dto.MemberDTO;

public class JoinCommand implements MemberCommand {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		MemberDTO dto = new MemberDTO(id, pw, name, email);
		int result = MemberDAO.getInstance().join(dto);
		//응답을 만들 printwriter
		PrintWriter out =null;
		try {
		if(result>0) {
				out.println("<script>");
				out.println("alert('가입되었습니다')");
				out.println("location.href='/09_MODEL2/loginPage.m'");
				out.println("</script>");
			}else {
				out.println("<script>");
				out.println("alert('가입실패')");
				out.println("location.href='/09_MODEL2/joinPage.m'");//MAV가 필요가없음. 이동을 이미했으니까.
				out.println("</script>");
			}
		out.flush();
		out.close();
			}catch(Exception e) {
				e.printStackTrace();
			}
		return null;
		}
	}

