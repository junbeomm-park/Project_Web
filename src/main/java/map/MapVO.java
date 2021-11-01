package map;

public class MapVO {
	String addr;
	String spotname;
	
	public MapVO() {
	}

	public MapVO(String addr, String spotname) {
		super();
		this.addr = addr;
		this.spotname = spotname;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getSpotname() {
		return spotname;
	}

	public void setSpotname(String spotname) {
		this.spotname = spotname;
	}

	@Override
	public String toString() {
		return "MapVO [addr=" + addr + ", spotname=" + spotname + "]";
	}
	
	

}