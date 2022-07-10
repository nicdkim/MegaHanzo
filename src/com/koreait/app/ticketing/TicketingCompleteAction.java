package com.koreait.app.ticketing;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.ticketing.dao.TicketingDTO;

public class TicketingCompleteAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		TicketingDTO ticketing = (TicketingDTO)req.getAttribute("ticketing");
		req.setAttribute("ticketing", ticketing);
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/ticketing/ticketingcomplete.jsp");
		return acto;
	}
}
