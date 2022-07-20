package com.mega.app.board;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.board.dao.BoardDAO;

public class ReplyRemoveAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		BoardDAO bdao = new BoardDAO();
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String boardnum = req.getParameter("boardnum");
		int replynum = Integer.parseInt(req.getParameter("replynum"));
		
		PrintWriter out = resp.getWriter();
		
		String page = req.getParameter("page");
		
		if(bdao.removeReply(replynum)) {
			out.write("<script>alert('"+replynum+"번 댓글 삭제 성공!');");
		}
		else {
			out.write("<script>alert('"+replynum+"번 댓글 삭제 실패!');");
		}
		out.write("location.href='"+req.getContextPath()+"/board/BoardView.bo?boardnum="+boardnum+"&page="+page+"';");
		out.write("</script>");
		return null;
	}
}










