package review;

import java.sql.Date;

public class ReviewVO {
	String id;
	String score;
	String content;
	Date write_date;
	String spotareaid;
	
	public ReviewVO() {
		
	}

	public ReviewVO(String id, String score, String content, Date write_date, String spotareaid) {
		super();
		this.id = id;
		this.score = score;
		this.content = content;
		this.write_date = write_date;
		this.spotareaid = spotareaid;
	}

	
	public String getSpotareaid() {
		return spotareaid;
	}

	public void setSpotareaid(String spotareaid) {
		this.spotareaid = spotareaid;
	}

	@Override
	public String toString() {
		return "ReviewVO [id=" + id + ", score=" + score + ", content=" + content + ", write_date=" + write_date
				+ ", spotareaid=" + spotareaid + "]";
	}

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getScore() {
		return score;
	}
	public void setScore(String score) {
		this.score = score;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWrite_date() {
		return write_date;
	}
	public void setWrite_date(Date write_date) {
		this.write_date = write_date;
	}
	
	
	
}
