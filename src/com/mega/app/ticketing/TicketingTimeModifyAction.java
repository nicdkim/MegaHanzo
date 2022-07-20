package com.mega.app.ticketing;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.ticketing.dao.TicketingDAO;

public class TicketingTimeModifyAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		TicketingDAO tdao = new TicketingDAO();
		
		int timeid = Integer.parseInt(req.getParameter("timeid"));
		String movietitle = req.getParameter("movietitle");
		req.setAttribute("movietitle", movietitle);
		req.setAttribute("time", tdao.getTimeDetail(timeid));
		req.setAttribute("cinemas", tdao.getTicketingCinemaList());
		
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/ticketing/ticketingtimemodify.jsp");
		return acto;
	}
}
