package com.mega.app.ticketing;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.movie.dao.FileDAO;
import com.mega.app.movie.dao.FileDTO;
import com.mega.app.movie.dao.MovieDAO;
import com.mega.app.movie.dao.MovieDTO;
import com.mega.app.ticketing.dao.TicketingDAO;
import com.mega.app.ticketing.dao.TimeDTO;
import com.mega.app.user.dao.UserDTO;

public class TicketingListAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MovieDAO mdao = new MovieDAO();
		String keyword = req.getParameter("keyword");
		FileDAO fdao = new FileDAO();
		TicketingDAO tdao = new TicketingDAO();
		List<MovieDTO> movieList = mdao.getMovieList(keyword);
		
		List<FileDTO> fileList = new ArrayList<FileDTO>();
		List<TimeDTO> timeList = tdao.getTimeList();
		for(MovieDTO mdto : movieList) {
			FileDTO file = fdao.getFiles(mdto.getMovieid()).get(0);
			fileList.add(file);
		}
		req.setAttribute("movieList", movieList);
		req.setAttribute("keyword", keyword);
		req.setAttribute("files", fileList);
		req.setAttribute("timeList", timeList);
		HttpSession session = req.getSession();
		
		String userid = ((UserDTO)session.getAttribute("loginUser")).getUserid();
		
		
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/ticketing/ticketinglist.jsp?userid="+userid);
		return acto;
	}
}
