package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.ModelAndView;

public class TriangleCommand implements ShapeCommand {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int height=0;
		int width=0;
		try {
			width=Integer.parseInt(request.getParameter("width"));
			height=Integer.parseInt(request.getParameter("height"));
					
		}catch(Exception e) {
		
		}
		request.setAttribute("area", (width*height)/2.0);
		return new ModelAndView("views/output.jsp",false);
	}

}
