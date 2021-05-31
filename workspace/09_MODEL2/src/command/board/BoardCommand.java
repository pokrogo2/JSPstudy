package command.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import common.ModelAndView;

public interface BoardCommand {
	public ModelAndView execute(HttpServletRequest request,HttpServletResponse response);
}
