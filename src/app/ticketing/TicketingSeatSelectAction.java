package app.ticketing;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionTo;
import app.ticketing.dao.SeatDTO;
import app.ticketing.dao.TicketingDAO;
import app.ticketing.dao.TimeDTO;

public class TicketingSeatSelectAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		TicketingDAO tdao = new TicketingDAO();
		int timeid = Integer.parseInt(req.getParameter("movietitle"));
		req.setAttribute("timeid", timeid);
		TimeDTO time = tdao.getTimeDetail(timeid);
		req.setAttribute("time", time);
		int cinemaid = time.getCinemaid();
		req.setAttribute("cinemaid", cinemaid);
		List<SeatDTO> seatList = tdao.getSeatList(cinemaid);
		req.setAttribute("seatList", seatList);
		
		
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/ticketing/ticketingseatselect.jsp");
		return acto;
	}
}
