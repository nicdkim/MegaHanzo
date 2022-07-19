package app.user;
import java.util.HashMap;
import java.util.Random;

import org.json.simple.JSONObject;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

/**
 * @class ExampleSend
 * @brief This sample code demonstrate how to send sms through CoolSMS Rest API PHP
 */
public class ExampleSend {
  public static void main(String[] args) {
	String api_key = "NCSGUN8L31ATSFJ0";
    String api_secret = "4LJQHH4BYIGWYZHBKGS7ARI8KCQ8MUIK";
    Message coolsms = new Message(api_key, api_secret);

    // 4 params(to, from, type, text) are mandatory. must be filled
    HashMap<String, String> params = new HashMap<String, String>();
    params.put("to", "발신번호");
    params.put("from", "01077914234"); //무조건 자기번호 (인증)
    params.put("type", "SMS");
    Random rand  = new Random();
    String numStr = "";
    for(int i=0; i<6; i++) {
        String ran = Integer.toString(rand.nextInt(10));
        numStr+=ran;
    }
    params.put("text", numStr);
    params.put("app_version", "test app 1.2"); // application name and version

    try {
    	//send() 는 메시지를 보내는 함수  
      JSONObject obj = (JSONObject) coolsms.send(params);
      System.out.println(obj.toString());
    } catch (CoolsmsException e) {
      System.out.println(e.getMessage());
      System.out.println(e.getCode());
    }
  }
}