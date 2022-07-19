package app.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import action.ActionTo;
import app.movie.dao.MovieDAO;
import app.movie.dao.ReviewDTO;
import app.user.dao.UserDTO;

public class ReviewViewAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MovieDAO mdao = new MovieDAO();
		HttpSession session = req.getSession();
		int reviewid = Integer.parseInt(req.getParameter("reviewid"));
		String userid = ((UserDTO)session.getAttribute("loginUser")).getUserid();
		String movietitle = req.getParameter("movietitle");
		ReviewDTO review = mdao.getReviewDetail(reviewid);
		req.setAttribute("movietitle", movietitle);
		req.setAttribute("review", review);
		req.setAttribute("movieList", mdao.getMovieList(null));
		
		if(!review.getUserid().equals(userid)) {
			//View로 가져가서 뿌려줄 객체의 조회수도 하나 증가
			review.setReadcount(review.getReadcount()+1);
			//DB상에 있는 데이터도 조회수 하나 증가
			mdao.updateReadCount(reviewid);
		}
		
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/movie/reviewview.jsp");
		return acto;
	}
}
