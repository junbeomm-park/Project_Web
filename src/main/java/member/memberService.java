package member;

import java.util.List;

public interface memberService {
	int insert(memberVO user);
	int find_id(memberVO user);
	int find_pass(memberVO user);
	List<memberVO> getMemberList();
//	boolean idCheck(String id);
	memberVO member(memberVO memberUser);
}
