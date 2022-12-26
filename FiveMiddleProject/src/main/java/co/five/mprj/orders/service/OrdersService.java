package co.five.mprj.orders.service;

import java.util.List;

public interface OrdersService {
	// 전체 조회
	List<OrdersVO> ordersSelectList();

	// 저장
	int ordersInsert(OrdersVO vo);
}
