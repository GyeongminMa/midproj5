package co.five.mprj.review.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.five.mprj.common.Command;
import co.five.mprj.review.service.ReviewService;
import co.five.mprj.review.service.ReviewVO;
import co.five.mprj.review.serviceImpl.ReviewServiceImpl;

public class ReviewList implements Command{

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReviewService dao = new ReviewServiceImpl();
		List<ReviewVO> reviews = new ArrayList<ReviewVO>();

		reviews = dao.reviewSelectList();  //db에서 멤버테이블의 목록을 가져온다.
		request.setAttribute("reviews", reviews); //결과를 jsp페이지에 전달하기 위해
		
		return "reviews/reviewList.tiles";
	}
}
