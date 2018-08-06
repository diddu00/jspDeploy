package kr.or.ddit.student.model;

import java.util.Date;

public class StudentVo {
	private int id;			//학생아이디
	private String name;	//학생이름
	private int call_count;	//호출횟수 
	private Date reg_dt;    //등록일수
	private String add1;	//주소
	private String add2;	//상세주소
	private String zipcd;	//우편번호
	private String pic;		//프로필사진
	private String picpath;	//파일경로
	private String picname; //파일이름
	
	public StudentVo() {
	}
	
	
	
	public String getPicname() {
		return picname;
	}



	public void setPicname(String picname) {
		this.picname = picname;
	}



	public String getAdd1() {
		return add1;
	}



	public void setAdd1(String add1) {
		this.add1 = add1;
	}



	public String getAdd2() {
		return add2;
	}



	public void setAdd2(String add2) {
		this.add2 = add2;
	}



	public String getZipcd() {
		return zipcd;
	}



	public void setZipcd(String zipcd) {
		this.zipcd = zipcd;
	}



	public String getPic() {
		return pic;
	}



	public void setPic(String pic) {
		this.pic = pic;
	}



	public String getPicpath() {
		return picpath;
	}



	public void setPicpath(String picpath) {
		this.picpath = picpath;
	}



	public Date getReg_dt() {
		return reg_dt;
	}


	public void setReg_dt(Date reg_dt) {
		this.reg_dt = reg_dt;
	}


	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCall_count() {
		return call_count;
	}
	public void setCall_count(int call_count) {
		this.call_count = call_count;
	}

	@Override
	public String toString() {
		return "StudentVo [id=" + id + ", name=" + name + ", call_count="
				+ call_count + "]";
	}
	

	
	
}
