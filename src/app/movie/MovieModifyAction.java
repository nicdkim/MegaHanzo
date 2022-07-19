package app.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionTo;
import app.movie.dao.FileDAO;
import app.movie.dao.MovieDAO;

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
