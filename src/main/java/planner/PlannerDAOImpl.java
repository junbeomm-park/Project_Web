package planner;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PlannerDAOImpl implements PlannerDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<PlannerVO> eventsList(String writer) {
		return sqlSession.selectList("tour.planner.list", writer);
	}

	@Override
	public int addEvent(PlannerVO planner) {
		return sqlSession.insert("tour.planner.insert", planner);
	}

	@Override
	public int removeEvent(PlannerVO planner) {
		return sqlSession.insert("tour.planner.delete", planner);
	}

	@Override
	public int editEvent(PlannerVO planner) {
		return sqlSession.insert("tour.planner.update", planner);
	}
	
	
}
