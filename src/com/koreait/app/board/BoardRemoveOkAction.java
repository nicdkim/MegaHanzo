package com.koreait.app.board;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.board.dao.BoardDAO;

public class BoardRemoveOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		BoardDAO bdao = new BoardDAO();
		int boardnum = Integer.parseInt(req.getParameter("boardnum"));
		ActionTo acto = new ActionTo();
		acto.setRedirect(true);
		if(bdao.removeBoard(boardnum)) {
			acto.setPath(req.getContextPath()+"/board/BoardList.bo");
		}
		else {
			acto.setPath(req.getContextPath()+"/board/BoardView.bo?boardnum="+boardnum);
		}
		return acto;
	}
}




