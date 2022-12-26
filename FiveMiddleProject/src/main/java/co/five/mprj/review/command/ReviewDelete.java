package co.five.mprj.review.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.five.mprj.common.Command;
import co.five.mprj.review.service.ReviewService;
import co.five.mprj.review.service.ReviewVO;
import co.five.mprj.review.serviceImpl.ReviewServiceImpl;

public class ReviewDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		ReviewService dao = new ReviewServiceImpl();
		ReviewVO vo = new ReviewVO();
		vo.setReviewNum(Integer.parseInt(request.getParameter("reviewNum")));
		vo = dao.reviewSelect(vo);
		request.setAttribute("reviews", vo);
		
		
		int n = dao.reviewDelete(vo);
		if(n != 0) {
			return "reviewList.do";
		}else {
			request.setAttribute("message", "공지 삭제가 실패했습니다.");
			return "reviews/reviewMessage.tiles";
		}		
	}

}
