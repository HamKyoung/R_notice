package dev.mvc.notice;

import java.util.HashMap;
import java.util.List;

public interface NoticeProcInter {
  
  // ���
  public int create(NoticeVO noticeVO);
  
  //���
  public List<NoticeVO> list(HashMap<String, Object> map);
  
  // ��ȸ
  public NoticeVO read(int notice_no);
  
  // ����
  public int update(NoticeVO noticeVO);
  
  // ����
  public int delete(int notice_no);

  // ����¡ ���
  public String pagingBox(String listFile, int count, int nowPage);
  
  // ��ü �� ��
  public int count();
}
