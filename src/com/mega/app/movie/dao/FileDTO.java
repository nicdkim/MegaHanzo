package com.mega.app.movie.dao;

public class FileDTO {
	private String systemname;
	private String orgname;
	private int movieid;
	
	public String getSystemname() {
		return systemname;
	}
	public void setSystemname(String systemname) {
		this.systemname = systemname;
	}
	public String getOrgname() {
		return orgname;
	}
	public void setOrgname(String orgname) {
		this.orgname = orgname;
	}
	public int getMovieid() {
		return movieid;
	}
	public void setMovieid(int movieid) {
		this.movieid = movieid;
	}
}
