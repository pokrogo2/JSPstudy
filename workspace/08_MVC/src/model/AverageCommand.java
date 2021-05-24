package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.ModelAndView;

public class AverageCommand implements SubjectCommand {

	@Override
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		int kor=0;
		int mat=0;
		int eng=0;
		double result=0;
		try {
			kor=Integer.parseInt(request.getParameter("kor"));
			mat=Integer.parseInt(request.getParameter("mat"));
			eng=Integer.parseInt(request.getParameter("eng"));
			result = (kor+eng+mat)/3;
			
		}catch(Exception e) {
			
		}
		request.setAttribute("average", result);
		if(result>=90) {
			request.setAttribute("grade", "A");
		}else if(result>=80) {
			request.setAttribute("grade", "B");
		}
		else if(result>=70) {
			request.setAttribute("grade", "C");
		}else {
			request.setAttribute("grade", "F");
			
		}
		
		return new ModelAndView("views/output.jsp",false);
	}

}
