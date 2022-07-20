package com.mega.app.movie.dao;
/*variable 이름 내가 좀 만지다가 실수함. 나중에 고칠것*/
public class ReviewDTO {
	private int reviewid;
	private String userid;
    private int movieid;
    private String reviewcontents;
    private int reviewstar;
    private int readcount;
	private String reviewdate;
    private String updatechk;
    
    
	public int getReviewid() {
    	return reviewid;
    }
    public void setReviewid(int reviewid) {
    	this.reviewid = reviewid;
    }
    public String getUserid() {
    	return userid;
    }
    public void setUserid(String userid) {
    	this.userid = userid;
    }
    public int getMovieid() {
    	return movieid;
    }
    public void setMovieid(int movieid) {
    	this.movieid = movieid;
    }
    public String getReviewcontents() {
    	return reviewcontents;
    }
    public void setReviewcontents(String reviewcontents) {
    	this.reviewcontents = reviewcontents;
    }
    public int getReviewstar() {
    	return reviewstar;
    }
    public void setReviewstar(int reviewstar) {
    	this.reviewstar = reviewstar;
    }
    public int getReadcount() {
    	return readcount;
    }
    public void setReadcount(int readcount) {
    	this.readcount = readcount;
    }
    public String getReviewdate() {
    	return reviewdate;
    }
    public void setReviewdate(String reviewdate) {
    	this.reviewdate = reviewdate;
    }
    public String getUpdatechk() {
    	return updatechk;
    }
    public void setUpdatechk(String updatechk) {
    	this.updatechk = updatechk;
    }
}
