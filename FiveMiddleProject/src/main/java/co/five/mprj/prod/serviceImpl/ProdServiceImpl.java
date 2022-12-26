package co.five.mprj.prod.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.five.mprj.common.DataSource;
import co.five.mprj.prod.map.ProdMapper;
import co.five.mprj.prod.service.ProdService;
import co.five.mprj.prod.service.ProdVO;

public class ProdServiceImpl implements ProdService {
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private ProdMapper map = sqlSession.getMapper(ProdMapper.class);
	
	
	@Override
	public List<ProdVO> prodSelectList() {
		
		return map.prodSelectList();
	}
	@Override
	public ProdVO prodSelect(ProdVO vo) {
		
		return map.prodSelect(vo);
	}
	@Override
	public int prodInsert(ProdVO vo) {
		
		return map.prodInsert(vo);
	}
	@Override
	public int prodUpdate(ProdVO vo) {
		
		return map.prodUpdate(vo);
	}
	@Override
	public int prodDelete(ProdVO vo) {
		
		return map.prodDelete(vo);
	}
	
	
}
