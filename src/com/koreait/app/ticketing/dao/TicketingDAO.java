package com.koreait.app.ticketing.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.koreait.mybatis.SqlMapConfig;

public class TicketingDAO {
	
	public TicketingDAO() {
		sqlsession = SqlMapConfig.getFactory().openSession(true);
	}
	
	SqlSession sqlsession;
	
	public int getTimeCnt(String movietitle) {
		return sqlsession.selectOne("Ticketing.getTimeCnt");
	}

	public List<TimeDTO> getTicketingTimeList(int startRow, int pageSize, String movietitle) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		List<TimeDTO> result;
		System.out.println("startRow: " + startRow);
		System.out.println("pageSize: " + pageSize);
		System.out.println("movietitle: " + movietitle);
		datas.put("startRow",startRow);
		datas.put("pageSize",pageSize);
		datas.put("movietitle",movietitle);
		result = sqlsession.selectList("Ticketing.getTicketingTimeList",datas);
		return result;
	}
	
	public List<TicketingDTO> getUserTicketingList(int startRow, int pageSize, String userid){
		List<TicketingDTO> result;
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("startRow",startRow);
		datas.put("pageSize",pageSize);
		datas.put("userid",userid);
		result = sqlsession.selectList("Ticketing.getUserTicketingList",datas);
		return result;
	}
	
	public List<TimeDTO> getTimeListByTitle(String movietitle) {
		List<TimeDTO> result;
		result = sqlsession.selectList("Ticketing.getTimeListByTitle",movietitle);
		return result;
	}
	
	
	
	public List<TimeDTO> getTimeList(){
		List<TimeDTO> result;
		result = sqlsession.selectList("Ticketing.getTimeList");
		return result;
	}
	
	public List<CinemaDTO> getTicketingCinemaList() {
		List<CinemaDTO> result;
		result = sqlsession.selectList("Ticketing.getTicketingCinemaList");
		return result;
	}
	
	public List<SeatDTO> getSeatList(int cinemaid){
		List<SeatDTO> result;
		result = sqlsession.selectList("Ticketing.getSeatList",cinemaid);
		System.out.println(result);
		return result;
	}
	
	public List<SeatDTO> getOccupiedList(){
		List<SeatDTO> result;
		result = sqlsession.selectList("Ticketing.getOccupiedList");
		return result;
	}
	
	public boolean insertTime(TimeDTO time) {
		return 1 == sqlsession.insert("Ticketing.insertTime", time);
	}
	
	public boolean insertTicketing(TicketingDTO ticketing) {
		return 1 == sqlsession.insert("Ticketing.insertTicketing", ticketing);
	}
	
	public boolean cancelTicketing(String ticketingid)	{
		return 1 == sqlsession.delete("Ticketing.cancelTicketing", ticketingid);
	}

	public int getLastTimeNum() {
		return sqlsession.selectOne("Ticketing.getLastTimeNum");
	}

	public boolean removeTicketingTime(int timeid) {
		return sqlsession.delete("Ticketing.removeTicketingTime",timeid) == 1;
	}

	public TimeDTO getTimeDetail(int timeid) {
		return sqlsession.selectOne("Ticketing.getTimeDetail",timeid);
	}

	public TicketingDTO getDetail(String ticketingid) {
		return sqlsession.selectOne("Ticketing.getDetail",ticketingid);
	}
	
	public CinemaDTO searchCinema(int cinemaid) {
		return sqlsession.selectOne("Ticketing.searchCinema",cinemaid);
	}
	
	public TimeDTO searchTime(int timeid) {
		return sqlsession.selectOne("Ticketing.searchTime",timeid);
	}

	public boolean updateTicketingTime(TimeDTO time) {
		return 1 == sqlsession.update("Ticketing.updateTicketingTime",time);
	}
	
	public boolean updateSeatOccupied(int seatid) {
		return 1 == sqlsession.update("Ticketing.updateSeatOccupied",seatid);
	}
	
	public boolean cancelSeatOccupied(int seatid) {
		return 1 == sqlsession.update("Ticketing.cancelSeatOccupied",seatid);
	}
	
	public int getCinemaCnt() {
		return sqlsession.selectOne("Ticketing.getCinemaCnt");
	}
	
	public int getLastCinemaNum() {
		return sqlsession.selectOne("Ticketing.getLastCinemaNum");
	}
	
	public boolean insertCinema(int totalcinema) {
		boolean intocinema = false;
		if(totalcinema == 0) {
			intocinema = (1 == (int)sqlsession.insert("Ticketing.insertInitialCinema"));
		}
		else {
			intocinema = (1 == (int)sqlsession.insert("Ticketing.insertCinema"));			
		}
		int maxCinema = getLastCinemaNum();
		HashMap<Integer, Object> data1 = new HashMap<Integer, Object>();
		for(int i=1;i<11;i++) {
			for(int j=1;j<11;j++) {
				String value = "";
				if(i==1) {value+="A";}
				if(i==2) {value+="B";}
				if(i==3) {value+="C";}
				if(i==4) {value+="D";}
				if(i==5) {value+="E";}
				if(i==6) {value+="F";}
				if(i==7) {value+="G";}
				if(i==8) {value+="H";}
				if(i==9) {value+="I";}
				if(i==10) {value+="J";}
				data1.put((i-1)*10+j,value+j);
			}
		}
		HashMap<String, Object> data2 = new HashMap<String, Object>();
		boolean intoseat = true;
		for(int i=1;i<11;i++) {
			for(int j=1;j<11;j++) {
				String value = (String)data1.get((i-1)*10+j);
				data2.put("seatnum",value);
				data2.put("cinemaid", maxCinema);
				boolean intos = (1 == (int)sqlsession.insert("Ticketing.insertSeat",data2));
				intoseat = intoseat && intos;
			}
		}
		return intocinema&&intoseat;
	}
	public boolean removeCinema(int cinemaid) {
		return sqlsession.delete("Ticketing.removeCinema",cinemaid) == 1 && sqlsession.delete("Ticketing.removeSeat",cinemaid) == 100;
	}

	public boolean updateTicketingPrice(String ticketingid, int ticketingprice) {
		HashMap<String, Object> datas = new HashMap<String, Object>();
		datas.put("ticketingid",ticketingid);
		datas.put("ticketingprice",ticketingprice);
		return 1 == sqlsession.update("Ticketing.updateTicketingPrice",datas);
	}
}
