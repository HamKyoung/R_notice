프로젝트 빌드방법(STS 기준)

1. 깃허브에서 모든 소스 및 파일을 가져온다.
2. src > main > webapp > WEB-INF > doc > 공지사항 폴더 안에 notice.sql 파일을 Oracle에서 열어 테이블을 생성하고 시퀀스를 만든다.
3. 톰캣 서버를 실행한 뒤 주소창에 http://localhost:9090/notice/list/1 을 입력한다.
4. 글 등록 버튼을 눌러 글을 작성한다.
  4-1. 공지사항 제목과 작성자 내용을 입력하고 파일 업로드를 선택적으로 사용할 수 있다.
  4-2. 등록을 누르면 리스트로 이동되며, 데이터베이스에 등록된다.

5. 글 제목을 클릭하여 조회로 들어갈 수 있으며 조회에는 제목, 작성자, 작성일, 최종수정일, 내용, 첨부파일 이름이 출력된다.
  5-1. 조회에는 수정버튼과 삭제버튼이 있으며 수정 버튼을 누르면 수정페이지로 넘어가고 삭제버튼을 누르면 바로 삭제된다.

6. 수정 페이지에서는 제목과 내용을 수정할 수 있으며 수정 후나 취소 버튼을 누르면 목록으로 돌아간다.
7. 첨부파일은 C:\프로젝트 경로\.metadata\.plugins\org.eclipse.wst.server.core\tmp1\wtpwebapps\R_notice\storage 에 저장되며 
    여러개의 첨부파일을 올린 경우 데이터베이스는 공지사항 테이블만 만든 관계로 하나의 이름만 나오지만 폴더에는 모두 저장 된다.
8. 페이징은 기본적으로 10개의 게시물을 한 페이지로 하며 10개의 페이지가 넘어가면 이전, 다음 버튼이 생긴다.