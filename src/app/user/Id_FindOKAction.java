package app.user;

import java.io.PrintWriter;



import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import action.Action;
import action.ActionTo;
import app.user.dao.UserDAO;
import app.user.dao.UserDTO;

public class Id_FindOKAction implements Action {
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html;charset=utf-8");
		
		String userid = req.getParameter("userid");
		String userpw = req.getParameter("userpw");
		String username = req.getParameter("username");
		String userphone = req.getParameter("userphone");
		
		UserDAO udao = new UserDAO(); 
		UserDTO id_find = udao.id_find(username, userphone);		
		
		PrintWriter out = resp.getWriter();
		if(id_find != null) {
			HttpSession session = req.getSession();
			session.setAttribute("id_find", id_find);
			out.print("<script type='text/javascript'>");
			out.print("alert('회원님의 아이디는: "+id_find.getUserid()+"입니다');");
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

