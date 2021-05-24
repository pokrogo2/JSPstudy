package controller;

import model.CircleCommand;
import model.RectangleCommand;
import model.ShapeCommand;
import model.TriangleCommand;

public class ModelMapper {
	//한번에 하나의 모델만 반환하는 싱글톤
	private static ModelMapper mapper = new ModelMapper();
	private ModelMapper() {}
	public static ModelMapper getInstance() {
		if (mapper==null) {
			mapper = new ModelMapper();
		}
		return mapper;
	}
	
	
	public ShapeCommand getModel(String cmd) {
		ShapeCommand command = null;
		switch(cmd) {
		case "rectangle.do":
			command = new RectangleCommand();
			break;
		case "triangle.do":
			command = new TriangleCommand();
			break;
		case "circle.do":
			command= new CircleCommand();
			break;
		}
		return command;
	}
	
}
