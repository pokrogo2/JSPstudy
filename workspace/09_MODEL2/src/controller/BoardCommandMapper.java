package controller;

import command.board.BoardCommand;
import command.board.FindBoardCommnad;
import command.board.InsertBoardCommand;
import command.board.InsertBoardPageCommand;
import command.board.SelectOneBoardCommand;
import command.board.UpdateBoardCommand;
import command.board.selectListBoardCommand;

public class BoardCommandMapper {
	private static BoardCommandMapper instance = new BoardCommandMapper();
	private BoardCommandMapper() {}
	public static BoardCommandMapper getInstance() {
		if (instance ==null) {
			instance = new BoardCommandMapper();
			
		}
		return instance;
	}
	
	public BoardCommand getCommand(String cmd) {
		
		BoardCommand command=null;
		switch(cmd) {
		case "selectListBoardPage.b":
			command = new selectListBoardCommand();
			break;
		case "insertBoardPage.b":
			command = new InsertBoardPageCommand();
			break;
		case "insertBoard.b":
			command = new InsertBoardCommand();
			break;
		case "selectOneBoard.b":
			command = new SelectOneBoardCommand();
			break;
		case "findBoard.b":
			command= new FindBoardCommnad();
			break;
		case "updateBoard.b":
			command=new UpdateBoardCommand();
			break;
		}
		return command;
	}
}
