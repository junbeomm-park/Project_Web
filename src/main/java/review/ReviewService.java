package review;

import java.util.List;

public interface ReviewService {
	List<ReviewVO> reviewList();
	int insert(ReviewVO review);
	int update(ReviewVO review);
	int delete(ReviewVO review_no);
}
