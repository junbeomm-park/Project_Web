package map;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MapServiceImpl implements MapService{
	@Autowired
	MapDAO dao;

	@Override
	public List<MapVO> addrList(String addr) {
		return dao.addrList(addr);
	}

	@Override
	public int insert(MapVO map) {
		return dao.insert(map);
	}

		
}
