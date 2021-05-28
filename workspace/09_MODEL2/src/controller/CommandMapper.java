package controller;


import command.member.JoinCommand;
import command.member.JoinPageCommand;
import command.member.LoginCommand;
import command.member.LoginPageCommand;
import command.member.LogoutCommand;
import command.member.MemberCommand;

public class CommandMapper {
	private static CommandMapper instance = new CommandMapper();
	private CommandMapper() {}
	public static CommandMapper getInstance() {
		if (instance ==null) {
			instance = new CommandMapper();
			
		}
		return instance;
	}
	//모든 command의 인터페이스 memberCommand를 구현하는 클래스이므로
	//모든 command는 Membercommand타입을 가진다.
	public MemberCommand getCommand(String cmd) {
		MemberCommand command =null;
		switch(cmd) {
		case "loginPage.m":
			command = new LoginPageCommand();
			break;
		case "joinPage.m":
			command = new JoinPageCommand();
			break;
		case "login.m":
			command= new LoginCommand();
			break;
		case "logout.m":
			command= new LogoutCommand();
			break;
		case "join.m":
			command = new JoinCommand();
			break;
		
	}
		return command;

}
}