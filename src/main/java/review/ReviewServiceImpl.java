package review;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ReviewServiceImpl implements ReviewService {
	@Autowired
	ReviewDAO dao;
	
	@Override
	public List<ReviewVO> reviewList(String spotareaid) {
		return dao.reviewList(spotareaid);
	}

	@Override
	public int insert(ReviewVO review) {
		int result = dao.insert(review);
		return result;
	}

	@Override
	public int update(ReviewVO review) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(ReviewVO review_no) {
		// TODO Auto-generated method stub
		return 0;
	}

}
