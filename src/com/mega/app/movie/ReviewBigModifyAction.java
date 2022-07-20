package com.mega.app.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.movie.dao.MovieDAO;

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
