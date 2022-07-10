package com.koreait.app.user;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;
import com.koreait.app.user.dao.UserDAO;
import com.koreait.app.user.dao.UserDTO;

public class UserModifyOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		
		String userid = req.getParameter("userid1");
		String userpw = req.getParameter("userpw1");
		String username = req.getParameter("username1");
		String userage = req.getParameter("userage1");
		String userphone = req.getParameter("userphone1");
		String zipcode = req.getParameter("zipcode1");
		String addr = req.getParameter("addr1");
		String addrdetail = req.getParameter("addrdetail1");
		String addretc = req.getParameter("addretc1");
		int useradmin = Integer.parseInt(req.getParameter("useradmin1"));
			
		UserDTO newUser = new UserDTO();
		newUser.setUserid(userid);
		newUser.setUserpw(userpw);
		newUser.setUsername(username);
		newUser.setUserage(userage);
		newUser.setUserphone(userphone);
		newUser.setZipcode(zipcode);
		newUser.setAddr(addr);
		newUser.setAddrdetail(addrdetail);
		newUser.setAddretc(addretc);
		newUser.setUseradmin(useradmin);
		
		UserDAO udao = new UserDAO();
		ActionTo acto = new ActionTo();
		//시스템에 변화가 있으므로
		acto.setRedirect(true);
		HttpSession session = req.getSession();
		if(udao.modifyUser(newUser)) {
			session.setAttribute("loginUser", udao.login(userid, userpw));
			acto.setPath(req.getContextPath()+"/user/UserMypage.us?userid="+userid+"&u=t");
		}
		else {
			acto.setPath(req.getContextPath()+"/user/UserMypage.us?userid="+userid+"&u=f");
		}
		return acto;
	}
}
