package com.koreait.app.user;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.movie.dao.FileDAO;
import com.koreait.app.movie.dao.FileDTO;
import com.koreait.app.movie.dao.MovieDAO;
import com.koreait.app.movie.dao.MovieDTO;
import com.koreait.app.user.dao.UserDAO;
import com.koreait.app.user.dao.UserDTO;

public class UserLoginOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String userid = req.getParameter("userid");
		String userpw = req.getParameter("userpw");
		PrintWriter out = resp.getWriter();
		
		UserDAO udao = new UserDAO();
		UserDTO loginUser = udao.login(userid, userpw);
		
		
		MovieDAO mdao = new MovieDAO();
		String keyword = req.getParameter("keyword");
		FileDAO fdao = new FileDAO();
		List<MovieDTO> movieList = mdao.getMovieListByRate(keyword);
		List<FileDTO> fileList = new ArrayList<FileDTO>();
		for(MovieDTO mdto : movieList) {
			if(fileList.size() != 0) {									//조건문으로 사이즈가 0이 아닐때만 실행하여 오류 해결
				FileDTO file = fdao.getFiles(mdto.getMovieid()).get(0); //값이 없는데 get으로 값을 가져오려 해서 오류가 났음
				fileList.add(file);
			}
		}
		HttpSession session = req.getSession();
		session.setAttribute("movieList", movieList);
		session.setAttribute("keyword", keyword);
		session.setAttribute("files", fileList);
		
		List<MovieDTO> movieList2 = mdao.getMovieListByTicket(keyword);
		List<FileDTO> fileList2 = new ArrayList<FileDTO>();
		for(MovieDTO mdto : movieList2) {
			if(fileList2.size() != 0) {									//조건문으로 사이즈가 0이 아닐때만 실행하여 오류 해결
				FileDTO file = fdao.getFiles(mdto.getMovieid()).get(0);	//값이 없는데 get으로 값을 가져오려 해서 오류가 났음
				fileList2.add(file);
			}
		}
		session.setAttribute("movieList2", movieList2);
		session.setAttribute("files2", fileList2);
		
		System.out.println(req.getContextPath());
		if(loginUser != null) {
			session.setAttribute("loginUser", loginUser);
			out.print("<script>");
			out.print("alert('"+loginUser.getUsername()+"님 어서오세요~!');");
			out.print("location.href = '"+req.getContextPath()+"?userid="+userid+"&useradmin="+loginUser.getUseradmin()+"';</script>");
		}
		else {
			out.print("<script>");
			out.print("location.href = '"+req.getContextPath()+"/';");
			out.print("</script>");
		}
		return null;
	}
}






