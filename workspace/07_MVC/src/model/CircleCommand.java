package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.ModelAndView;

public class CircleCommand implements ShapeCommand {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		double radius=0;
		try {
			radius=Double.parseDouble(request.getParameter("radius"));
		}catch(Exception e) {
			
		}
		request.setAttribute("area", (radius*radius*Math.PI));
		return new ModelAndView("views/output.jsp",false);
	}

}
