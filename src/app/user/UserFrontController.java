package app.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.ActionTo;

public class UserFrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
	    resp.setHeader("Access-Control-Allow-Origin", "*");
		doGet(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//길나누는 코드
		String requestURI = req.getRequestURI();	//	/board_mvc2/UserJoin.us
		String contextPath = req.getContextPath();	//	/board_mvc2
		String command = requestURI.substring(contextPath.length());
		ActionTo acto = null;
		switch(command) {
		case "/user/UserJoin.us":
			acto = new ActionTo();
			acto.setRedirect(false);
			acto.setPath("/app/user/joinview.jsp");
			break;
		case "/user/UserLogin.us":
			acto = new ActionTo();
			acto.setRedirect(false);
			acto.setPath("/app/user/loginview.jsp");
			break;
		case "/user/UserAdmin.us":
			acto = new ActionTo();
			acto.setRedirect(false);
			acto.setPath("/app/user/adminview.jsp");
			break;
		case "/user/UserList.us":
			try {
				acto = new UserListAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/UserList : "+e);
			}
			break;
		case "/user/UserView.us":
			try {
				acto = new UserViewAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/UserView : "+e);
			}
			break;
		case "/user/UserRemove.us":
			try {
				acto = new UserRemoveOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/UserRemove : "+e);
			}
			break;
		case "/user/UserJoinOk.us":
			try {
				acto = new UserJoinOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/UserJoinOk : "+e);
			}
			break;
		case "/user/CheckIdOk.us":
			try {
				new CheckIdOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/CheckIdOk : "+e);
			}
			break;
		case "/user/VcSendOk.us":
			try {
				new VcSendAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/VcSend : "+e);
			}
			break;
		
		case "/user/UserLoginOk.us":
			try {
				new UserLoginOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/UserLoginOk : "+e);
			}
			break;
		case "/user/UserLogoutOk.us":
			try {
				acto = new ActionTo();
				acto.setRedirect(false);
				acto.setPath("/");
				req.getSession().removeAttribute("loginUser");
			} catch (Exception e) {
				System.out.println("/UserLogoutOk : "+e);
			}
			break;
		case "/user/UserMypage.us":
			acto = new ActionTo();
			acto.setRedirect(false);
			acto.setPath("/app/user/mypageview.jsp");
			break;
		case "/user/UserModify.us":
			acto = new ActionTo();
			acto.setRedirect(false);
			acto.setPath("/app/user/usermodify.jsp");
			break;
		case "/user/UserModifyOk.us":
			try {
				acto = new UserModifyOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/UserModifyOk : "+e);
			}
			break;
		case "/user/UserLeave.us":
			acto = new ActionTo();
			acto.setRedirect(false);
			acto.setPath("/app/user/userleave.jsp");
			break;
		case "/user/UserLeaveOk.us":
			try {
				acto = new UserLeaveOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/UserLeaveOk : "+e);
			}
			break;
		case "/user/UserTicketingList.us":
			try {
				acto = new UserTicketingListAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/UserTicketingList : "+e);
			}
			break;
		case "/user/UserTicketingView.us":
			try {
				acto = new UserTicketingViewAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/UserTicketingView : "+e);
			}
			break;
		case "/user/Id_Find.us":
			acto = new ActionTo();
			acto.setRedirect(false);
			acto.setPath("/app/user/id_findview.jsp");
			break;
		case "/user/Id_FindOK.us" :
			 try {
				new Id_FindOKAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println("Id_FindOK : "+e);
			}
			 break;

		case "/user/Pw_Find.us":
			acto = new ActionTo();
			acto.setRedirect(false);
			acto.setPath("/app/user/pw_findview.jsp");
			break;
		case "/user/Pw_FindOK.us" :
			try {
				new Pw_FindOKAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println("Pw_FindOK : "+e);
			}
		case "/user/UserPerAction.us":
			try {
				acto = new UserPerAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/UserPer : "+e);
			}
			break;
		case "/user/TicketSendOk.us":
			try {
				new TicketSendAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/TicketSend : "+e);
			}
			break;
		case "/user/TicketCancelOk.us":
			try {
				acto = new TicketCancelOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/TicketCancelOk : "+e);
			}
			break;
			
		}
		
		//일괄 처리
		//어디로 이동할지 / 어떤 방식일지(forward, redirect)
		if(acto != null) {
			if(acto.isRedirect()) {
				resp.sendRedirect(acto.getPath());
			}
			else {
				RequestDispatcher disp = req.getRequestDispatcher(acto.getPath());
				disp.forward(req, resp);
			}
		}
	}
}












