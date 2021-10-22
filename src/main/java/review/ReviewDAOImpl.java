package review;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
@Repository
public class ReviewDAOImpl implements ReviewDAO {
	@Autowired
	SqlSession sqlSession;
	
	@Override
	public List<ReviewVO> reviewList(String spotareaid) {
		return sqlSession.selectList("tour.review.list",spotareaid);
	}

	@Override
	public int insert(ReviewVO review) {
		int result = sqlSession.insert("tour.review.insert", review);
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
