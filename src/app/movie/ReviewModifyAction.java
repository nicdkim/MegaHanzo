package app.movie;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionTo;
import app.movie.dao.MovieDAO;

public class ReviewModifyAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String i = req.getParameter("i");
		int reviewid = Integer.parseInt(req.getParameter("reviewid"));
		String movieid = req.getParameter("movieid");
		
		String reviewcontents = req.getParameter("review"+i);
		int reviewstar = Integer.parseInt(req.getParameter("reviewstar_mo"+i));
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		PrintWriter out = resp.getWriter();
		
		MovieDAO mdao = new MovieDAO();
		if(mdao.modifyReview(reviewid,reviewcontents,reviewstar)) {
			mdao.updateMovieRateByModify(reviewstar, Integer.parseInt(req.getParameter("star"+i)), Integer.parseInt(movieid));
			out.write("<script>alert('"+reviewid+"번 댓글 수정 성공!');");
		}
		else {
			out.write("<script>alert('"+reviewid+"번 댓글 수정 실패!');");
			
		}
		out.write("location.href='"+req.getContextPath()+"/movie/MovieView.mo?movieid="+movieid+"';");
		out.write("</script>");
		return null;
	}
}
