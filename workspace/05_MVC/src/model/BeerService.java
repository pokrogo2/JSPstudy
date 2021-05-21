package model;

import java.util.concurrent.ExecutionException;

import javax.servlet.http.HttpServletRequest;

public class BeerService {

	public String execute(HttpServletRequest request) {
		int age=0;
		try {
			age= Integer.parseInt(request.getParameter("age"));
			
		}catch(Exception e) {
			
		}
	}
}
