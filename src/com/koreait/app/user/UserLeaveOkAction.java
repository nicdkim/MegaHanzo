package com.koreait.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.user.dao.UserDAO;

public class UserLeaveOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String userid = req.getParameter("userid");
		ActionTo acto = new ActionTo();
		acto.setRedirect(true);
		UserDAO udao = new UserDAO();
		if(udao.leaveUser(userid)) {
			acto.setPath(req.getContextPath()+"/user/UserLogoutOk.us");
		}
		else {
			acto.setPath(req.getContextPath()+"/user/UserLeave.us?userid="+userid);
		}
		return acto;
	}
}
