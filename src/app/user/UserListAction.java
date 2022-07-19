package app.user;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionTo;
import app.user.dao.UserDAO;
import app.user.dao.UserDTO;

public class UserListAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		UserDAO udao = new UserDAO();
		String temp = req.getParameter("page");
		String keyword = req.getParameter("keyword");
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		
		//한 페이지에서 보여줄 게시글의 개수
		int pageSize = 20;
		
		//전체 개시글의 개수
		int totalCnt = udao.getUserCnt();
		
//							13	/10				11
		//아래쪽 페이징 처리 부분에 보여지는 첫번째 페이지 번호
		int startPage = ((page-1)/10)*10+1;
		//아래쪽 페이징 처리 부분에 보여지는 마지막 페이지 번호(연산으로 구해진것)
		int endPage = startPage+9;
		//전체 개수를 기반으로 한 가장 마지막 페이지 번호
		int totalPage = (totalCnt-1)/pageSize+1;
		
		//가장 마지막 페이지 번호보다 연산으로 구해진 endPage가 더 큰 경우도 있다.(허구의 페이지 번호가 존재한다)
		//그때는 endPage를 가장 마지막 페이지 번호로 바꿔준다.
		endPage = endPage>totalPage ? totalPage : endPage;
		
		int startRow = (page-1)*pageSize;
		
		List<UserDTO> userList = udao.getUserList(startRow,pageSize,keyword);
		
		req.setAttribute("userList", userList);
		req.setAttribute("totalPage", totalPage);
		req.setAttribute("totalCnt", totalCnt);
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("keyword", keyword);

		
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/user/userlist.jsp");
		return acto;
	}
}
