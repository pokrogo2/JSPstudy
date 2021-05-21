package model;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//data 클래스는 타입이 두개임
//homeservice랑 dateservice
public class DateService implements HomeService{
	@Override
	public String execute(HttpServletRequest request,HttpServletResponse reponse) {
		
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		request.setAttribute("date", sdf.format(date));
		return "views/output.jsp";
		
		
		
		
	}
}
