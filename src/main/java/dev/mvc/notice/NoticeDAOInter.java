package dev.mvc.notice;

import java.util.HashMap;
import java.util.List;

public interface NoticeDAOInter {
  
  // 등록
  public int create(NoticeVO noticeVO);
  
  // 목록
  public List<NoticeVO> list(HashMap<String, Object> map);
  
  // 조회
  public NoticeVO read(int notice_no);
  
  // 수정
  public int update(NoticeVO noticeVO);
  
  // 삭제
  public int delete(int notice_no);
  
  // 전체 글 수
  public int count();

}
