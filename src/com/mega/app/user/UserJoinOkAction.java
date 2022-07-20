package com.mega.app.user;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;
import com.mega.app.user.dao.UserDAO;
import com.mega.app.user.dao.UserDTO;

public class UserJoinOkAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception{
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String userid = req.getParameter("userid");
		String userpw = req.getParameter("userpw");
		String username = req.getParameter("username");
		String userage = req.getParameter("userage");
		String userphone = req.getParameter("userphone");
		String zipcode = req.getParameter("zipcode");
		String addr = req.getParameter("addr");
		String addrdetail = req.getParameter("addrdetail");
		String addretc = req.getParameter("addretc");
		int useradmin;
			
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
		if(userid.equals("admin")) {
			useradmin = 1;
			newUser.setUseradmin(1);
		}
		else {
			useradmin = 0;
			newUser.setUseradmin(0);
		}
		
		UserDAO udao = new UserDAO();
		//시스템에 변화가 있으므로
		
		PrintWriter out = resp.getWriter();
		System.out.println(req.getContextPath());
		if(udao.join(newUser)) {
			out.print("<script>");
			out.print("alert('회원가입 성공!');");
			out.print("location.href = '"+req.getContextPath()+"/user/UserLogin.us?userid="+userid+"&useradmin="+useradmin+"';");
			out.print("</script>");
		}
		else {
			out.print("<script>");
			out.print("alert('회원가입 실패!');");
			out.print("location.href = '"+req.getContextPath()+"/user/UserLogin.us;");
			out.print("</script>");
		}
		return null;
	}
}










