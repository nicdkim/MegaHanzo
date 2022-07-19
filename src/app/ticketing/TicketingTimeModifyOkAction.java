package app.ticketing;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionTo;
import app.ticketing.dao.TicketingDAO;
import app.ticketing.dao.TimeDTO;

public class TicketingTimeModifyOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String starttime = req.getParameter("starttime");
		String endtime = req.getParameter("endtime");
		int cinemaid = Integer.parseInt(req.getParameter("cinemaid"));
		String movietitle = req.getParameter("movietitle");
		req.setAttribute("movietitle", movietitle);
		
		TimeDTO newTime = new TimeDTO();
		newTime.setTimeid(Integer.parseInt(req.getParameter("timeid")));
		newTime.setStarttime(starttime);
		newTime.setEndtime(endtime);
		newTime.setCinemaid(cinemaid);
		newTime.setMovietitle(movietitle);
		
		ActionTo acto = new ActionTo();
		TicketingDAO tdao = new TicketingDAO();
		acto.setRedirect(true);
		if(tdao.updateTicketingTime(newTime)) {
			movietitle = URLEncoder.encode(movietitle,"UTF-8");
			acto.setPath(req.getContextPath()+"/ticketing/TicketingTimeList.ti?movietitle="+movietitle+"&u=t");			
		}
		else {
			movietitle = URLEncoder.encode(movietitle,"UTF-8");
			acto.setPath(req.getContextPath()+"/ticketing/TicketingTimeList.ti?movietitle="+movietitle+"&u=f");			
		}
		return acto;
	}
}
