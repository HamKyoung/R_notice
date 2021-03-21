<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content= "text/html; charset=UTF-8">
<!-- BootStrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>조회</title>
</head>
<body>
    <div style="padding-left : 20px;">
      <h3>공지사항</h3>
    </div>
    <c:set var="notice_no" value="${noticeVO.notice_no }" />
    <c:set var="title" value="${noticeVO.title }" />
    <c:set var="contents" value="${noticeVO.contents }" />
    <c:set var="id" value="${noticeVO.id }" />
    <c:set var="file1" value="${noticeVO.file1 }" />
    <c:set var="u_date" value="${noticeVO.u_date }" />
    <c:set var="c_date" value="${noticeVO.c_date }" />
    <div style="padding : 30px;">
      <div class="form-group">
        <label>제목: </label> <span>${title}</span>
      </div>
      <div class="form-group">
        <label>작성자: </label> <span>${id}</span>
      </div>
      <div class="form-group">
        <label>작성일: </label> <span>"${c_date.substring(0, 16)}"</span>
      </div>
      <div class="form-group">
        <label>최종 수정일: </label> <span>"${u_date.substring(0, 16)}"</span>
      </div>
      <div class="form-group">
        <label>내용: </label>
        <p>${contents}</p>
      </div>
      <div class="form-group">
        <label>첨부파일: </label>
        <span>${file1 }</span>
      </div>
      <div class="form-group">
          <button type="button" onclick="location.href='../update/${notice_no}'"  class="btn btn-info" style= "margin-left: 90%;">수정</button>
          <form action="../delete/${notice_no}" method="post">
            <input type="hidden" name="_method" value="DELETE"/>
              <input type="submit" class="btn btn-info" style= "margin-left: 90%;" value="삭제">
          </form>
      </div>
    </div>
</body>
</html>