package controller;

import model.AverageCommand;
import model.SubjectCommand;

public class ModelMapper {

	private static ModelMapper mapper = new ModelMapper();
	private ModelMapper() {}
	public static ModelMapper getInstance() {
		if (mapper==null) {
			mapper = new ModelMapper();
		}
		return mapper;
	}
	public SubjectCommand getModel(String cmd) {
		SubjectCommand  command= new AverageCommand();
		
		return command;
		
		
		
	}
}
