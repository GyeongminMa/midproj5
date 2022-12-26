package co.five.mprj.member.command;

import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.five.mprj.common.AES256Util;
import co.five.mprj.common.Command;
import co.five.mprj.member.service.MemberService;
import co.five.mprj.member.service.MemberVO;
import co.five.mprj.member.serviceImpl.MemberServiceImpl;

public class MemberLogin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 로그인
		System.out.println("로그인 호출");
		MemberService dao = new MemberServiceImpl();
		MemberVO vo = new MemberVO();

		HttpSession session = request.getSession();

		String password = request.getParameter("memberPassword");
		try {
			AES256Util aes = new AES256Util();
			try {
				password = aes.encrypt(password);
			} catch (NoSuchAlgorithmException e) {
				e.printStackTrace();
			} catch (GeneralSecurityException e) {
				e.printStackTrace();
			}
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		vo.setMemberId(request.getParameter("memberId"));

		vo.setMemberPassword(password);

		vo = dao.memberSelect(vo);
		if (vo != null) {
			// 세션으로 계속 가지고 갈 정보들
			session.setAttribute("memberId", vo.getMemberId());
			session.setAttribute("memberRole", vo.getMemberRole());

//			message = vo.getMemberName() + "님 환영합니다.";
//			request.setAttribute("message", message);

			return "member/memberLogin.tiles";

		} else {
//			message = "아이디 또는 패스워드가 틀립니다.";
//			request.setAttribute("message", message);
			// 경고창 띄우고 메인으로 이동
			return "member/message.tiles";

		}
	}

}
