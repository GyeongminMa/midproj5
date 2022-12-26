package co.five.mprj.qna.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class QnaVO {
	private int qnaNum;
	private String qnaTitle;
	private String qnaSubject;
	private String qnaWriter;
	private Date qnaDate;
	private int qnaHit;
	private String qnaFileUrl;

}
