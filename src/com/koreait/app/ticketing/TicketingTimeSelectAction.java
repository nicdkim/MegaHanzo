package com.koreait.app.ticketing;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.ticketing.dao.TicketingDAO;
import com.koreait.app.ticketing.dao.TimeDTO;

public class TicketingTimeSelectAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		TicketingDAO tdao = new TicketingDAO();
		String movietitle = req.getParameter("movietitle");
		req.setAttribute("movietitle",movietitle);
		System.out.println("movietitle : "+movietitle);
		List<TimeDTO> timeList = tdao.getTimeListByTitle(movietitle);
		req.setAttribute("timeList", timeList);
		
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/ticketing/ticketingtimeselect.jsp");
		return acto;
	}
}
