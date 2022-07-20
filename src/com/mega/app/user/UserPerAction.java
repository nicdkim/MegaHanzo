package com.mega.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.user.dao.UserDAO;


public class UserPerAction implements Action {
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		UserDAO udao = new UserDAO();
		String userid = req.getParameter("userid");	

		ActionTo acto = new ActionTo();
		
		if(udao.userPerList(userid)) {
			acto.setRedirect(false);
			acto.setPath("/user/UserList.us?u=t");
		}
		else {
			acto.setRedirect(false);
			acto.setPath("/user/UserList.us?u=f");
		}
		return acto;
	}
}


