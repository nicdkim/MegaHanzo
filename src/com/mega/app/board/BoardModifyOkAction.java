package com.mega.app.board;

import java.io.File;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.board.dao.BoardDAO;
import com.mega.app.board.dao.BoardDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class BoardModifyOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String saveFolder = req.getServletContext().getRealPath("file");
		int size = 1024*1024*5;
		
		BoardDAO bdao = new BoardDAO();
		
		MultipartRequest multi = new MultipartRequest(req, saveFolder, size,"UTF-8",
				new DefaultFileRenamePolicy());

		int boardnum = Integer.parseInt(multi.getParameter("boardnum"));
		String boardtitle = multi.getParameter("boardtitle");
		String boardcontents = multi.getParameter("boardcontents");
		String keyword = multi.getParameter("keyword");
		keyword = URLEncoder.encode(keyword,"UTF-8");
		System.out.println(keyword);
		String page = multi.getParameter("page");
		
		BoardDTO board = new BoardDTO();
		board.setBoardtitle(boardtitle);
		board.setBoardcontents(boardcontents);
		board.setBoardnum(boardnum);
		
		ActionTo acto = new ActionTo();
		acto.setRedirect(true);
		
		if(bdao.updateBoard(board)) {
			acto.setPath(req.getContextPath()+"/board/BoardView.bo?boardnum="+boardnum+"&u=t&keyword="+keyword+"&page="+page);
		}
		else {
			acto.setPath(req.getContextPath()+"/board/BoardView.bo?boardnum="+boardnum+"&u=f&keyword="+keyword+"&page="+page);
		}
		
		return acto;
	}
}





