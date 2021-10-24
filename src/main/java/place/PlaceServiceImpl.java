package place;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class PlaceServiceImpl implements PlaceService {
	@Autowired
	PlaceDAO dao;
	
	@Override
	public List<PlaceVO> findByCategory(String category) {
		List<PlaceVO> placelist = null;
		if(category!=null) {
			if(category.equals("all")) {
				System.out.println("all");
				placelist = dao.placeList();//카테고리 없이 전체 조회하는 dao의 메소드
			}else {
				placelist = dao.categorySearch(category); //카테고리별 검색
			}
		}
		return placelist;
	}
	
	@Override
	public List<PlaceVO> courseList(String spotareaid) {
		// TODO Auto-generated method stub
		return dao.courseList(spotareaid);
	}

	@Override
	public PlaceVO read(String spotareaid) {
		// TODO Auto-generated method stub
		return dao.read(spotareaid);
	}

	@Override
	public List<PlaceVO> placeList() {
		// TODO Auto-generated method stub
		return dao.placeList();
	}

	@Override
	public int txinsert(PlaceVO Place) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insert(PlaceVO Place) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<PlaceVO> searchList(String search) {
		return dao.searchList(search);
	}

	@Override
	public List<PlaceVO> searchList(String tag, String search) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PlaceVO> pageList() {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public int update(PlaceVO Place) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String Place_no) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<PlaceVO> getMemeberlist() {
		// TODO Auto-generated method stub
		return null;
	}


}
