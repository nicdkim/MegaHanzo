package com.mega.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.ticketing.dao.TicketingDAO;
import com.mega.app.ticketing.dao.TicketingDTO;

public class UserTicketingViewAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setHeader("Access-Control-Allow-Origin", "*");
		
		TicketingDAO tdao = new TicketingDAO();
		String ticketingid = req.getParameter("ticketingid");
		String starttime = req.getParameter("starttime");
		String endtime = req.getParameter("endtime");
		TicketingDTO ticket = tdao.getDetail(ticketingid);
		req.setAttribute("ticket", ticket);
		req.setAttribute("starttime", starttime);
		req.setAttribute("endtime", endtime);
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/user/userticketingview.jsp");
		return acto;
	}
}
