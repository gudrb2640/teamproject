package com.product.action;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.order.action.OrderList;

import action.Action;
import action.ActionForward;

public class ProductFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doProcess(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String RequestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = RequestURI.substring(contextPath.length());
		System.out.println(command);
		ActionForward forward = null;
		Action action = null;

		if (command.equals("/ProductListAction.pr")) // 상품 리스트 페이지로 이동하는 서블릿
		{

			action = new ProductListAction();
			try {
				forward = action.execute(request, response);

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/ProductAdd.pr")) { // 상품 등록 페이지로 이동
			action = new ProductAdd();
			try {
				forward = action.execute(request, response);

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/ProductAddAction.pr")) { // 상품 등록 액션
			action = new ProductAddAction();

			try {
				forward = action.execute(request, response);

			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/ProductModify.pr")) { // 수정할 상품 정보를 받아옴.
			action = new ProductModify();
			try {
				forward = action.execute(request, response);

			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (command.equals("/ProductModifyAction.pr")) { // 상품 수정 액션
			action = new ProductModifyAction();
			try {
				forward = action.execute(request, response);

			} catch (Exception e) {
				e.printStackTrace();
			}

		} else if (command.equals("/ProductDelete.pr")) { // 등록된 상품 삭제 액션
			action = new ProductDelete();
			try {

				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}

		}
		if (forward != null) {
			if (forward.isRedirect()) {// true -> sendRedirect()

				response.sendRedirect(forward.getPath());

			} else {// forward()

				RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
				dispatcher.forward(request, response);
			}
		} // if

	}

}
