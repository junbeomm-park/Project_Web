package member;

public interface memberService {
	int insert(memberVO user);
	memberVO findid(memberVO memberUser);
	memberVO findpass(memberVO memberUser);
	memberVO login(memberVO loginUserInfo);
//	List<memberVO> getMemberList();
//	boolean idCheck(String id);
}
