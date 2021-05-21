package model;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TimeService implements HomeService {
	@Override
public String execute(HttpServletRequest request,HttpServletResponse reponse) {
		
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("H:mm:ss");
		request.setAttribute("time", sdf.format(date));
		return "views/output.jsp";
		
		
		
		
	}
}
