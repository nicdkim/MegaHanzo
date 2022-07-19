package app.ticketing;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionTo;
import app.ticketing.dao.TicketingDAO;

public class TicketingCinemaRemoveOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		TicketingDAO tdao = new TicketingDAO();
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		int totalcinema = Integer.parseInt(req.getParameter("totalcinema"));
		if(totalcinema == 0) {
			acto.setPath(req.getContextPath()+"/ticketing/TicketingCinema.ti?r=f");	
		}
		else {
			if(tdao.removeCinema(tdao.getLastCinemaNum())) {
				acto.setPath(req.getContextPath()+"/ticketing/TicketingCinema.ti?r=t");
			}
			else {
				acto.setPath(req.getContextPath()+"/ticketing/TicketingCinema.ti?r=f");			
			}			
		}
		return acto;
	}
}
