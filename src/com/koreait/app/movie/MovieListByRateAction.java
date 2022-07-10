package com.koreait.app.movie;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.movie.dao.FileDAO;
import com.koreait.app.movie.dao.FileDTO;
import com.koreait.app.movie.dao.MovieDAO;
import com.koreait.app.movie.dao.MovieDTO;

public class MovieListByRateAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MovieDAO mdao = new MovieDAO();
		String keyword = req.getParameter("keyword");
		FileDAO fdao = new FileDAO();
		List<MovieDTO> movieList = mdao.getMovieListByRate(keyword);
		List<MovieDTO> movieList2 = mdao.getMovieListByTicket(keyword);
		List<FileDTO> fileList = new ArrayList<FileDTO>();
		List<FileDTO> fileList2 = new ArrayList<FileDTO>();
		for(MovieDTO mdto : movieList) {
			FileDTO file = fdao.getFiles(mdto.getMovieid()).get(0);
			fileList.add(file);
		}
		for(MovieDTO mdto : movieList2) {
			FileDTO file = fdao.getFiles(mdto.getMovieid()).get(0);
			fileList2.add(file);
		}
		req.setAttribute("movieList", movieList);
		req.setAttribute("keyword", keyword);
		req.setAttribute("files", fileList);

		req.setAttribute("movieList2", movieList2);
		req.setAttribute("files2", fileList2);
		
		
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/movie/movielist.jsp");
		return acto;
	}
}
