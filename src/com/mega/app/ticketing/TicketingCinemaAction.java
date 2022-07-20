package com.mega.app.ticketing;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.ticketing.dao.TicketingDAO;

public class TicketingCinemaAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		TicketingDAO tdao = new TicketingDAO();
		int totalcinema = tdao.getCinemaCnt();
		req.setAttribute("totalcinema", totalcinema);
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/ticketing/ticketingcinema.jsp");
		return acto;
	}
}
