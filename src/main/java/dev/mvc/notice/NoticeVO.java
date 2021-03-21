package dev.mvc.notice;

import java.util.List;

import org.springframework.web.multipart.MultipartFile;

public class NoticeVO {
  
  private int notice_no = 0;
  private String title = "";
  private String id = "";
  private String contents = "";
  private String c_date = "";
  private String u_date = "";
  private String file1 = "";
  
  private List<MultipartFile> file1MF;


  public int getNotice_no() {
    return notice_no;
  }

  public void setNotice_no(int notice_no) {
    this.notice_no = notice_no;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getContents() {
    return contents;
  }

  public void setContents(String contents) {
    this.contents = contents;
  }

  public String getC_date() {
    return c_date;
  }

  public void setC_date(String c_date) {
    this.c_date = c_date;
  }

  public String getU_date() {
    return u_date;
  }

  public void setU_date(String u_date) {
    this.u_date = u_date;
  }

  public String getFile1() {
    return file1;
  }

  public void setFile1(String file1) {
    this.file1 = file1;
  }

  public List<MultipartFile> getFile1MF() {
    return file1MF;
  }

  public void setFile1MF(List<MultipartFile> file1mf) {
    file1MF = file1mf;
  }

  
  
  

}
