package co.five.mprj.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.five.mprj.common.Command;
import co.five.mprj.review.service.ReviewService;
import co.five.mprj.review.service.ReviewVO;
import co.five.mprj.review.serviceImpl.ReviewServiceImpl;

public class ReviewUpdate implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReviewService dao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		
		int n = 0;
		String message = null; 
		
		vo.setReviewNum(Integer.parseInt(request.getParameter("reviewNum")));
		vo.setReviewWriter(request.getParameter("reviewWriter"));
		vo.setReviewSubject(request.getParameter("reviewSubject"));
		//vo.setReviewStar(Integer.parseInt(request.getParameter("reviewStar")));
		
		
		n= dao.reviewUpdate(vo);
		
		if(n != 0) {
			message = "리뷰수정이 완료되었습니다.";
		}else {
			message = "리뷰수정에 실패했습니다..";
		}
		request.setAttribute("message", message);
		
		
		return "reviews/reviewList.tiles";
	}

}
