package co.five.mprj.notice.command;

import java.io.IOException;

import java.sql.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import co.five.mprj.common.Command;
import co.five.mprj.notice.service.NoticeVO;
import co.five.mprj.notice.service.NoticeService;
import co.five.mprj.notice.serviceImpl.NoticeServiceImpl;

public class NoticeInsert implements Command {

	@Override
	public String exec(HttpServletRequest request, HttpServletResponse response) {

		NoticeVO vo = new NoticeVO();
		// noticeList(인서트??).jsp에서 넘기는 파라미터들을 받아옴
		// 여기서 넘어오는 값들
		// -> xhtp.open('GET', 'noticeAddAjax.do?writer=' + writer + '&title=' + title + '&subject=' + subject + '&noticeDate=' + today.yyyymmdd());
		vo.setNoticeWriter(request.getParameter("writer"));
		vo.setNoticeTitle(request.getParameter("title"));
		vo.setNoticeSubject(request.getParameter("subject"));
		vo.setNoticeDate(Date.valueOf(request.getParameter("noticeDate")));
		vo.setNoticeFileUrl(request.getParameter("FileUrl"));
		NoticeService service = new NoticeServiceImpl();
		service.noticeInsert(vo);

		String json = null;
		ObjectMapper mapper = new ObjectMapper();
		
		try {
			json = mapper.writeValueAsString(vo);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}

		System.out.println(json);

		return "Ajax:" + json;
	}

}
