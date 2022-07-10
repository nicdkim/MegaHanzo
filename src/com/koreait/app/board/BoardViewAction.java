package com.koreait.app.board;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.board.dao.BoardDAO;
import com.koreait.app.board.dao.BoardDTO;
import com.koreait.app.user.dao.UserDTO;

public class BoardViewAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		BoardDAO bdao = new BoardDAO();
		HttpSession session = req.getSession();
		int boardnum = Integer.parseInt(req.getParameter("boardnum"));
		String userid = ((UserDTO)session.getAttribute("loginUser")).getUserid();
		BoardDTO board = bdao.getDetail(boardnum);
		
		if(!board.getUserid().equals(userid)) {
			//View로 가져가서 뿌려줄 객체의 조회수도 하나 증가
			board.setReadcount(board.getReadcount()+1);
			//DB상에 있는 데이터도 조회수 하나 증가
			bdao.updateReadCount(boardnum);
		}
		
		req.setAttribute("board", board);
		req.setAttribute("replies", bdao.getReplies(boardnum));
		
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/board/boardview.jsp");
		return acto;
	}
}






