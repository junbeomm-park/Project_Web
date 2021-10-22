
package course;

import java.util.List;

import place.PlaceVO;

public interface CourseDAO {
	//코스전체목록조회
	List<CourseVO> courseList();
	CourseVO read(String board_no);
	

}
