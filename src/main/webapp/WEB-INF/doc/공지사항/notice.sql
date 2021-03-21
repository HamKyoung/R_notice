/**********************************/
/* Table Name: 공지사항 */
/**********************************/
drop table notice;
CREATE TABLE notice(
		notice_no                     		NUMBER(10)		 NOT NULL		 PRIMARY KEY,
		title                         		VARCHAR2(100)		 NOT NULL,
		id                            		VARCHAR2(30)		 NOT NULL,
		contents                      		VARCHAR2(3000)		 NOT NULL,
		c_date                        		DATE		 NOT NULL,
		u_date                        		DATE		 NOT NULL,
		file1                          		VARCHAR2(100)		 NULL 
);

COMMENT ON TABLE notice is '공지사항';
COMMENT ON COLUMN notice.notice_no is '공지사항번호';
COMMENT ON COLUMN notice.title is '제목';
COMMENT ON COLUMN notice.id is '아이디';
COMMENT ON COLUMN notice.contents is '내용';
COMMENT ON COLUMN notice.c_date is '작성일';
COMMENT ON COLUMN notice.u_date is '수정일';
COMMENT ON COLUMN notice.size1 is '첨부파일 사이즈';
COMMENT ON COLUMN notice.file1 is '첨부파일';

DROP SEQUENCE notice_seq;
CREATE SEQUENCE notice_seq
  START WITH 1              -- 시작 번호
  INCREMENT BY 1          -- 증가값
  MAXVALUE 9999999999 -- 최대값: 9999999 --> NUMBER(7) 대응
  CACHE 2                       -- 2번은 메모리에서만 계산
  NOCYCLE;                     -- 다시 1부터 생성되는 것을 방지

commit;

-- 등록
INSERT INTO notice(notice_no, title, id, contents, file1, c_date, u_date)
VALUES(notice_seq.nextval, '공지사항 제목', 'admin', '공지사항 내용', 'notice.jpg', sysdate, sysdate);

INSERT INTO notice(notice_no, title, id, contents, file1, c_date, u_date)
VALUES(notice_seq.nextval, '공지사항 제목2', 'admin', '공지사항 내용2', 'notice.jpg', sysdate, sysdate);

-- 조회
SELECT notice_no, title, id, contents, c_date, u_date, file1
FROM notice
WHERE notice_no = 3;

-- 수정
UPDATE notice 
SET title='제목', contents='내용', u_date=sysdate
WHERE notice_no = 1;

-- 삭제
DELETE FROM notice
WHERE notice_no=1;


-- 페이징 목록
SELECT notice_no, title, id, c_date, u_date, file1, r
FROM (
           SELECT notice_no, title, id, c_date, u_date, file1, rownum as r
           FROM (
                     SELECT notice_no, title, id, c_date, u_date, file1
                     FROM notice
                     ORDER BY notice_no DESC
           )          
)
WHERE r >= 1 AND r <= 10;

-- count
SELECT COUNT(*) as cnt
FROM notice;


