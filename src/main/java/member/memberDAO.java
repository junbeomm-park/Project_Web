package member;

public interface memberDAO {
	int insert(memberVO user);
	memberVO findid(memberVO memberUser);
	memberVO findpass(memberVO memberUser);
	memberVO login(memberVO loginUser);
}
