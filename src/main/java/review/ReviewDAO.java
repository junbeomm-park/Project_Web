package review;

import java.util.List;

public interface ReviewDAO {
	//리뷰목록조회
	List<ReviewVO> reviewList();
	//리뷰 입력
	int insert(ReviewVO review);
	//리뷰수정
	int update(ReviewVO review);
	//리뷰삭제
	int delete(ReviewVO review_no);
}
