package com.hb.star.model;

import java.sql.Date;

public class ProductVo {
	private int no;
	private String title;
	private String content;
	private String originalfilename;
	private String newfilename;	
	private Date nalja;
	private String category;


	public ProductVo() {
		// TODO Auto-generated constructor stub
	}


	public ProductVo(int no, String title, String content,
			String originalfilename, String newfilename, Date nalja,
			String category) {
		super();
		this.no = no;
		this.title = title;
		this.content = content;
		this.originalfilename = originalfilename;
		this.newfilename = newfilename;
		this.nalja = nalja;
		this.category = category;
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


	public Date getNalja() {
		return nalja;
	}


	public void setNalja(Date nalja) {
		this.nalja = nalja;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	@Override
	public String toString() {
		return "ProductVo [no=" + no + ", title=" + title + ", content="
				+ content + ", originalfilename=" + originalfilename
				+ ", newfilename=" + newfilename + ", nalja=" + nalja
				+ ", category=" + category + "]";
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((category == null) ? 0 : category.hashCode());
		result = prime * result + ((content == null) ? 0 : content.hashCode());
		result = prime * result
				+ ((newfilename == null) ? 0 : newfilename.hashCode());
		result = prime * result + no;
		result = prime
				* result
				+ ((originalfilename == null) ? 0 : originalfilename.hashCode());
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
		ProductVo other = (ProductVo) obj;
		if (category == null) {
			if (other.category != null)
				return false;
		} else if (!category.equals(other.category))
			return false;
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
		if (title == null) {
			if (other.title != null)
				return false;
		} else if (!title.equals(other.title))
			return false;
		return true;
	}
}