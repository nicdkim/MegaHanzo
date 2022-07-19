package app.movie;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import action.Action;
import action.ActionTo;
import app.movie.dao.FileDAO;
import app.movie.dao.FileDTO;
import app.movie.dao.MovieDAO;
import app.movie.dao.MovieDTO;

public class MovieWriteOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		//cos : http://www.servlets.com/

		//파일이 저장될 경로
		String saveFolder = req.getServletContext().getRealPath("file");
		System.out.println(saveFolder);
		
		//저장될 파일의 크기(5MB)
		int size = 1024*1024*200;
		
		//cos 라이브러리 이용
		MultipartRequest multi = new MultipartRequest(req, saveFolder, size, "UTF-8",
				new DefaultFileRenamePolicy()); //기본파일이름변경정책
		
		boolean fcheck1 = false;
		
		//	input[type=file] 태그의 name을 써주면 시스템상 이름을 받아올 수 있음
		String systemname1 = multi.getFilesystemName("file1");
		if(systemname1 == null) {
			fcheck1 = true;
		}
		//	input[type=file] 태그의 name을 써주면 사용자가 업로드할 당시의 이름을 받아올 수 있음
		String orgname1 = multi.getOriginalFileName("file1");
		
		String movietitle = multi.getParameter("movietitle");
		String moviegenre = multi.getParameter("moviegenre");
		int movietime = Integer.parseInt(multi.getParameter("movietime"));
		int movielike = 0;
	    double movierate = 0;
	    String movieinfo = multi.getParameter("movieinfo");
	    String movieage = multi.getParameter("movieage");
	    String movieactor = multi.getParameter("movieactor");
	    String moviedirect = multi.getParameter("moviedirect");
	    String moviedate = multi.getParameter("moviedate");
		
		MovieDTO movie = new MovieDTO();
		movie.setMovietitle(movietitle);
		movie.setMoviegenre(moviegenre);
		movie.setMovietime(movietime);
		movie.setMovielike(movielike);
		movie.setMovierate(movierate);
		movie.setMovieinfo(movieinfo);
		movie.setMovieage(movieage);
		movie.setMovieactor(movieactor);
		movie.setMoviedirect(moviedirect);
		movie.setMoviedate(moviedate);
		
		MovieDAO mdao = new MovieDAO();
		ActionTo acto = new ActionTo();
		int movieid = 0;
		if(mdao.insertMovie(movie)) {
			FileDAO fdao = new FileDAO();
			movieid = mdao.getLastNum();
			if(!fcheck1) {
				FileDTO file = new FileDTO();
				file.setMovieid(movieid);
				file.setSystemname(systemname1);
				file.setOrgname(orgname1);
				
				fcheck1 = fdao.insertFile(file);
			}
			//fcheck1, fcheck2 가 true라는 뜻
			//1. 원래 파일이 존재하지 않았음
			//2. 파일이 존재했고, 위의 DB처리까지 완벽하게 성공했음
			if(fcheck1) {
				acto.setRedirect(true);
				acto.setPath(req.getContextPath()+"/movie/MovieView.mo?movieid="+movieid);
			}
		}
		else {
			acto.setRedirect(true);
			acto.setPath(req.getContextPath()+"/movie/MovieListByRate.mo");
			Cookie cookie = new Cookie("w", "f");
			resp.addCookie(cookie);
		}
		
		return acto;
	}
}
//F-C.png

//filename	movieid		systemname
//F-C.png	1			F-C.png
//F-C.png	2			F-C1.png
//F-C.png	3			F-C2.png

