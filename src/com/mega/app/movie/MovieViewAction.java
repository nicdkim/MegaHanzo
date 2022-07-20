package com.mega.app.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.movie.dao.FileDAO;
import com.mega.app.movie.dao.MovieDAO;
import com.mega.app.movie.dao.MovieDTO;

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






