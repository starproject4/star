package com.hb.star.model;

import java.sql.Date;

public class EventVo {
	private int no;
	private String title;
	private String content;
	private Date nalja;
	private int sub_no;
	private String originalfilename;
	private String newfilename;	

	public EventVo() {
		// TODO Auto-generated constructor stub
	}

	public EventVo(int no, String title, String content, Date nalja,
			int sub_no, String originalfilename, String newfilename) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.nalja = nalja;
		this.sub_no = sub_no;
		this.originalfilename = originalfilename;
		this.newfilename = newfilename;
	}

	public int getNo() {
		return no;
	}

	public void setNo(int no) {
		this.no = no;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getNalja() {
		return nalja;
	}

	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}

	public int getSub_no() {
		return sub_no;
	}

	public void setSub_no(int sub_no) {
		this.sub_no = sub_no;
	}

	public String getOriginalfilename() {
		return originalfilename;
	}

	public void setOriginalfilename(String originalfilename) {
		this.originalfilename = originalfilename;
	}

	public String getNewfilename() {
		return newfilename;
	}

	public void setNewfilename(String newfilename) {
		this.newfilename = newfilename;
	}

	@Override
	public String toString() {
		return "EventVo [no=" + no + ", title=" + title + ", content="
				+ content + ", nalja=" + nalja + ", sub_no=" + sub_no
				+ ", originalfilename=" + originalfilename + ", newfilename="
				+ newfilename + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result
				+ ((newfilename == null) ? 0 : newfilename.hashCode());
		result = prime * result + no;
		result = prime
				* result
				+ ((originalfilename == null) ? 0 : originalfilename.hashCode());
		result = prime * result + sub_no;
		result = prime * result + ((title == null) ? 0 : title.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		EventVo other = (EventVo) obj;
		if (content == null) {
			if (other.content != null)
				return false;
		} else if (!content.equals(other.content))
			return false;
		if (newfilename == null) {
			if (other.newfilename != null)
				return false;
		} else if (!newfilename.equals(other.newfilename))
			return false;
		if (no != other.no)
			return false;
		if (originalfilename == null) {
			if (other.originalfilename != null)
				return false;
		} else if (!originalfilename.equals(other.originalfilename))
			return false;
		if (sub_no != other.sub_no)
			return false;
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}

}