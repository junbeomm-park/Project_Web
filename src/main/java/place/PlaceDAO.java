
package place;

import java.util.List;


import place.PlaceVO;

public interface PlaceDAO {
	//게시글전체목록조회
	List<PlaceVO> placeList();
	//게시글등록하기
	int insert(PlaceVO place);
	List<PlaceVO> searchList(String search);
	List<PlaceVO> searchList(String tag,String search);
	List<PlaceVO> pageList();
	//게시글조회
	PlaceVO read(String spotareaid);
	//게시글수정
	int update(PlaceVO place);
	//게시글삭제
	int delete(String place_no);
	//카테고리별 검색
	List<PlaceVO> categorySearch(String category);
}
