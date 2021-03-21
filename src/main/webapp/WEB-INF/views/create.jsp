<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
 
<!DOCTYPE html> 
<html lang="ko"> 
<head> 
<meta charset="UTF-8"> 
<meta name="viewport" content="user-scalable=yes, initial-scale=1.0, maximum-scale=3.0, width=device-width" />
<title>등록</title>
 
 
<script type="text/JavaScript"
          src="http://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
</head> 
 
<body>
  <div style="padding-left : 20px;">
    <h3>공지사항 등록</h3>
  </div>
  <div style="padding : 30px;">
    <FORM method='POST' action='./create' enctype="multipart/form-data">
        <div class="form-group">
          <label>제목</label>
            <input type="text" name="title" id='title' class="form-control" value='공지사항 제목'>
        </div>
        <div class="form-group">
          <label>작성자</label>
          <input type="text" name="id" id='id' class="form-control" value='관리자'>
        </div>
        <div class="form-group">
          <label>내용</label>
          <textarea name="contents" id='contents' class="form-control" rows="5">공지사항 내용입니다.</textarea>
        </div>
        <div class="form-group">
          <label>파일업로드</label>
          <input type='file' class="form-control" name='file1MF'  
                     value='' placeholder="파일 선택" multiple="multiple">
        </div>

        <button type="submit" class="btn btn-info">등록</button>
        <button type="button" onclick="location.href='./list/1'" class="btn btn-info">취소</button>
    </FORM>
  </DIV>

 
</body>
 
</html>