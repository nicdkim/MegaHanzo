package com.koreait.app.movie;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.movie.dao.FileDAO;
import com.koreait.app.movie.dao.FileDTO;
import com.koreait.app.movie.dao.MovieDAO;


public class MovieRemoveOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		MovieDAO mdao = new MovieDAO();
		FileDAO fdao = new FileDAO();
		int movieid = Integer.parseInt(req.getParameter("movieid"));
		List<FileDTO> files = fdao.getFiles(movieid);
		String saveFolder = req.getServletContext().getRealPath("file");
		ActionTo acto = new ActionTo();
		acto.setRedirect(true);
		if(mdao.removeMovie(movieid)) {
			for (int i = 0; i < files.size(); i++) {
				File file = new File(saveFolder,files.get(i).getSystemname());
				if(file.exists()) {
					file.delete();
					fdao.deleteByName(files.get(i).getSystemname());
				}
			}
			acto.setPath(req.getContextPath()+"/movie/MovieListByRate.mo");
		}
		else {
			acto.setPath(req.getContextPath()+"/movie/MovieView.mo?movieid="+movieid);
		}
		return acto;
	}
}




