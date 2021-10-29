package planner;

public class PlannerVO {
	String writer;
	int id;
	String title;
	String start_date;
	String end_date;
	String description;
	String allDay;
	
	public PlannerVO() {
	}

	public PlannerVO(String writer, int id, String title, String start_date, String end_date, String description,
			String allDay) {
		super();
		this.writer = writer;
		this.id = id;
		this.title = title;
		this.start_date = start_date;
		this.end_date = end_date;
		this.description = description;
		this.allDay = allDay;
	}

	@Override
	public String toString() {
		return "PlannerVO [writer=" + writer + ", id=" + id + ", title=" + title + ", start_date=" + start_date
				+ ", end_date=" + end_date + ", description=" + description + ", allDay=" + allDay + "]";
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getStart_date() {
		return start_date;
	}

	public void setStart_date(String start_date) {
		this.start_date = start_date;
	}

	public String getEnd_date() {
		return end_date;
	}

	public void setEnd_date(String end_date) {
		this.end_date = end_date;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getallDay() {
		return allDay;
	}

	public void setallDay(String allDay) {
		this.allDay = allDay;
	}

	
}
