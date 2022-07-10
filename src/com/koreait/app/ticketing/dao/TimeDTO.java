package com.koreait.app.ticketing.dao;

public class TimeDTO {
	private int timeid;
	private String starttime;
    private String endtime;
    private String movietitle;
	private int cinemaid;
	public int getTimeid() {
		return timeid;
	}
	public void setTimeid(int timeid) {
		this.timeid = timeid;
	}
	public String getStarttime() {
		return starttime;
	}
	public void setStarttime(String starttime) {
		this.starttime = starttime;
	}
	public String getEndtime() {
		return endtime;
	}
	public void setEndtime(String endtime) {
		this.endtime = endtime;
	}
	public String getMovietitle() {
		return movietitle;
	}
	public void setMovietitle(String movietitle) {
		this.movietitle = movietitle;
	}
	public int getCinemaid() {
		return cinemaid;
	}
	public void setCinemaid(int cinemaid) {
		this.cinemaid = cinemaid;
	}
    
}
