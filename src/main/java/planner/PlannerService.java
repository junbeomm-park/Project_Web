package planner;

import java.util.List;

public interface PlannerService {
	List<PlannerVO> eventsList(String writer);
	int addEvent(PlannerVO planner);
	int removeEvent(PlannerVO planner);
	int editEvent(PlannerVO planner);
}
