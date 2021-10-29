package planner;

import java.util.List;

public interface PlannerDAO {
	List<PlannerVO> eventsList(String writer);
	int addEvent(PlannerVO planner);
	int removeEvent(int id);
	int editEvent(PlannerVO planner);
}
