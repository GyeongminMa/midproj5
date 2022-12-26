package co.five.mprj.cart.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.five.mprj.cart.service.CartService;
import co.five.mprj.cart.service.CartVO;
import co.five.mprj.cart.serviceImpl.CartServiceImpl;
import co.five.mprj.common.Command;

public class AjaxCartInsert implements Command {

	// ▼ 장바구니 담기
	// 정은 온니 굿몰닝야!!! 상품 상세 페이지에서 '장바구니'버튼 누르면 > JS파일에서 강좌 정보 담아서(fetch문으로)
	// cartInsert.do로 보내주면 돼!!
	// 아마 될 거야ㅎ,, 안 되면 말해줘♥♡♥♡♥♡ 메리크리스마스~!~!
	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		CartService service = new CartServiceImpl();
		CartVO vo = new CartVO();

		ObjectMapper mapper = new ObjectMapper();
		HttpSession session = request.getSession();

		String json = null;

		String memberId = (String) session.getAttribute("memberId");

		if (memberId == null) {
			// ▷ 로그인X : 로그인폼으로 이동
			return "member/memberLoginForm.tiles";
		}

		// ▷ 로그인O : 장바구니에 담기
		vo.setMemberId(memberId);
		vo.setProductName(request.getParameter("productName"));
		vo.setProductNum(Integer.parseInt(request.getParameter("productNum")));
		vo.setProductPrice(Integer.parseInt(request.getParameter("productPrice")));
		vo.setProductThumbnailUrl(request.getParameter("productThumbnailUrl"));
		vo.setProductDate(Integer.parseInt(request.getParameter("productPrice")));

		System.out.println("(CartInsert) 장바구니에 담을 VO ▶ " + vo);
		service.cartInsert(vo);

		try {
			json = mapper.writeValueAsString(vo);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return "ajax:" + json;
	}

}
