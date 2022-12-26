package co.five.mprj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.five.mprj.common.Command;
import co.five.mprj.member.service.MemberVO;

public class Admin implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("===========관리자페이지(Admin.do)===========");
		HttpSession session = request.getSession();
		
//		System.out.println(session.getAttribute("member"));
		
		MemberVO vo = (MemberVO) session.getAttribute("member");
		System.out.println(vo.getMemberBirth());

		System.out.println(vo.getMemberGender());
		System.out.println(vo.getMemberRole());
		System.out.println(vo.getMemberName());
		return "admin/adminTestMain.tiles";
	}

}
