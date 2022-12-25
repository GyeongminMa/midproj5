package co.five.mprj.product.service;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class ProductVO {
	private int productNum;
	private String productName;
	private String productExplain;
	private String productTrainer;
	private int productPrice;
	private String productSubject;
	private int productDate;
	private String productImgUrl;
	private String productThumbnailUrl;
	private String productCategory;
	private String productYoutubeurl;
}
