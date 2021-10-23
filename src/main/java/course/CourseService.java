
package course;

import java.util.List;




public interface CourseService {
	
	List<CourseVO> getMemeberlist();

	CourseVO read(String courseid);
	CourseVO courseName(String spotareaid);
}









