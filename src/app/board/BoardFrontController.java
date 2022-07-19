package app.board;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.ActionTo;

public class BoardFrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doGet(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//길나누는 코드
		String requestURI = req.getRequestURI();	//	/board_mvc2/UserJoin.us
		String contextPath = req.getContextPath();	//	/board_mvc2
		String command = requestURI.substring(contextPath.length());
		ActionTo acto = null;
		switch(command) {
		case "/board/BoardList.bo":
			try {
				acto = new BoardListAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("BoardList : "+e);
			}
			break;
		case "/board/Board.bo":
			acto = new ActionTo();
			acto.setRedirect(false);
			acto.setPath("/app/board/board.jsp");
			break;
		case "/board/BoardFaqList.bo":
			acto = new ActionTo();
			acto.setRedirect(false);
			acto.setPath("/app/board/boardfaqlist.jsp");
			break;
		
		case "/board/BoardWrite.bo":
			acto = new ActionTo();
			acto.setRedirect(false);
			acto.setPath("/app/board/boardwrite.jsp");
			break;
		case "/board/BoardWriteOk.bo":
			try {
				acto = new BoardWriteOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/BoardWriteOk : "+e);
			}
			break;
		case "/board/BoardView.bo":
			try {
				acto = new BoardViewAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/BoardView : "+e);
			}
			break;
		case "/board/BoardModify.bo":
			try {
				acto = new BoardModifyAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/BoardModify : "+e);
			}
			break;
		case "/board/BoardModifyOk.bo":
			try {
				acto = new BoardModifyOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/BoardModifyOk : "+e);
			}
			break;
		case "/board/BoardRemove.bo":
			try {
				acto = new BoardRemoveOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/BoardRemove : "+e);
			}
			break;
		case "/board/ReplyWrite.bo":
			try {
				new ReplyWriteAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/ReplyWrite : "+e);
			}
			break;
		case "/board/ReplyRemove.bo":
			try {
				new ReplyRemoveAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/ReplyRemove : "+e);
			}
			break;
		case "/board/ReplyModify.bo":
			try {
				new ReplyModifyAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/ReplyModify : "+e);
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






