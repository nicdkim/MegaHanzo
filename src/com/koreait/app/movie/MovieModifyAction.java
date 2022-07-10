package com.koreait.app.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.movie.dao.MovieDAO;
import com.koreait.app.movie.dao.FileDAO;

public class MovieModifyAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MovieDAO mdao = new MovieDAO();
		FileDAO fdao = new FileDAO();
		
		int movieid = Integer.parseInt(req.getParameter("movieid"));
		req.setAttribute("movie", mdao.getDetail(movieid));
		req.setAttribute("files", fdao.getFiles(movieid));
		
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/movie/moviemodify.jsp");
		
		return acto;
	}
}
