package com.koreait.app.ticketing;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.movie.dao.MovieDAO;
import com.koreait.app.movie.dao.MovieDTO;
import com.koreait.app.ticketing.dao.TicketingDAO;
import com.koreait.app.ticketing.dao.TicketingDTO;

public class TicketingOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		TicketingDAO tdao = new TicketingDAO();
		MovieDAO mdao = new MovieDAO();
		int cinemaid = Integer.parseInt(req.getParameter("cinemaid"));
		int temp = 0;
		String seatid = "";
		String seatlist = req.getParameter("seatlist");
		System.out.println(seatlist);
		int count = 0;
		for(int i=0;i<100;i++) {
			if(seatlist.charAt(i) == '1') {
				count ++;
				temp++;
				if(temp != 1) {
					seatid+=",";
				}
				seatid+=((cinemaid-1)*100+i+1);
				tdao.updateSeatOccupied((cinemaid-1)*100+i+1);
			}
		}
		String userid = req.getParameter("userid");
   		String movietitle = req.getParameter("movietitle");
   		int timeid = Integer.parseInt(req.getParameter("timeid"));
		TicketingDTO ticketing = new TicketingDTO();
		ticketing.setTicketingid(req.getParameter("ticketingid"));
		ticketing.setSeatid(seatid);
		ticketing.setUserid(userid);
		ticketing.setCinemaid(cinemaid);
		ticketing.setMovietitle(movietitle);
		ticketing.setTimeid(timeid);
		req.setAttribute("ticketing", ticketing);
		
		PrintWriter out = resp.getWriter();
		if(tdao.insertTicketing(ticketing) && mdao.buyMovieTicket(((MovieDTO)mdao.getMovieByTitle(movietitle)).getMovieid(),count)) {
			tdao.updateTicketingPrice(req.getParameter("ticketingid"),Integer.parseInt(req.getParameter("ticketingprice")));
			out.print("<script>");
			out.print("alert('예매에 성공하셨습니다!');");
			out.print("location.href = '"+req.getContextPath()+"/user/UserTicketingList.us';</script>");
		}
		else {
			out.print("<script>");
			out.print("alert('예매에 실패하셨습니다. 처음부터 다시 시도해주세요!');");
			out.print("location.href = '"+req.getContextPath()+"/ticketing/TicketingMovieSelect.ti';</script>");
		}
		return null;
	}
}
