package com.member.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.memberDAO;
import dto.memberDTO;
import dto.sellerDTO;


public class SellerJoinAction implements Action{
	  @Override
	    public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
	        
	      
		  	//세션객체 생성
			HttpSession session=request.getSession();
			String id = (String)session.getAttribute("id");
			
			String directory = request.getServletContext().getRealPath("/upload_profile/");
			int maxSize = 1024*1024*1024;
			
			MultipartRequest multipartRequest;
			multipartRequest = new MultipartRequest(request, directory, maxSize, "UTF-8", new DefaultFileRenamePolicy());
			
			memberDAO mdao = new memberDAO();
			int member_num = mdao.getMemberNum(id);
			 
	        sellerDTO sdto = new sellerDTO();
	        sdto.setStore_name(multipartRequest.getParameter("store_name"));
	        sdto.setProfile_img(multipartRequest.getFilesystemName("profile_img"));
	        
	        sdto.setTemplate(multipartRequest.getParameter("template"));
	        sdto.setAccount(multipartRequest.getParameter("account"));
	        sdto.setMember_num(member_num);
	    	System.out.println(sdto.getMember_num());
			System.out.println(sdto.getAccount());
			
			System.out.println(sdto.getProfile_img());
			System.out.println(sdto.getTemplate());
			System.out.println(sdto.getStore_name());
	        sdto.setCategory_num(Integer.parseInt(multipartRequest.getParameter("category_num")));
	        System.out.println(sdto.getCategory_num());
	        mdao.insertSeller(sdto);
	        
	        memberDTO mdto = mdao.getMemberInfo(id);
			session.setAttribute("member_code", mdto.getMember_code());
			
	        ActionForward forward = new ActionForward();
	        forward.setRedirect(false);
	        forward.setPath("Main.me");
	        
	        return forward;
	    }
}
