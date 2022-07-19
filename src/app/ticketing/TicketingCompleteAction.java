package app.ticketing;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionTo;
import app.ticketing.dao.TicketingDTO;

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
