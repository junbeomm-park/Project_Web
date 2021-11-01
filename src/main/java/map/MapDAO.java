package map;

import java.util.List;

public interface MapDAO {
	List<MapVO> addrList(String addr);
	int insert(MapVO map);
	
}
