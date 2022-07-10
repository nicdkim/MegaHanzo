package com.koreait.app.movie;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLEncoder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.koreait.action.Action;
import com.koreait.action.ActionTo;

public class FileDownloadAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		String systemname = req.getParameter("systemname");
		String orgname = req.getParameter("orgname");
		String saveFolder = req.getServletContext().getRealPath("file");
		
		String filename = saveFolder+"\\"+systemname;
		
		InputStream is = null;
		OutputStream os = null;
		
		//다운받으려는 파일을 자바의 객체로 가져옴(파일에 대한 정보들을 가지고 있고, 그 파일을 쉽게 관리할 수 있게 도와줌)
		File file = new File(filename);
		//그 파일을 향한 통로 개설
		is = new FileInputStream(file);
		
		//다운로드를 요청한 클라이언트의 로컬 정보가 담긴 헤더
		String client = req.getHeader("User-Agent");
		
		resp.reset();
		
		//파일을 응답해줄 준비, 세팅
		resp.setContentType("application/octet-stream");//이진데이터
		resp.setHeader("Content-Description", "JSP Generated Data");
		
		String dwName = "";
		
		try {
			//이름 인코딩
			try {
				dwName = URLEncoder.encode(orgname,"UTF-8").replaceAll("\\+", "%20");
			}
			catch (Exception e) {
				dwName = URLEncoder.encode(file.getName(),"UTF-8").replaceAll("\\+", "%20");
			}
			//클라이언트의 로컬 정보를 담은 client 변수 안에 MSIE 문자열이 포함되어 있는지를 비교(있으면 인덱스 반환, 없으면 -1)
			if(client.indexOf("MSIE") != -1) {
				//MSIE인 경우
				resp.setHeader("Content-Disposition", "attachment; fileName="+dwName);
			}
			else {
				//그 외
				resp.setHeader("Content-Disposition", "attachment; fileName=\""+dwName+"\"");
			}
			resp.setHeader("Content-Length", file.length()+"");
			//응답 준비 완료
			//파일을 클라이언트에게 응답하기 위한 통로 개설(사용자의 컴퓨터에 써주기 위한 통로)
			os = resp.getOutputStream();
			
			//파일을 바이트단위로 쪼개서 담아줄 배열
			byte[] b = new byte[(int)file.length()];
			int len = 0;
			//while문 반복때마다 is.read() 수행해서 len 대입
			//len은 파일의 끝이라면 -1이 담긴다.
			while((len = is.read(b,0,b.length)) != -1) {
				//무언가 파일을 읽어왔다면 os를 이용해서 사용자 컴퓨터에 write()로 써준다
				os.write(b,0,len);
			}
		}
		catch (Exception e) {
			System.out.println("FileDownloadAction : "+e);
		}
		finally {
			if(is != null) {
				is.close();
			}
			if(os != null) {
				os.close();
			}
		}
		return null;
	}
}











