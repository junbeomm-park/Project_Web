
package place;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import place.PlaceVO;
//MyBatis에서 제공하는 기능을 이용해서 DB액세스 - CLRUD 처리
@Repository
public class PlaceDAOImpl implements PlaceDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<PlaceVO> placeList() {
		// TODO Auto-generated method stub
		return sqlSession.selectList("tour.place.list");
		
		
	}

	@Override
	public PlaceVO read(String spotareaid) {
		// TODO Auto-generated method stub
		System.out.println("+++++++++++++++++"+spotareaid);
		return sqlSession.selectOne("tour.place.read", spotareaid);
	}

	@Override
	public List<PlaceVO> categorySearch(String category) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("tour.place.category", category);
	}

	@Override
	public int insert(PlaceVO place) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<PlaceVO> searchList(String search) {
		// TODO Auto-generated method stub
		return null;
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
	public int update(PlaceVO place) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(String place_no) {
		// TODO Auto-generated method stub
		return 0;
	}



	

}
