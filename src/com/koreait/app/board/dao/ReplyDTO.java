package com.koreait.app.board.dao;

public class ReplyDTO {
	private int replynum;
    private String userid;
    private int boardnum;
    private String replycontents;
    private String regdate;
    private String updatechk;
    
	public int getReplynum() {
		return replynum;
	}
	public void setReplynum(int replynum) {
		this.replynum = replynum;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getBoardnum() {
		return boardnum;
	}
	public void setBoardnum(int boardnum) {
		this.boardnum = boardnum;
	}
	public String getReplycontents() {
		return replycontents;
	}
	public void setReplycontents(String replycontents) {
		this.replycontents = replycontents;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getUpdatechk() {
		return updatechk;
	}
	public void setUpdatechk(String updatechk) {
		this.updatechk = updatechk;
	}
}
