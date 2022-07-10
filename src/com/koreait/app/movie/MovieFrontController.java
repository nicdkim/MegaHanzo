package com.koreait.app.movie;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.ActionTo;

public class MovieFrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doGet(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//길나누는 코드
		String requestURI = req.getRequestURI();	//	/megahanzo/UserJoin.us
		String contextPath = req.getContextPath();	//	/megahanzo
		String command = requestURI.substring(contextPath.length());
		ActionTo acto = null;
		switch(command) {
		case "/movie/MovieListByRate.mo":
			try {
				acto = new MovieListByRateAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/MovieListByRate : "+e);
			}
			break;
		case "/movie/MovieWrite.mo":
			try {
				acto = new MovieWriteAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/MovieWrite : "+e);
			}
			break;
		case "/movie/MovieWriteOk.mo":
			try {
				acto = new MovieWriteOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/MovieWriteOk : "+e);
			}
			break;
		case "/movie/MovieView.mo":
			try {
				acto = new MovieViewAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/MovieView : "+e);
			}
			break;
		case "/movie/MovieRemove.mo":
			try {
				acto = new MovieRemoveOkAction().execute(req,resp);
			} catch(Exception e) {
				System.out.println("/MovieRemove : "+e);
			}
			break;
		case "/movie/FileDownload.mo":
			try {
				new FileDownloadAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/FileDownload : "+e);
			}
			break;
		case "/movie/MovieModify.mo":
			try {
				acto = new MovieModifyAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/MovieModify : "+e);
			}
			break;
		case "/movie/MovieModifyOk.mo":
			try {
				acto = new MovieModifyOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/MovieModifyOk : "+e);
			}
			break;
		case "/movie/ReviewWrite.mo":
			try {
				new ReviewWriteAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/ReviewWrite : "+e);
			}
			break;
		case "/movie/ReviewRemove.mo":
			try {
				new ReviewRemoveAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/ReviewRemove : "+e);
			}
			break;
		case "/movie/ReviewModify.mo":
			try {
				new ReviewModifyAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/ReviewModify : "+e);
			}
			break;
		case "/movie/ReviewList.mo":
			try {
				acto = new ReviewListAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/ReviewList : "+e);
			}
			break;
		case "/movie/ReviewView.mo":
			try {
				acto = new ReviewViewAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/ReviewView : "+e);
			}
			break;
		case "/movie/ReviewBigWrite.mo":
			acto = new ActionTo();
			acto.setRedirect(false);
			acto.setPath("/app/movie/reviewwrite.jsp");
			break;
		case "/movie/ReviewBigWriteOk.mo":
			try {
				acto = new ReviewBigWriteOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/ReviewBigWriteOk : "+e);
			}
			break;
		case "/movie/ReviewBigModify.mo":
			try {
				acto = new ReviewBigModifyAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/ReviewBigModify : "+e);
			}
			break;
		case "/movie/ReviewBigModifyOk.mo":
			try {
				acto = new ReviewBigModifyOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/ReviewBigModifyOk : "+e);
			}
			break;
		case "/movie/ReviewBigRemove.mo":
			try {
				acto = new ReviewBigRemoveAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/ReviewBigRemove : "+e);
			}
			break;
		}
		
		//일괄 처리
		//어디로 이동할지 / 어떤 방식일지(forward, redirect)
		if(acto != null) {
			if(acto.isRedirect()) {
				resp.sendRedirect(acto.getPath());
			}
			else {
				RequestDispatcher disp = req.getRequestDispatcher(acto.getPath());
				disp.forward(req, resp);
			}
		}
	}
}






