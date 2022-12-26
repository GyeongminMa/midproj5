package co.five.mprj.orders.map;

import java.util.List;

import co.five.mprj.orders.service.OrdersVO;

public interface OrdersMapper {
	// 전체 조회
	List<OrdersVO> ordersSelectList();

	// 저장
	int ordersInsert(OrdersVO vo);
}
