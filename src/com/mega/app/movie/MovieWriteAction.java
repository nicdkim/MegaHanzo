package com.mega.app.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mega.action.Action;
import com.mega.action.ActionTo;

public class MovieWriteAction implements Action{
	@Override
	public ActionTo execute(HttpServletRequest req, HttpServletResponse resp) throws Exception {
		ActionTo acto = new ActionTo();
		acto.setRedirect(false);
		acto.setPath("/app/movie/moviewrite.jsp");
		return acto;
	}
}
