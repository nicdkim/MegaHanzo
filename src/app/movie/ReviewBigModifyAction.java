package app.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionTo;
import app.movie.dao.MovieDAO;

public class ReviewBigModifyAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MovieDAO mdao = new MovieDAO();
		
		int reviewid = Integer.parseInt(req.getParameter("reviewid"));
		req.setAttribute("review", mdao.getReviewDetail(reviewid));
		
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/movie/reviewmodify.jsp");
		
		return acto;
	}
}
