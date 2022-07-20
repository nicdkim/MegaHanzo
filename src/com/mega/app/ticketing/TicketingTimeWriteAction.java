package com.mega.app.ticketing;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.ticketing.dao.CinemaDTO;
import com.mega.app.ticketing.dao.TicketingDAO;

public class TicketingTimeWriteAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String movietitle = req.getParameter("movietitle");
		req.setAttribute("movietitle", movietitle);
		TicketingDAO tdao = new TicketingDAO();
		List<CinemaDTO> cinemaList = tdao.getTicketingCinemaList();
		req.setAttribute("cinemas", cinemaList);
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/ticketing/ticketingtimewrite.jsp");
		return acto;
	}
}
