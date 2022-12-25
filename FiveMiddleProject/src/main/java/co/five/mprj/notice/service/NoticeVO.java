package co.five.mprj.notice.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString

public class NoticeVO { // 공지사항 게시판 정보
	// 공지글 번호
	private int noticeNum;
	
	// 공지글 제목
	private String noticeTitle;
	
	// 공지글 내용
	private String noticeSubject;
	
	// 공지글 작성자
	private String noticeWriter;
	
	// 공지글 작성일
	private Date noticeDate;
	
	// 공지글 조회수
	private int noticeHit;
	
	// 공지글 첨부 이미지 URL
	private String noticeFileUrl;
}
