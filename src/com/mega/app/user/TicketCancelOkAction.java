package com.mega.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.movie.dao.MovieDAO;
import com.mega.app.movie.dao.MovieDTO;
import com.mega.app.ticketing.dao.TicketingDAO;

public class TicketCancelOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionTo acto = new ActionTo();
		acto.setRedirect(true);
		TicketingDAO tdao = new TicketingDAO();
		MovieDAO mdao = new MovieDAO();
		String ticketingid = req.getParameter("ticketingid");
		String seatid = req.getParameter("seatid");
		String movietitle = req.getParameter("movietitle");
		int count = Integer.parseInt(req.getParameter("cnt"));
		String[] SeatidList = seatid.split(",");
		if(tdao.cancelTicketing(ticketingid)) {
			for(int i=0;i<SeatidList.length;i++) {
				tdao.cancelSeatOccupied(Integer.parseInt(SeatidList[i]));
			}
			mdao.cancelMovieTicket(((MovieDTO)mdao.getMovieByTitle(movietitle)).getMovieid(),count);
			acto.setPath(req.getContextPath()+"/user/UserTicketingList.us?c=t");
		}
		else {
			acto.setPath(req.getContextPath()+"/user/UserTicketingList.us?c=f");
		}
		return acto;
	}
}
