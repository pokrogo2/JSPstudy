package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.ModelAndView;

public class RectangleCommand implements ShapeCommand {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int width = 0;
		int height=0;
		try {
			width =Integer.parseInt(request.getParameter("width"));
			height=Integer.parseInt(request.getParameter("height"));
		}catch(Exception e) {
			
		}
		request.setAttribute("area", width*height);
		//modelandview
		return new ModelAndView("views/output.jsp",false);
	}

}
