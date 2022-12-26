package co.five.mprj.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.five.mprj.MainCommand;
import co.five.mprj.admin.command.AjaxAdminDel;
import co.five.mprj.admin.command.AdminMemberList;
import co.five.mprj.admin.command.AjaxAdminMemberList;
import co.five.mprj.admin.command.AdminOrdersList;
import co.five.mprj.cart.command.AjaxCartDelete;
import co.five.mprj.cart.command.AjaxCartInsert;
import co.five.mprj.cart.command.AjaxCartList;
import co.five.mprj.cart.command.CartMain;
import co.five.mprj.common.Command;
import co.five.mprj.member.command.AjaxMemberIdCheck;
import co.five.mprj.member.command.AjaxMemberNickCheck;
import co.five.mprj.member.command.MemberJoin;
import co.five.mprj.member.command.MemberJoinForm;
import co.five.mprj.member.command.MemberLogin;
import co.five.mprj.member.command.MemberLoginForm;
import co.five.mprj.member.command.MemberLogout;
import co.five.mprj.product.command.AjaxProductList;

//@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();

	public FrontController() {
		super();
	}

	public void init(ServletConfig config) throws ServletException {
		// ▶ 메인화면
		map.put("/main.do", new MainCommand()); // 처음 실행하는 페이지

		// ▶ 회원가입 (지은)
		map.put("/memberJoinForm.do", new MemberJoinForm()); // 회원가입 폼
		map.put("/AjaxMemberIdCheck.do", new AjaxMemberIdCheck()); // 회원아이디 중복확인
		map.put("/AjaxMemberNickCheck.do", new AjaxMemberNickCheck()); // 회원닉네임 중복확인
		map.put("/memberJoin.do", new MemberJoin()); // 회원가입

		// ▶ 로그인,로그아웃 (지은)
		map.put("/memberLoginForm.do", new MemberLoginForm()); // 로그인 폼 호출
		map.put("/memberLogin.do", new MemberLogin()); // 로그인
		map.put("/memberLogout.do", new MemberLogout()); // 로그아웃

		// ▶ 관리자 페이지
		// ▷ 강의관리(지은)
		map.put("/AjaxproductList.do", new AjaxProductList());// 강의 리스트
		// map.put("/AjaxProduct.do", new AjaxProduct());// Ajax
		// map.put("/ProductInsert.do", new productInsert()); //강의 추가

		// ▷ 회원관리(채은)
		map.put("/adminMemberList.do", new AdminMemberList()); // 회원관리 jsp 호출
		map.put("/ajaxAdminMemberList.do", new AjaxAdminMemberList()); // (ajax)회원 전체출력
		map.put("/ajaxAdminDel.do", new AjaxAdminDel()); // (ajax)회원삭제
		map.put("/adminOrdersList.do", new AdminOrdersList()); // 회원 구매 목록

		// ▶ 장바구니 (채은)
		map.put("/cartMain.do", new CartMain()); // 장바구니 jsp 호출
		map.put("/ajaxCartList.do", new AjaxCartList()); // (ajax)장바구니 전체출력
		map.put("/ajaxCartInsert.do", new AjaxCartInsert()); // (ajax)장바구니 담기
		map.put("/ajaxCartDelete.do", new AjaxCartDelete()); // (ajax)장바구니 삭제
	
	}

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String page = uri.substring(contextPath.length());

		System.out.println("=====" + page);

		Command command = map.get(page);
		String viewPage = command.exec(request, response);

		if (!viewPage.endsWith(".do")) {
			if (viewPage.startsWith("Ajax:")) {
				response.setContentType("text/html; charset=UTF-8");
				response.getWriter().print(viewPage.substring(5));
				return;
			} else if (!viewPage.endsWith(".tiles")) {
				viewPage = "WEB-INF/views/" + viewPage + ".jsp";
			}

			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect(viewPage);
		}
	}

}
