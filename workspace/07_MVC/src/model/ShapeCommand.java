package model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.ModelAndView;

public interface ShapeCommand {
	//public String execute(HttpServletRequest request,HttpServletResponse response);
	//응답 view만 반환
	//응답 view와 이동방법
	public ModelAndView execute(HttpServletRequest request, HttpServletResponse response);
}
