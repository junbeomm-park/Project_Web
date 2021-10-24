package member;

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
	public memberVO findid(memberVO memberUser) {
		return dao.findid(memberUser);
	}
	@Override
	public memberVO findpass(memberVO memberUser) {
		return dao.findpass(memberUser);
	}
	@Override
	public memberVO login(memberVO loginUser) {
		return dao.login(loginUser);
	}
//	
//	@Override
//	public List<memberVO> getMemberList() {
//		return dao.getMemberList();
//	}
//
//	@Override
//	public boolean idCheck(String id) {
//		return dao.idCheck(id);
//	}
//

}
