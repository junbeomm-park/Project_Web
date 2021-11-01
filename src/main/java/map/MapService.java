package map;

import java.util.List;

public interface MapService {
	List<MapVO> addrList(String addr);
	int insert(MapVO map);
	
}
