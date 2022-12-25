package co.five.mprj.cart.service;

import java.util.List;

public interface CartService {
	// 장바구니 전체조회
	List<CartVO> cartSelectList();
	
	// 장바구니 저장
	int cartInsert(CartVO vo);
	
	// 장바구니 삭제
	int cartDelete(CartVO vo);
}
