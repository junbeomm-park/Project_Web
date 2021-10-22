package place;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class PlaceVO {
	String spotareaid;
	String spotname;
	String spotareaname;
	String addr;
	String courseid;
	String category;
	String image;
	String content;
	String latitude;
	String longitude;
	String tag;
	MultipartFile[] files;
	
	public PlaceVO(){
		
	}

	public PlaceVO(String spotareaid, String spotname, String spotareaname, String addr, String courseid, String category,
			String image, String content, String latitude, String longitude, String tag,
			MultipartFile[] files) {
		super();
		this.spotareaid = spotareaid;
		this.spotname = spotname;
		this.spotareaname = spotareaname;
		this.addr = addr;
		this.courseid = courseid;
		this.category = category;
		this.image = image;
		this.content = content;
		this.latitude = latitude;
		this.longitude = longitude;
		this.tag = tag;
		this.files = files;
	}
	@Override
	public String toString() {
		return "PlaceVO [spotareaid=" + spotareaid + ", spotname=" + spotname + ", spotareaname=" + spotareaname + ", addr=" + addr
				+ ", courseid=" + courseid + ", category=" + category + ", image=" + image + ", content=" + content
				+ ", latitude=" + latitude + ", longitude=" + longitude + ", tag=" + tag + "]";
	}


	public String getSpotareaid() {
		return spotareaid;
	}

	public void setSpotareaid(String spotareaid) {
		this.spotareaid = spotareaid;
	}

	public String getSpotname() {
		return spotname;
	}

	public void setSpotname(String spotname) {
		this.spotname = spotname;
	}

	public String getSpotareaname() {
		return spotareaname;
	}

	public void setSpotareaname(String spotareaname) {
		this.spotareaname = spotareaname;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getCourseid() {
		return courseid;
	}

	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getLatitude() {
		return latitude;
	}

	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}

	public String getLongitude() {
		return longitude;
	}

	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}

	public String getTag() {
		return tag;
	}

	public void setTag(String tag) {
		this.tag = tag;
	}

	public MultipartFile[] getFiles() {
		return files;
	}

	public void setFiles(MultipartFile[] files) {
		this.files = files;
	}
}

