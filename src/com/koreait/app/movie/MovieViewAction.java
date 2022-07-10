package com.koreait.app.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.movie.dao.MovieDAO;
import com.koreait.app.movie.dao.MovieDTO;
import com.koreait.app.movie.dao.FileDAO;

public class MovieViewAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MovieDAO mdao = new MovieDAO();
		int movieid = Integer.parseInt(req.getParameter("movieid"));
		MovieDTO movie = mdao.getDetail(movieid);
		
		FileDAO fdao = new FileDAO();
		req.setAttribute("files", fdao.getFiles(movieid));
		req.setAttribute("movie", movie);
		req.setAttribute("reviews", mdao.getReviews(movieid));
		
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/movie/movieview.jsp");
		return acto;
	}
}






