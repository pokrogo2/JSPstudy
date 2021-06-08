package dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import dto.Member;
import mybatis.config.DBService;

public class MemberDAO {

	private SqlSessionFactory factory;
	private static MemberDAO instance;
	
	private MemberDAO() {
		factory = DBService.getInstance().getFactory();
	}
	
	public static MemberDAO getInstance() {
		if (instance == null) {
			instance = new MemberDAO();
		}
		return instance;
	}
	
	/* 1. 회원 목록 가져오기 */
	public List<Member> selectMemberList(Map<String,Integer> map) {
		SqlSession ss = factory.openSession();
		List<Member> list = ss.selectList("dao.member.selectMemberList",map);
		ss.close();
		return list;
	}
	public Member selectMemberByNo(long no) {
		SqlSession ss = factory.openSession();
		Member member = ss.selectOne("dao.member.selectMemberByNo", no);
		ss.close();
		return member;
	}
	
	public int updateMember(Member member) {
		SqlSession ss = factory.openSession(false);
		int result = ss.update("dao.member.updateMember",member);
		if(result>0) {
			ss.commit();
		}
		ss.close();
		
		return result;
	}
	public int insertMember(Member member) {
		SqlSession ss = factory.openSession(false);
		int result = ss.insert("dao.member.insertMember",member);
		if(result>0) {
			ss.commit();
		}
		ss.close();
		
		return result;
	}
	public int deleteMember(long no) {
		SqlSession ss = factory.openSession(false);
		int result = ss.delete("dao.member.deleteMember",no);
		if(result>0) {
			ss.commit();
		}
		ss.close();
		
		return result;
	}
	public int getMemberCount() {
		SqlSession ss= factory.openSession();
		int count = ss.selectOne("dao.member.getMemberCount");
		ss.close();
		return count;
	}
	
	
	
	
	
	
	
	
	
	
	
}