package co.five.mprj.review.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
	private int reviewNum;
	private String reviewWriter;
	private String reviewSubject;
	private int reviewStar;
	private String reviewFileUrl;
	private int productNum;
	private int reviewHit;

}
