package co.five.mprj.orders.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class OrdersVO {
	private int ordersNum;
	private Date ordersDate;
	private String ordersStatus;
	private int productNum;
	private String productName;
	private int productPrice;
	private String productThumbnailUrl;
}
