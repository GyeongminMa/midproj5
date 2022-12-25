package co.five.mprj.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.five.mprj.MainCommand;
import co.five.mprj.common.Command;
import co.five.mprj.member.command.AjaxMemberIdCheck;
import co.five.mprj.member.command.AjaxMemberNickCheck;
import co.five.mprj.member.command.MemberEditForm;
import co.five.mprj.member.command.MemberJoin;
import co.five.mprj.member.command.MemberJoinForm;
import co.five.mprj.member.command.MemberLogin;
import co.five.mprj.member.command.MemberLoginForm;
import co.five.mprj.member.command.MemberLogout;
import co.five.mprj.member.command.MemberSelect;
import co.five.mprj.member.command.MemberUpdate;
import co.five.mprj.member.command.Mypage;
import co.five.mprj.orders.command.Orderlist;
import co.five.mprj.member.command.MemberJoinForm;
import co.five.mprj.product.command.ProductAllList;
import co.five.mprj.review.command.ReviewInsert;
import co.five.mprj.review.command.Review;
import co.five.mprj.review.command.ReviewDelete;
import co.five.mprj.review.command.ReviewEditForm;
import co.five.mprj.review.command.ReviewList;
import co.five.mprj.review.command.ReviewSelect;
import co.five.mprj.review.command.ReviewUpdate;


//@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();
       

    public FrontController() {
        super();
    }


	public void init(ServletConfig config) throws ServletException {
		// 명령집단 map.put(K, V)
		map.put("/main.do", new MainCommand()); // 처음 실행하는 페이지
		
		//강좌
		map.put("/prodListAjax.do", new ProductAllList()); //강좌전체		
		
		
		//리뷰
		map.put("/reviewList.do", new ReviewList());
		map.put("/reviewInsert.do", new ReviewInsert());
		map.put("/reviewDelete.do", new ReviewDelete());
		map.put("/reviewUpdate.do", new ReviewUpdate());
		map.put("/reviewEditForm.do", new ReviewEditForm());
		map.put("/reviewSelect.do", new ReviewSelect());
		//결제
		map.put("/orderlist.do", new Orderlist());
		
		
		
		
		map.put("/ckEditor.do", new Ckeditor()); //ckeditor
		
		//회원가입
		map.put("/memberJoinForm.do", new MemberJoinForm()); //회원가입 폼
		map.put("/AjaxMemberIdCheck.do", new AjaxMemberIdCheck()); //회원아이디 중복확인
		map.put("/AjaxMemberNickCheck.do", new AjaxMemberNickCheck()); //회원닉네임 중복확인
		map.put("/memberJoin.do", new MemberJoin()); //회원가입
		map.put("/memberLoginForm.do", new MemberLoginForm()); //로그인 폼 호출
		map.put("/memberLogin.do", new MemberLogin()); //로그인
		map.put("/memberLogout.do", new MemberLogout()); //로그아웃
		
		
		map.put("/myPage.do", new Mypage()); // 마이페이지(헤더에서 누르면 연결되는 곳)
		map.put("/memberEditForm.do", new MemberEditForm()); // 회원 정보 수정 폼 (비밀번호 확인)
		map.put("/memberSelect.do", new MemberSelect()); // 회원 정보 단건 조회
		map.put("/memberUpdate.do", new MemberUpdate()); // 회원 정보 수정
	}


	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 요청을 분석, 실행, 결과를 돌려주는 곳
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());
//		System.out.println(page + "==============");
		Command command = map.get(page);
		String viewPage = command.exec(request, response);

		// view Resolve start
		if (!viewPage.endsWith(".do")) {
			if (viewPage.startsWith("Ajax:")) {
				// ajax
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().print(viewPage.substring(5));
				return;
			} else if (!viewPage.endsWith(".tiles")) {
				viewPage = "WEB-INF/views/" + viewPage + ".jsp"; // 타일즈 적용안하는 것
			}

			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect(viewPage);
		}
	}

}
