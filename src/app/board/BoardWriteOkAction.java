package app.board;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import action.Action;
import action.ActionTo;
import app.board.dao.BoardDAO;
import app.board.dao.BoardDTO;

public class BoardWriteOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String saveFolder = req.getServletContext().getRealPath("file");
		System.out.println(saveFolder);
		
		int size = 1024*1024*5;
		
		//cos 라이브러리 이용
		MultipartRequest multi = new MultipartRequest(req, saveFolder, size, "UTF-8",
				new DefaultFileRenamePolicy()); //기본파일이름변경정책
		
		String boardtitle = multi.getParameter("boardtitle");
		String boardcontents = multi.getParameter("boardcontents");
		String userid = multi.getParameter("userid");
		
		BoardDTO board = new BoardDTO();
		board.setBoardtitle(boardtitle);
		board.setBoardcontents(boardcontents);
		board.setUserid(userid);
		
		BoardDAO bdao = new BoardDAO();
		ActionTo acto = new ActionTo();
		int boardnum = 0;
		if(bdao.insertBoard(board)) {
			boardnum = bdao.getLastNum(userid);
			acto.setRedirect(true);
			acto.setPath(req.getContextPath()+"/board/BoardView.bo?boardnum="+boardnum);
			
		}
		else {
			acto.setRedirect(true);
			acto.setPath(req.getContextPath()+"/board/BoardList.bo");
			Cookie cookie = new Cookie("w", "f");
			resp.addCookie(cookie);
		}
		
		return acto;
	}
}
//F-C.png

//filename	boardnum	systemname
//F-C.png	1			F-C.png
//F-C.png	2			F-C1.png
//F-C.png	3			F-C2.png

