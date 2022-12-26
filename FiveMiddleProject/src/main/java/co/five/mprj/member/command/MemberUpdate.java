package co.five.mprj.member.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.five.mprj.common.Command;
import co.five.mprj.member.service.MemberService;
import co.five.mprj.member.service.MemberVO;
import co.five.mprj.member.serviceImpl.MemberServiceImpl;

public class MemberUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		
//		HttpSession session = request.getSession();
//		
		System.out.println("업데이트 페이지 도착");
		MemberVO vo = new MemberVO();
		
		MemberService service = new MemberServiceImpl();
		
		vo.setMemberId(request.getParameter("memberId"));
		vo.setMemberNickname(request.getParameter("memberNickname"));
		vo.setMemberPassword(request.getParameter("memberPassword"));
		System.out.println(vo+"==================");
		
		int cnt = service.memberUpdate(vo);
		
		
		// Ajax 처리
		String json = null;
		
		ObjectMapper mapper = new ObjectMapper();
		
		if(cnt > 0) {
			// 수정 성공했을 경우
			vo = service.memberSelect(vo);
			try {
				json = mapper.writeValueAsString(vo);
			}catch(JsonProcessingException e) {
				e.printStackTrace();
			}
			System.out.println(json+"===============");
//			return "Ajax:" + "{\"retCode\": \"OK\"}";
			return "Ajax:" + json;
		}
		// 수정 실패했을 경우
		return "Ajax:" + "{\"retCode\":\"Fail\"}";
	}

}
