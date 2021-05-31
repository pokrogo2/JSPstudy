package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import dto.MemberDTO;

public class MemberDAO {
	private Connection con;
	private PreparedStatement ps;
	private ResultSet rs;
	private String sql;
	
	private static DataSource dataSource;//커넥션풀 관리하는 객체
	static {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/oracle"); //톰캣용
		}catch(NamingException e) {
			e.printStackTrace();
		}
	}
	//싱글톤
	private static MemberDAO instance = new MemberDAO();
	private MemberDAO() {}
	public static MemberDAO getInstance() {
		if(instance==null) {
			instance = new MemberDAO();
		}
		return instance;
	}
	//접속해제
	public void close(Connection con, PreparedStatement ps, ResultSet rs) {
		try {
			if(con!=null) {con.close();}
			if(ps!=null) {ps.close();}
			if(rs!=null) {rs.close();}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	public MemberDTO login(MemberDTO dto) {
		MemberDTO loginDTO = null;
		try {
			System.out.println(dto);
			con= dataSource.getConnection(); // datasource가 커넥션을 가지고있으니 가져오면됨.
			//커넥션은 메소드마다 열닫하는게 좋음.
			sql="SELECT NO,ID,PW,NAME,EMAIL,REGDATE FROM MEMBER WHERE ID=? AND PW=?";
			ps=con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPw());
			rs=ps.executeQuery();
			if(rs.next()) {
				loginDTO = new MemberDTO();
				loginDTO.setNo(rs.getLong(1));
				loginDTO.setId(rs.getString(2));
				loginDTO.setPw(rs.getString(3));
				loginDTO.setName(rs.getString(4));
				loginDTO.setEmail(rs.getString(5));
				loginDTO.setRegdate(rs.getDate(6));
				System.out.println(loginDTO);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(con, ps, rs);
		}
		return loginDTO;
	}
	//로그남기기
	public void loginLog(MemberDTO dto) {
		try {
			con = dataSource.getConnection();
			sql = "INSERT INTO MEMBER_LOG VALUES (MEMBER_LOG_SEQ.NEXTVAL,?,SYSDATE,NULL)";
			ps =con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(con, ps, null);
		}
		
	}
	//로그아웃 로그 남기기
	public void logoutLog(String id) {
		try {
			con = dataSource.getConnection();
			sql = "UPDATE MEMBER_LOG SET LOGOUT = SYSDATE WHERE ID=? AND LOGOUT IS NULL";
			ps = con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(con,ps,null);
		}
	}
	//회원가입
	public int join(MemberDTO dto) {
		int result =0;
		try {
			con = dataSource.getConnection();
			sql = "INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,?,?,?,?,SYSDATE)";
			ps =con.prepareStatement(sql);
			ps.setString(1, dto.getId());
			ps.setString(2, dto.getPw());
			ps.setString(3, dto.getName());
			ps.setString(4, dto.getEmail());
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(con, ps, null);
		}
		return result;
	}
	public int updatePw(MemberDTO dto) {
		int result = 0;
		try {
			con = dataSource.getConnection();
			sql = "UPDATE MEMBER SET PW = ? WHERE NO = ?";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getPw());
			ps.setLong(2, dto.getNo());
			result = ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}
		finally {
			close(con, ps, null);
		}
		return result;
	}
	
	public int updateMember(MemberDTO dto) {
		int  result =0;
		try {
			con = dataSource.getConnection();
			sql = "UPDATE MEMBER SET NAME= ? , EMAIL = ? WHERE  NO = ? ";
			ps = con.prepareStatement(sql);
			ps.setString(1, dto.getName());
			ps.setString(2, dto.getEmail());
			ps.setLong(3, dto.getNo());
			result =ps.executeUpdate();
		}catch(Exception e ) {
			e.printStackTrace();
		}finally {
			close(con,ps,null);
		}
		
		return result;
	}
	public int deleteMember(long no) {
		int result = 0;
		try {
			con = dataSource.getConnection();
			sql = "DELETE FROM MEMBER WHERE NO=?";
			ps = con.prepareStatement(sql);
			ps.setLong(1, no);
			result=ps.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(con,ps,null);
		}
		return result;
	}
	public void deleteMemberLog(String id) {
		try {
			con = dataSource.getConnection();
			sql = "DELETE FROM MEMBER_LOG WHERE ID =?";
			ps= con.prepareStatement(sql);
			ps.setString(1, id);
			ps.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(con,ps,null);
		}
	}
	
}
