package com.mega.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.user.dao.UserDAO;

public class UserRemoveOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		UserDAO udao = new UserDAO();
		String userid = req.getParameter("userid");
		ActionTo acto = new ActionTo();
		acto.setRedirect(true);
		if(udao.removeUser(userid)) {
			acto.setPath(req.getContextPath()+"/user/UserList.us?r=t");
		}
		else {
			acto.setPath(req.getContextPath()+"/user/UserView.us?userid="+userid+"&r=f");
		}
		return acto;
	}
}
