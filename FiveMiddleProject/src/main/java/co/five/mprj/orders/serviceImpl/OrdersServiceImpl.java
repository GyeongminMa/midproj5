package co.five.mprj.orders.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.five.mprj.common.DataSource;
import co.five.mprj.orders.map.OrdersMapper;
import co.five.mprj.orders.service.OrdersService;
import co.five.mprj.orders.service.OrdersVO;

public class OrdersServiceImpl implements OrdersService {
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private OrdersMapper map = sqlSession.getMapper(OrdersMapper.class);

	@Override
	public List<OrdersVO> ordersSelectList() {
		// TODO Auto-generated method stub
		return map.ordersSelectList();
	}

	@Override
	public int ordersInsert(OrdersVO vo) {
		// TODO Auto-generated method stub
		return map.ordersInsert(vo);
	}

}
