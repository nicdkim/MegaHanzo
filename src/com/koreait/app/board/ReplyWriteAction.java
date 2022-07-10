package com.koreait.app.board;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.board.dao.BoardDAO;
import com.koreait.app.board.dao.ReplyDTO;
import com.koreait.app.user.dao.UserDTO;

public class ReplyWriteAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		int boardnum = Integer.parseInt(req.getParameter("boardnum"));
		String userid = ((UserDTO)req.getSession().getAttribute("loginUser")).getUserid();
		String replycontents = req.getParameter("replycontents");
		
		ReplyDTO reply = new ReplyDTO();
		reply.setBoardnum(boardnum);
		reply.setUserid(userid);
		reply.setReplycontents(replycontents);
		
		BoardDAO bdao = new BoardDAO();
		
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String page = req.getParameter("page");
		
		PrintWriter out = resp.getWriter();
		if(bdao.insertReply(reply)) {
			out.write("<script>alert('댓글 등록 성공!');");
			//location.href='컨택스트패쓰/board/BoardView.bo?boardnum=10&page=3'
			String path = String.format("location.href='%s/board/BoardView.bo?boardnum=%d&page=%s';",req.getContextPath(),boardnum,page);
			out.write(path);
			out.write("</script>");
		}
		else {
			out.write("<script>alert('댓글 등록 실패!');");
			out.write("location.href='"+req.getContextPath()+"/board/BoardView.bo?boardnum="+boardnum+"';");
			out.write("</script>");
		}
		return null;
	}
}




