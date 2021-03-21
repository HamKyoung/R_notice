/**********************************/
/* Table Name: �������� */
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

COMMENT ON TABLE notice is '��������';
COMMENT ON COLUMN notice.notice_no is '�������׹�ȣ';
COMMENT ON COLUMN notice.title is '����';
COMMENT ON COLUMN notice.id is '���̵�';
COMMENT ON COLUMN notice.contents is '����';
COMMENT ON COLUMN notice.c_date is '�ۼ���';
COMMENT ON COLUMN notice.u_date is '������';
COMMENT ON COLUMN notice.size1 is '÷������ ������';
COMMENT ON COLUMN notice.file1 is '÷������';

DROP SEQUENCE notice_seq;
CREATE SEQUENCE notice_seq
  START WITH 1              -- ���� ��ȣ
  INCREMENT BY 1          -- ������
  MAXVALUE 9999999999 -- �ִ밪: 9999999 --> NUMBER(7) ����
  CACHE 2                       -- 2���� �޸𸮿����� ���
  NOCYCLE;                     -- �ٽ� 1���� �����Ǵ� ���� ����

commit;

-- ���
INSERT INTO notice(notice_no, title, id, contents, file1, c_date, u_date)
VALUES(notice_seq.nextval, '�������� ����', 'admin', '�������� ����', 'notice.jpg', sysdate, sysdate);

INSERT INTO notice(notice_no, title, id, contents, file1, c_date, u_date)
VALUES(notice_seq.nextval, '�������� ����2', 'admin', '�������� ����2', 'notice.jpg', sysdate, sysdate);

-- ��ȸ
SELECT notice_no, title, id, contents, c_date, u_date, file1
FROM notice
WHERE notice_no = 3;

-- ����
UPDATE notice 
SET title='����', contents='����', u_date=sysdate
WHERE notice_no = 1;

-- ����
DELETE FROM notice
WHERE notice_no=1;


-- ����¡ ���
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


