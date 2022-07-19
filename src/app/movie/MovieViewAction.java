package app.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionTo;
import app.movie.dao.FileDAO;
import app.movie.dao.MovieDAO;
import app.movie.dao.MovieDTO;

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






