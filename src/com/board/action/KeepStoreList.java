package com.board.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class KeepStoreList implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setAttribute("center", "keepstore.jsp");
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("mypage.jsp");
		return forward;
	}
	

}
