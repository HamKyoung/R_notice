<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" /> 
<title>목록</title>
 
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
</head>
 
<body>
    <table class="table table-striped" style='width: 100%;'>
      <colgroup>
        <col style="width: 10%;"></col>
        <col style="width: 30%;"></col>
        <col style="width: 10%;"></col>
        <col style="width: 15%;"></col>
        <col style="width: 15%;"></col>
      </colgroup>
      <thead>
        <tr>
          <th style='text-align: center;'>번호</th>
          <th style='text-align: center;'>제목</th>
          <th style='text-align: center;'>작성자</th>
          <th style='text-align: center;'>등록일</th>
          <th style='text-align: center;'>수정일</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="noticeVO" items="${list }">
          <c:set var="notice_no" value="${noticeVO.notice_no }" />
          <c:set var="title" value="${noticeVO.title }" />
          <c:set var="id" value="${noticeVO.id }" />
          <c:set var="file1" value="${noticeVO.file1 }" />
          <c:set var="u_date" value="${noticeVO.u_date }" />
          <c:set var="c_date" value="${noticeVO.c_date }" />
          <tr> 
            <td style='vertical-align: middle; text-align: center;'>${notice_no}</td>
            <td style='vertical-align: middle; text-align: center;'><a href="../read/${notice_no}">${title}</a></td>  
            <td style='vertical-align: middle; text-align: center;'>${id}</td> 
            <td style='vertical-align: middle; text-align: center;'>${c_date.substring(0, 16)}</td>
            <td style='vertical-align: middle; text-align: center;'>${u_date.substring(0, 16)}</td>
          </tr>
        </c:forEach>
      </tbody>
    </table>
    <button type="button" onclick="location.href='../create'"  class="btn btn-info" style= "margin-left: 90%;">글 등록</button>
    <DIV class='bottom_menu'>${paging }</DIV>
    <br>
</body>
</body>
 
</html>
