package app.ticketing;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.ActionTo;

public class TicketingFrontController extends HttpServlet{
	private static final long serialVersionUID = 1L;

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		doGet(req, resp);
	}
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionTo acto = null;
		switch(command) {
		case "/ticketing/TicketingList.ti":
			try {
				acto = new TicketingListAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/TicketingList : "+e);
			}
			break;
		case "/ticketing/TicketingTimeList.ti":
			try {
				acto = new TicketingTimeListAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/TicketingTimeList : "+e);
			}
			break;
		case "/ticketing/TicketingTimeWrite.ti":
			try {
				acto = new TicketingTimeWriteAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/TicketingTimeWrite : "+e);
			}
			break;
		case "/ticketing/TicketingTimeWriteOk.ti":
			try {
				acto = new TicketingTimeWriteOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/TicketingTimeWriteOk : "+e);
			}
			break;
		case "/ticketing/TicketingTimeModify.ti":
			try {
				acto = new TicketingTimeModifyAction().execute(req,resp);
			} catch(Exception e) {
				System.out.println("/TicketingTimeModify : "+e);
			}
			break;
		case "/ticketing/TicketingTimeModifyOk.ti":
			try {
				acto = new TicketingTimeModifyOkAction().execute(req,resp);
			} catch(Exception e) {
				System.out.println("/TicketingTimeModify : "+e);
			}
			break;
		case "/ticketing/TicketingTimeRemove.ti":
			try {
				acto = new TicketingTimeRemoveOkAction().execute(req,resp);
			} catch(Exception e) {
				System.out.println("/TicketingTimeRemoveOk : "+e);
			}
			break;
		case "/ticketing/TicketingCinema.ti":
			try {
				acto = new TicketingCinemaAction().execute(req,resp);
			} catch(Exception e) {
				System.out.println("/TicketingCinema : "+e);
			}
			break;
		case "/ticketing/TicketingCinemaAddOk.ti":
			try {
				acto = new TicketingCinemaAddOkAction().execute(req,resp);
			} catch(Exception e) {
				System.out.println("/TicketingCinemaAdd : "+e);
			}
			break;
		case "/ticketing/TicketingCinemaRemoveOk.ti":
			try {
				acto = new TicketingCinemaRemoveOkAction().execute(req,resp);
			} catch(Exception e) {
				System.out.println("/TicketingCinemaRemove : "+e);
			}
			break;
		case "/ticketing/TicketingMovieSelect.ti":
			try {
				acto = new TicketingMovieSelectAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/TicketingMovieSelect : "+e);
			}
			break;
		case "/ticketing/TicketingTimeSelect.ti":
			try {
				acto = new TicketingTimeSelectAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/TicketingTimeSelect : "+e);
			}
			break;
		case "/ticketing/TicketingSeatSelect.ti":
			try {
				acto = new TicketingSeatSelectAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/TicketingSeatSelect : "+e);
			}
			break;
		case "/ticketing/TicketingOk.ti":
			try {
				new TicketingOkAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/TicketingOk : "+e);
			}
			break;
		case "/ticketing/TicketingComplete.ti":
			try {
				acto = new TicketingCompleteAction().execute(req,resp);
			} catch (Exception e) {
				System.out.println("/TicketingComplete : "+e);
			}
			break;
		case "/ticketing/TicketingCompleteSend.ti":
			try {
				new TicketingCompleteSendAction().execute(req, resp);
			} catch (Exception e) {
				System.out.println("/TicketingCompleteSend : "+e);
			}
			break;
			
		}
		
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
