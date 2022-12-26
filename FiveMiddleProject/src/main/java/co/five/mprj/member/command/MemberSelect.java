package co.five.mprj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.five.mprj.common.Command;
import co.five.mprj.member.service.MemberService;
import co.five.mprj.member.service.MemberVO;
import co.five.mprj.member.serviceImpl.MemberServiceImpl;

public class MemberSelect implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		MemberService service = new MemberServiceImpl();
		MemberVO vo = new MemberVO();
		HttpSession session = request.getSession();
		
		
		vo.setMemberId(request.getParameter("여긴 이전 페이지에서 클릭할때 가져오는 변수 자리"));
		vo = service.memberSelect(vo);
		request.setAttribute("member", vo);
		
		return "member/memberEditForm.tiles";
	}

}
