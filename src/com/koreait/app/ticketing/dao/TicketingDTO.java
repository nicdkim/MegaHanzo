package com.koreait.app.ticketing.dao;

public class TicketingDTO {
	private String ticketingid;
    private String ticketingdate;
    private int ticketingprice;
    private String movietitle;
	private String userid;
	private String seatid;
    private int cinemaid;
    private int timeid;
    
    
	public String getTicketingid() {
		return ticketingid;
	}
	public void setTicketingid(String ticketingid) {
		this.ticketingid = ticketingid;
	}
	public String getTicketingdate() {
		return ticketingdate;
	}
	public void setTicketingdate(String ticketingdate) {
		this.ticketingdate = ticketingdate;
	}
	public int getTicketingprice() {
		return ticketingprice;
	}
	public void setTicketingprice(int ticketingprice) {
		this.ticketingprice = ticketingprice;
	}
	public String getMovietitle() {
		return movietitle;
	}
	public void setMovietitle(String movietitle) {
		this.movietitle = movietitle;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getSeatid() {
		return seatid;
	}
	public void setSeatid(String seatid) {
		this.seatid = seatid;
	}
	public int getCinemaid() {
		return cinemaid;
	}
	public void setCinemaid(int cinemaid) {
		this.cinemaid = cinemaid;
	}
	public int getTimeid() {
		return timeid;
	}
	public void setTimeid(int timeid) {
		this.timeid = timeid;
	}
    
}
