package com.mega.app.movie;

import java.io.File;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.movie.dao.MovieDAO;

public class ReviewBigRemoveAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MovieDAO mdao = new MovieDAO();
		int reviewid = Integer.parseInt(req.getParameter("reviewid"));
		int star = Integer.parseInt(req.getParameter("star"));
		String movieid = req.getParameter("movieid");
		ActionTo acto = new ActionTo();
		acto.setRedirect(true);
		if(mdao.removeReview(reviewid)) {
			mdao.updateMovieRateByRemove(star, Integer.parseInt(movieid));
			acto.setPath(req.getContextPath()+"/movie/ReviewList.mo?r=t");
		}
		else {
			acto.setPath(req.getContextPath()+"/movie/ReviewView.mo?reviewid="+reviewid+"&r=f");
		}
		return acto;
	}
}
