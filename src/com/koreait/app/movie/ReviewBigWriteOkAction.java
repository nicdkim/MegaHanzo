package com.koreait.app.movie;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.movie.dao.MovieDAO;
import com.koreait.app.movie.dao.ReviewDTO;
import com.koreait.app.user.dao.UserDTO;

public class ReviewBigWriteOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int movieid = Integer.parseInt(req.getParameter("movieid"));
		int reviewstar = Integer.parseInt(req.getParameter("reviewstar"));
		String userid = ((UserDTO)req.getSession().getAttribute("loginUser")).getUserid();
		String reviewcontents = req.getParameter("reviewcontents");
		
		ReviewDTO review = new ReviewDTO();
		review.setMovieid(movieid);
		review.setReviewstar(reviewstar);
		review.setUserid(userid);
		review.setReviewcontents(reviewcontents);
		
		//MovieDAO mdao = new MovieDAO();
		MovieDAO mdao = new MovieDAO();
		ActionTo acto = new ActionTo();
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		if(mdao.insertReview(review)) {
			mdao.updateMovieRate(reviewstar, movieid);
			int reviewid = mdao.getLastReviewid();
			acto.setRedirect(true);
			acto.setPath(req.getContextPath()+"/movie/ReviewView.mo?reviewid="+reviewid);
		}
		else {
			acto.setRedirect(true);
			acto.setPath(req.getContextPath()+"/movie/ReviewList.mo");
			Cookie cookie = new Cookie("w", "f");
			resp.addCookie(cookie);
		}
		return acto;
	}
}
