package com.mega.app.movie;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.movie.dao.MovieDAO;
import com.mega.app.movie.dao.ReviewDTO;
import com.mega.app.user.dao.UserDTO;

public class ReviewWriteAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int movieid = Integer.parseInt(req.getParameter("movieid"));
		String userid = ((UserDTO)req.getSession().getAttribute("loginUser")).getUserid();
		String reviewcontents = req.getParameter("reviewcontents");
		int reviewstar = Integer.parseInt(req.getParameter("reviewstar"));
		
		ReviewDTO review = new ReviewDTO();
		review.setMovieid(movieid);
		review.setUserid(userid);
		review.setReviewcontents(reviewcontents);
		review.setReviewstar(reviewstar);
		
		MovieDAO mdao = new MovieDAO();
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		if(mdao.insertReview(review)) {
			mdao.updateMovieRate(reviewstar, movieid);
			out.write("<script>alert('리뷰 작성 성공!');");
			String path = String.format("location.href='%s/movie/MovieView.mo?movieid=%d';",req.getContextPath(),movieid);
			out.write(path);
			out.write("</script>");
		}
		else {
			out.write("<script>alert('리뷰 작성 실패!');");
			out.write("location.href='"+req.getContextPath()+"/movie/MovieView.mo?movieid="+movieid+"';");
			out.write("</script>");
		}
		return null;
	}
}
