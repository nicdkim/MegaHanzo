package com.mega.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.user.dao.UserDAO;
import com.mega.app.user.dao.UserDTO;

public class UserViewAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		UserDAO udao = new UserDAO();
		String userid = req.getParameter("userid");
		UserDTO user = udao.getDetail(userid);
		
		req.setAttribute("user", user);
		
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/user/userview.jsp");
		return acto;
	}
}
