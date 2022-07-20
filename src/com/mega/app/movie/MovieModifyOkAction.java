package com.mega.app.movie;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.movie.dao.FileDAO;
import com.mega.app.movie.dao.FileDTO;
import com.mega.app.movie.dao.MovieDAO;
import com.mega.app.movie.dao.MovieDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class MovieModifyOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String saveFolder = req.getServletContext().getRealPath("file");
		int size = 1024*1024*200;
		
		MovieDAO mdao = new MovieDAO();
		FileDAO fdao = new FileDAO();
		
		MultipartRequest multi = new MultipartRequest(req, saveFolder, size,"UTF-8",
				new DefaultFileRenamePolicy());
		
		boolean fcheck1 = false;
		
		//	input[type=file] 태그의 name을 써주면 시스템상 이름을 받아올 수 있음
		String systemname1 = multi.getFilesystemName("file1");
		if(systemname1 == null) {
			fcheck1 = true;
		}
		//	input[type=file] 태그의 name을 써주면 사용자가 업로드할 당시의 이름을 받아올 수 있음
		String orgname1 = multi.getOriginalFileName("file1");
		
		int movieid = Integer.parseInt(multi.getParameter("movieid"));
		String movietitle = multi.getParameter("movietitle");
		String moviegenre = multi.getParameter("moviegenre");
		int movietime = Integer.parseInt(multi.getParameter("movietime"));
	    String movieinfo = multi.getParameter("movieinfo");
	    String movieage = multi.getParameter("movieage");
	    String movieactor = multi.getParameter("movieactor");
	    String moviedirect = multi.getParameter("moviedirect");
	    String moviedate = multi.getParameter("moviedate");
		
		MovieDTO movie = new MovieDTO();
		movie.setMovieid(movieid);
		movie.setMovietitle(movietitle);
		movie.setMoviegenre(moviegenre);
		movie.setMovietime(movietime);
		movie.setMovieinfo(movieinfo);
		movie.setMovieage(movieage);
		movie.setMovieactor(movieactor);
		movie.setMoviedirect(moviedirect);
		movie.setMoviedate(moviedate);
		
		ActionTo acto = new ActionTo();
		acto.setRedirect(true);
		
		if(mdao.updateMovie(movie)) {
			
			//원래 이 글에 등록되어 있던 파일의 정보들
			List<FileDTO> files = fdao.getFiles(movieid);
			
			if(systemname1 == null) {
				//실제 게시판이 가져야 하는 파일의 개수만큼 반복을 하며 날라온 input[type=file]의 데이터를 검사하는 것
				//이 if문에 들어왔다면 가져야 하는 개수 안쪽이지만, 날라온 파일데이터는 없다는 뜻이므로 기존 파일에서
				//수정을 하지 않았다는 뜻
				System.out.println("1");
			}
			else {					//무언가 수정이 일어났다는 뜻
				if(files.size() > 0) {
					//이 if문에 들어왔다면 기존에 존재하던 파일 대신에 새로운 파일을 올렸다는 뜻
					//기존에 존재하던 file을 객체로 가져온 후
					System.out.println("2");
					File file = new File(saveFolder,files.get(0).getSystemname());
					//실제 파일이 존재한다면
					if(file.exists()) {
						System.out.println("3");
						//해당 파일 삭제
						file.delete();
						//실제 파일이 삭제되었기 때문에 DB상에서도 정보를 지워주어야 한다.
						fdao.deleteByName(files.get(0).getSystemname());
					}
				}
				//새롭게 올렸거나 혹은 수정된 새로운 파일의 정보를 DB에 저장
				System.out.println("4");
				FileDTO fdto = new FileDTO();
				fdto.setMovieid(movieid);
				fdto.setSystemname(systemname1);
				fdto.setOrgname(orgname1);
				fdao.insertFile(fdto);
			}
			
			System.out.println("5");
			acto.setPath(req.getContextPath()+"/movie/MovieView.mo?movieid="+movieid+"&u=t");
		}
		else {
			acto.setPath(req.getContextPath()+"/movie/MovieView.mo?movieid="+movieid+"&u=f");
		}
		
		return acto;
	}
}





