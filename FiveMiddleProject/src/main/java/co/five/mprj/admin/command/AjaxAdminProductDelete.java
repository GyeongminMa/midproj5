package co.five.mprj.admin.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.five.mprj.common.Command;
import co.five.mprj.product.service.ProductService;
import co.five.mprj.product.service.ProductVO;
import co.five.mprj.product.serviceImpl.ProductServiceImpl;

public class AjaxAdminProductDelete implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
		// 강의 삭제 Ajax
		String productNum = request.getParameter("productNum");

		ProductVO vo = new ProductVO();
		vo.setProductNum(Integer.valueOf(request.getParameter(productNum)));

		ProductService dao = new ProductServiceImpl();

		int n = dao.productDelete(vo);
		String json = null;
		if (n > 0) {
			// {"retCode":"Success,"productNum": productNum}
			json = "{\"retCode\":\"Success,\"productNum\": productNum}";
		} else {
			// {"retCode":"False"}
			json = "{\"retCode\":\"False\"}";
		}

		return "Ajax:" + json;
	}

}
