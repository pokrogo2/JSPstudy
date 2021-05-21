package model;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;

public class GetToday {
	//MODEL
	//1.비즈니스 로직을 처리한다.
	//2.Command,Service 등으로 불린다.
	//3.요청받기위해 request사용해야함
	// 결과값 : contraller가 넘겨준 request에 저장
	public String execute(HttpServletRequest request) {
		//날짜를 구하자
		Date today = new Date();
		request.setAttribute("today", today);
		//응답 view 반환
		return "views/output.jsp";
	}
	
}
