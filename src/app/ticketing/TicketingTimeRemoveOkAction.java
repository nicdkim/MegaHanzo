package app.ticketing;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionTo;
import app.ticketing.dao.TicketingDAO;

public class TicketingTimeRemoveOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		TicketingDAO tdao = new TicketingDAO();
		int timeid = Integer.parseInt(req.getParameter("timeid"));
		String movietitle = req.getParameter("movietitle");
		req.setAttribute("movietitle", movietitle);
		ActionTo acto = new ActionTo();
		acto.setRedirect(true);
		if(tdao.removeTicketingTime(timeid)) {
			movietitle = URLEncoder.encode(movietitle,"UTF-8");
			acto.setPath(req.getContextPath()+"/ticketing/TicketingTimeList.ti?movietitle="+movietitle+"&r=t");
		}
		else {
			movietitle = URLEncoder.encode(movietitle,"UTF-8");
			acto.setPath(req.getContextPath()+"/ticketing/TicketingTimeList.ti?movietitle="+movietitle+"&r=f");
		}
		return acto;
	}
}
