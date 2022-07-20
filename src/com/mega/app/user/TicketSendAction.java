package com.mega.app.user;

import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.mega.action.Action;
import com.mega.action.ActionTo;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class TicketSendAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String api_key = "NCSPKSC5CVFPARHL";
	    String api_secret = "BDQFJRQDQ26YQCXYNT3MT7QNUU03TU41";
	    Message coolsms = new Message(api_key, api_secret);

	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    String userphone = req.getParameter("userphone");
	    String username = req.getParameter("username");
	    String movietitle = req.getParameter("movietitle");
		int cinemaid = Integer.parseInt(req.getParameter("cinemaid"));
		String ticketingdate = req.getParameter("ticketingdate");
		String starttime = req.getParameter("starttime");
	    params.put("to", userphone);
	    params.put("from", "01077914234"); //무조건 자기번호 (인증)
	    params.put("type", "LMS");
	    String tickettext = username+" 고객님 안녕하십니까. "+ticketingdate+"에 등록하신"+movietitle+" 예매내역을 문자로 안내드립니다. "+starttime+"에 영화가 시작하오니 "
	    		+cinemaid+"관에 영화 시작 10분전까지 입장하셔야 한다는 점 유의 바랍니다.";
	    params.put("text", tickettext);
	    System.out.println(tickettext);
	    params.put("app_version", "test app 1.2"); // application name and version

	    PrintWriter out = resp.getWriter();
		
	    
	    int err = 0;
	    try {
	    	//send() 는 메시지를 보내는 함수  
	      JSONObject obj = (JSONObject) coolsms.send(params);
	      System.out.println(obj.toString());
	    } catch (CoolsmsException e) {
	      System.out.println(e.getMessage());
	      System.out.println(e.getCode());
	      out.write("X");
	      err++;
	    }
	    if(err == 0) {
	    	out.write(tickettext);
	    }
	    out.close();
		return null;
	}
}
