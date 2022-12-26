package co.five.mprj.cart.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CartVO {
	private int cartNum;
	private int productNum;
	private String productName;
	private int productPrice;
	private int productDate;
	private String productThumbnailUrl;
	private String memberId;
	private String productExplain;

}
