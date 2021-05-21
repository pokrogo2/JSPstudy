package model;

import javax.servlet.http.HttpServletRequest;

public class GugudanService {

	public String execute(HttpServletRequest request) {
		String strDan=request.getParameter("dan");
		int dan =1;
		if(strDan.isEmpty()) {
			dan = Integer.parseInt(strDan);
		}
		StringBuilder sb = new StringBuilder();
		for (int n=1; n<=9; n++) {
			sb.append(dan).append("x").append(n).append("=").append(dan*n).append("<br>");
			
		}
		request.setAttribute("gugudan", sb.toString()); //스트링빌더니까 스트링으로 바꿔서담아줘야함
		return "views/output.jsp";
	}
}
