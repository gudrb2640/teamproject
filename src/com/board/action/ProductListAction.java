package com.board.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import db.boardDAO;
import db.productDTO;

public class ProductListAction implements Action {
	
	@Override
	public ActionForward execute(HttpServletRequest request, 
			HttpServletResponse response) throws Exception {
		System.out.println("ProductListAction");

		ActionForward forward = new ActionForward();
		
		//AdminGoodsDAO객체 생성 후 getGoodsList()생성
		boardDAO bDao = new boardDAO();
		List<productDTO> productList = bDao.getProductList();
				
		//등록된 상품 목록 전부 가져오기
		System.out.println("M : "+ productList);
		
		//requset영역에 저장
		request.setAttribute("productList", productList);
		
		//페이지이동(뷰페이지로이동)
		forward.setPath("./ProductList.jsp");
		forward.setRedirect(false);		
		return forward;
	}
}