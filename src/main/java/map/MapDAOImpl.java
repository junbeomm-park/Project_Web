package map;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class MapDAOImpl implements MapDAO {
	@Autowired
	SqlSession sqlSession;

	@Override
	public List<MapVO> addrList(String addr) {
		// TODO Auto-generated method stub
		return sqlSession.selectList("tour.map.list", addr);
	}

	@Override
	public int insert(MapVO map) {
		return sqlSession.insert("tour.map.insert", map);
	}

	
	
	
}
