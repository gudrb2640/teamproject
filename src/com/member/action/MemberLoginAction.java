package com.member.action;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.memberDAO;
import dto.memberDTO;
import dto.sellerDTO;


/*login.jsp에서 사용자가 입력한 id와 pass를  userCheck메소드로 전달하여..
사용자가 입력한 id와 pass값과...DB에 있는 id,pass값을 비교하여 로그인 처리 하기 */
public class MemberLoginAction implements Action{
	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {

		//login.jsp에서 사용자가 입력한 id와 pass 파라미터 가져오기
		String id=request.getParameter("id");
		String pass=request.getParameter("pw");
		
		//DB작업 객체 생성
		memberDAO mdao=new memberDAO();
		
		int check=mdao.userCheck(id, pass);
		

		if(check==0){
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('아이디 또는 비밀번호틀림');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;
		
		// check==-1 "아이디없음" 뒤로이동	
		}else if(check==-1){
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out=response.getWriter();
			out.println("<script>");
			out.println("alert('아이디없음');");
			out.println("history.back();");
			out.println("</script>");
			out.close();
			return null;	
		}
		
		
	/*check == 1  
	 * DB에 있는 아이디,비밀번호와...
	 * login.jsp 화면에서 입력한 아이디,비밀번호가 일치할때
	 */
		//세션객체 생성
		HttpSession session=request.getSession();
		
		//login.jsp 화면에서 입력한 아이디를 세션객체영역에 저장
		session.setAttribute("id", id);
		memberDTO mdto = mdao.getMemberInfo(id);
		session.setAttribute("member_num", mdto.getMember_num());
		session.setAttribute("member_code", mdto.getMember_code());
<<<<<<< HEAD:src/net/member/action/MemberLoginAction.java
		session.setAttribute("member_num", mdto.getMember_num());
=======
		session.setAttribute("member_num",mdto.getMember_num());
>>>>>>> 9f6ccbc3e44a9f6c7cae6ad687744e90f73dd59f:src/com/member/action/MemberLoginAction.java
	/*로그인 성공시.... CarMain.jsp 페이지로 이동 시킨다.*/
		//페이지 이동 방식 여부 값,이동페이지 경로 값 저장 하여 리턴 해주는 객체 생성
		ActionForward forward=new ActionForward();
		
		//페이지 이동 방식 여부 값 true로 저장  
		//true sendRedirect() <-이방식은 이동할 페이지 주소 경로 노출 함.	
		forward.setRedirect(true);
		
		// ./CarMain.jsp 이동할 페이지 주소 저장
		forward.setPath("./Main.me"); 
		
		return forward;
	}
	
}

