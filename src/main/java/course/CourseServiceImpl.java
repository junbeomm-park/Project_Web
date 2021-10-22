package course;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CourseServiceImpl implements CourseService {
	@Autowired
	CourseDAO dao;
//	
//	@Override
//	public List<CourseVO> findByCategory(String category) {
//		List<CourseVO> placelist = null;
//		if(category!=null) {
//			if(category.equals("all")) {
//				System.out.println("all");
//				placelist = dao.placeList();//카테고리 없이 전체 조회하는 dao의 메소드
//			}else {
//				placelist = dao.categorySearch(category); //카테고리별 검색
//			}
//		}
//		return placelist;
//	}

	@Override
	public List<CourseVO> courseList() {
		// TODO Auto-generated method stub
		return dao.courseList();
	}

	

	@Override
	public List<CourseVO> getMemeberlist() {
		// TODO Auto-generated method stub
		return null;
	}



	@Override
	public CourseVO read(String courseid) {
		// TODO Auto-generated method stub
		return dao.read(courseid);
	}

	

}
