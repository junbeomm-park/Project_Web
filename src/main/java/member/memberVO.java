package member;

public class memberVO {
	private String mem_id; 
	private String mem_nm;
	private String gender;
	private String pwd;
	private String pwd_check;
	private String email;
	private String birth; 
	private String cellno;
	private String addr;
	
	public memberVO() {
		System.out.println("memberVO의 기본생성자");
	}

	//login용
	public memberVO(String mem_id, String pwd) {
		super();
		this.mem_id = mem_id;
		this.pwd = pwd;
	}

	//insert용 + select용
	public memberVO(String mem_id, String mem_nm, String gender, String pwd, String pwd_check, String email, String birth,
			String cellno, String addr) {
		super();
		this.mem_id = mem_id;
		this.mem_nm = mem_nm;
		this.gender = gender;
		this.pwd = pwd;
		this.pwd_check = pwd_check;
		this.email = email;
		this.birth = birth;
		this.cellno = cellno;
		this.addr = addr;
	}
	//find_id용
	public memberVO(String mem_nm, String gender, String birth, String email) {
		super();
		this.mem_nm = mem_nm;
		this.gender = gender;
		this.birth = birth;
		this.email = email;
	}
	//find_pass용
		public memberVO(String mem_id, String mem_nm, String gender, String birth, String email, String cellno) {
			super();
			this.mem_id	= mem_id;
			this.mem_nm = mem_nm;
			this.gender = gender;
			this.birth = birth;
			this.email = email;
			this.cellno = cellno;
		}
	@Override
	public String toString() {
		return "memberVO [mem_id=" + mem_id + ", mem_nm=" + mem_nm + ", gender=" + gender + ", pwd=" + pwd
				+ ", pwd_check=" + pwd_check + ", email=" + email + ", birth=" + birth + ", cellno=" + cellno
				+ ", addr=" + addr + "]";
	}
	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_nm() {
		return mem_nm;
	}

	public void setMem_nm(String mem_nm) {
		this.mem_nm = mem_nm;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPwd_check() {
		return pwd_check;
	}

	public void setPwd_check(String pwd_check) {
		this.pwd_check = pwd_check;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public String getCellno() {
		return cellno;
	}

	public void setCellno(String cellno) {
		this.cellno = cellno;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
}