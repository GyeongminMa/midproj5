package co.five.mprj.prod.service;

import java.util.List;

public interface ProdService {
	List<ProdVO> prodSelectList();
	ProdVO prodSelect(ProdVO vo);
	int prodInsert(ProdVO vo);  //상품 저장
	int prodUpdate(ProdVO vo);  //상품 수정
	int prodDelete(ProdVO vo);  //상품 삭제
}
