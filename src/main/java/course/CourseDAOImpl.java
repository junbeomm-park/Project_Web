
package course;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import place.PlaceVO;
//MyBatis에서 제공하는 기능을 이용해서 DB액세스 - CLRUD 처리
@Repository
public class CourseDAOImpl implements CourseDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<CourseVO> courseList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("tour.course.list");
		
		
	}

	public CourseVO read(String courseid) {
		//sql 실행결과가 레코드 하나 인경우
		return sqlSession.selectOne("tour.course.read", courseid);
	}

	
	}



	


