package com.koreait.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.user.dao.UserDAO;
import com.koreait.app.user.dao.UserDTO;

public class Pw_FindOKAction implements Action {
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String userid= req.getParameter("userid");
		String userpw = req.getParameter("userpw");
		String username = req.getParameter("username");
		String userphone = req.getParameter("userphone");
		
		UserDAO udao = new UserDAO();
		UserDTO pw_find = udao.pw_find(userid, userphone);		
		
		PrintWriter out = resp.getWriter();
		if(pw_find != null) {
			HttpSession session = req.getSession();
			session.setAttribute("pw_find",pw_find);
			out.print("<script>");
			out.print("alert('회원님의 비밀번호는: "+pw_find.getUserpw()+"입니다');");
			out.print("location.href = '"+req.getContextPath()+"/user/UserLogin.us';");
			out.print("</script>");
		}
		else {
			out.print("<script>");
			out.print("alert('회원 정보가 없습니다!');");
			out.print("location.href = '"+req.getContextPath()+"/user/UserLogin.us';");
			out.print("</script>");
		}
		
		return null;
	
	}

}
