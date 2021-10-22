package course;

import java.sql.Date;

import org.springframework.web.multipart.MultipartFile;

public class CourseVO {
	String courseid;
	String coursename;
	MultipartFile[] files;
	
	public CourseVO(){
		
	}


	
	public CourseVO(String courseid, String coursename, MultipartFile[] files) {
		super();
		this.courseid = courseid;
		this.coursename = coursename;
		this.files = files;
	}



	@Override
	public String toString() {
		return "PlaceVO [courseid=" + courseid + ", coursename=" + coursename +  "]";
	}
	

	


	public String getCoursename() {
		return coursename;
	}



	public void setCoursename(String coursename) {
		this.coursename = coursename;
	}



	public String getCourseid() {
		return courseid;
	}


	public void setCourseid(String courseid) {
		this.courseid = courseid;
	}


	public MultipartFile[] getFiles() {
		return files;
	}


	public void setFiles(MultipartFile[] files) {
		this.files = files;
	}
	
	
}
