package member;

import java.util.List;

public interface memberService {
	int insert(memberVO user);
//	int find_id(memberVO user);
	List<memberVO> getMemberList();
//	boolean idCheck(String id);
//	LoginVO login(LoginVO loginUser);
}
