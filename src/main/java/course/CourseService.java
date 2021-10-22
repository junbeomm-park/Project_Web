
package course;

import java.util.List;




public interface CourseService {
	List<CourseVO> courseList();
	
	List<CourseVO> getMemeberlist();

	CourseVO read(String courseid);
	
}









