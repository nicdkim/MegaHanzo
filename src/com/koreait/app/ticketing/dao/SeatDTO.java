package com.koreait.app.ticketing.dao;

public class SeatDTO {
	private int seatid;
    private String seatnum;
    private int cinemaid;
    private int seatoccupied;
	public int getSeatid() {
		return seatid;
	}
	public void setSeatid(int seatid) {
		this.seatid = seatid;
	}
	public String getSeatnum() {
		return seatnum;
	}
	public void setSeatnum(String seatnum) {
		this.seatnum = seatnum;
	}
	public int getCinemaid() {
		return cinemaid;
	}
	public void setCinemaid(int cinemaid) {
		this.cinemaid = cinemaid;
	}
	public int getSeatoccupied() {
		return seatoccupied;
	}
	public void setSeatoccupied(int seatoccupied) {
		this.seatoccupied = seatoccupied;
	}
}
