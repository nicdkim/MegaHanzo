package app.movie;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionTo;
import app.movie.dao.MovieDAO;
import app.movie.dao.MovieDTO;

public class MovieListAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MovieDAO mdao = new MovieDAO();
		String keyword = req.getParameter("keyword");
		
		//영화의 개수
		int totalCnt = mdao.getMovieCnt();
		
		
		List<MovieDTO> movieList = mdao.getMovieList(keyword);
		
		req.setAttribute("movieList", movieList);
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("keyword", keyword);
		
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/movie/movielist.jsp");
		return acto;
	}
}




