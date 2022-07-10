package com.koreait.app.movie;

import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.movie.dao.MovieDAO;
import com.koreait.app.movie.dao.ReviewDTO;

public class ReviewBigModifyOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String reviewcontents = req.getParameter("reviewcontents");
		String userid = req.getParameter("userid");
		int reviewstar = Integer.parseInt(req.getParameter("reviewstar"));
		int star = Integer.parseInt(req.getParameter("star"));
		int reviewid = Integer.parseInt(req.getParameter("reviewid"));
		int movieid = Integer.parseInt(req.getParameter("movieid"));
		String keyword = req.getParameter("keyword");
		if(keyword!=null) {
			keyword = URLEncoder.encode(keyword,"UTF-8");			
		}
		String page = req.getParameter("page");
		
		ReviewDTO review = new ReviewDTO();
		review.setMovieid(movieid);
		review.setReviewcontents(reviewcontents);
		review.setReviewstar(reviewstar);
		review.setReviewid(reviewid);
		review.setUserid(userid);
		ActionTo acto = new ActionTo();
		MovieDAO mdao = new MovieDAO();
		acto.setRedirect(true);
		if(mdao.modifyBigReview(review)) {
			mdao.updateMovieRateByModify(reviewstar, star, movieid);
			acto.setPath(req.getContextPath()+"/movie/ReviewView.mo?reviewid="+reviewid+"&u=t&keyword="+keyword+"&page="+page);			
		}
		else {
			acto.setPath(req.getContextPath()+"/movie/ReviewView.mo?reviewid="+reviewid+"&u=f&keyword="+keyword+"&page="+page);			
		}
		return acto;
	}
}
