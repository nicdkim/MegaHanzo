package com.koreait.app.user;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;

import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class VcSendAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String api_key = "NCSPKSC5CVFPARHL";
	    String api_secret = "BDQFJRQDQ26YQCXYNT3MT7QNUU03TU41";
	    Message coolsms = new Message(api_key, api_secret);

	    // 4 params(to, from, type, text) are mandatory. must be filled
	    HashMap<String, String> params = new HashMap<String, String>();
	    String userphone = req.getParameter("userphone");
	    System.out.println(userphone);
	    params.put("to", userphone);
	    params.put("from", "01077914234"); //무조건 자기번호 (인증)
	    params.put("type", "SMS");
	    Random rand  = new Random();
	    String numStr = "";
	    for(int i=0; i<6; i++) {
	        String ran = Integer.toString(rand.nextInt(10));
	        numStr+=ran;
	    }
	    params.put("text", numStr);
	    System.out.println(numStr);
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
	    	out.write(numStr);
	    }
	    out.close();
		return null;
	}
}
