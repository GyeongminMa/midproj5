package co.five.mprj.prod.command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.five.mprj.common.Command;
import co.five.mprj.prod.service.ProdService;
import co.five.mprj.prod.service.ProdVO;
import co.five.mprj.prod.serviceImpl.ProdServiceImpl;

public class ProdListAjax implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {
			ProdService dao = new ProdServiceImpl();
			List<ProdVO> list = new ArrayList<ProdVO>();
			
			list = dao.prodSelectList();
			
			ObjectMapper mapper = new ObjectMapper();
			
			String json = null;
			try {
				json = mapper.writeValueAsString(list);
			} catch (JsonProcessingException e) {
				e.printStackTrace();
			}
			
			
			return "ajax:" + json;
		}

}
