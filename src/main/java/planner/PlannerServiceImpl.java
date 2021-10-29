package planner;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PlannerServiceImpl implements PlannerService{
	@Autowired
	PlannerDAO dao;

	@Override
	public List<PlannerVO> eventsList(String writer) {
		return dao.eventsList(writer);
	}

	@Override
	public int addEvent(PlannerVO planner) {
		int result = dao.addEvent(planner);
		return result;
	}

	@Override
	public int removeEvent(PlannerVO planner) {
		return 0;
	}

	@Override
	public int editEvent(PlannerVO planner) {
		return 0;
	}
	
}
