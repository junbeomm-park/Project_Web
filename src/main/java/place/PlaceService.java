
package place;

import java.util.List;




public interface PlaceService {
	List<PlaceVO> placeList();
	int txinsert(PlaceVO Place);
	int insert(PlaceVO Place);
	List<PlaceVO> searchList(String search);
	List<PlaceVO> searchList(String tag,String search);
	List<PlaceVO> pageList();
	PlaceVO read(String Place_no);
	int update(PlaceVO Place);
	int delete(String Place_no);
	
	
	List<PlaceVO> findByCategory(String category);
	List<PlaceVO> getMemeberlist();
	
}









