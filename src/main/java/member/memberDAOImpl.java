package member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

//MyBatis에서 제공하는 기능을 이용해서 DB 액세스 - CLRUD처리
@Repository
public class memberDAOImpl implements memberDAO {
	@Autowired
	SqlSession sqlSession;
	@Override
	public int insert(memberVO user) {
		sqlSession.insert("tour.member.insert", user);
		return 0;
	}
	@Override
	public memberVO findid(memberVO memberUser) {
		memberVO memberOkUser = sqlSession.selectOne("tour.member.find_id", memberUser);
		return memberOkUser;
	}
	@Override
	public memberVO findpass(memberVO memberUser) {
		memberVO memberOkUser = sqlSession.selectOne("tour.member.find_pass", memberUser);
		return memberOkUser;
	}
	@Override
	public memberVO login(memberVO loginUser) {
		System.out.println("loginUser=>"+loginUser +"확인2");
		memberVO loginOkUser = sqlSession.selectOne("tour.member.login/ok", loginUser);
		System.out.println("결과=>"+loginOkUser);
		return loginOkUser;
	}
//	@Override
//	public List<memberVO> getMemberList() {
//		return  sqlSession.selectList("tour.member.list");
//	}
//
//	@Override
//	public boolean idCheck(String id) {
//		boolean result = false;
//		//primary key를 비교하는 sql문은 결과가 레코드 하나
//		//=> SqlSession의 메소드 => selectOne
//		LoginVO user = sqlSession.selectOne("tour.member.idcheck", id);
//		if(user!=null) {
//			result = true;//아이디가 있으면 true
//		}
//		return result; //아이디가 없으면 false 
//	}
//


}




