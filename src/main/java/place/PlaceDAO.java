
package place;

import java.util.List;


import place.PlaceVO;

public interface PlaceDAO {
	//관광지전체목록조회
	List<PlaceVO> placeList();
	
	List<PlaceVO> searchList(String search);
	List<PlaceVO> addrList(String search);
	List<PlaceVO> courseList(String spotareaid);
	//게시글조회
	PlaceVO read(String spotareaid);
	//게시글수정
	int update(PlaceVO place);
	//게시글삭제
	int delete(String place_no);
	//카테고리별 검색
	List<PlaceVO> categorySearch(String category);
}
