package member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class memberServiceImpl implements memberService {
	@Autowired
	memberDAO dao;
	
	@Override
	public int insert(memberVO user) {
		dao.insert(user);
		return 0;
	}
	@Override
	public int find_id(memberVO user) {
		System.out.println("서비스단 insert => dao의 insert를 호출하며 매개변수로 넘어온 객체 전달:"+user);
		dao.find_id(user);
		return 0;
	}
	@Override
	public int find_pass(memberVO user) {
		System.out.println("서비스단 insert => dao의 insert를 호출하며 매개변수로 넘어온 객체 전달:"+user);
		dao.find_id(user);
		return 0;
	}

	@Override
	public List<memberVO> getMemberList() {
		return dao.getMemberList();
	}
//
//	@Override
//	public boolean idCheck(String id) {
//		return dao.idCheck(id);
//	}
//
	@Override
	public memberVO member(memberVO memberUser) {
		return dao.login(memberUser);
	}

}
