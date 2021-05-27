package com.board.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.basketDTO;
import db.boardDAO;
import db.memberDAO;

public class BasketList implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("id");
		memberDAO mdao = new memberDAO();
		int member_num = mdao.getMemberNum(id);
		List<basketDTO> list = new boardDAO().getBasketList(member_num);
		
		
		ActionForward forward=new ActionForward();
		forward.setRedirect(false);
		
		forward.setPath("mypage.jsp"); 
		request.setAttribute("center", "basket.jsp");
		
		return forward;
	}
	

}
