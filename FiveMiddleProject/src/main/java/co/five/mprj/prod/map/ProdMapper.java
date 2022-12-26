package co.five.mprj.prod.map;

import java.util.List;

import co.five.mprj.prod.service.ProdVO;
public interface ProdMapper {
	List<ProdVO> prodSelectList();
	ProdVO prodSelect(ProdVO vo);
	int prodInsert(ProdVO vo);
	int prodUpdate(ProdVO vo);  
	int prodDelete(ProdVO vo);
	
	
}
