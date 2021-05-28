  
DROP TABLE REPLY;
DROP TABLE BOARD;
DROP TABLE MEMBER_LOG;
DROP TABLE MEMBER;

-- 회원 테이블
CREATE TABLE MEMBER
(
	NO NUMBER,  -- 회원번호
	ID VARCHAR2(32) NOT NULL UNIQUE,  -- ID
	PW VARCHAR2(32) NOT NULL,  -- PW
	NAME VARCHAR2(50),  -- 이름
	EMAIL VARCHAR2(200) NOT NULL UNIQUE,  -- 이메일
	REGDATE DATE  -- 가입일
);

-- 회원 접속 기록 테이블
CREATE TABLE MEMBER_LOG
(
	NO NUMBER,  -- 기록번호
	ID VARCHAR2(32),  -- 접속자ID
	LOGIN DATE,  -- 로그인일시
	LOGOUT DATE  -- 로그아웃일시
);

-- 게시판 테이블
CREATE TABLE BOARD
(
	IDX NUMBER,  -- 게시글번호
	AUTHOR VARCHAR2(50),  -- 작성자
	TITLE VARCHAR2(2000) NOT NULL,  -- 제목
	CONTENT VARCHAR2(4000),  -- 내용
	HIT NUMBER,  -- 조회수
	IP VARCHAR2(20),  -- 작성자IP
	FILENAME VARCHAR2(300),  -- 첨부파일명
	STATE NUMBER,  -- 상태(정상: 0, 삭제: -1)
	POSTDATE DATE,  -- 작성일
	LASTMODIFIED DATE  -- 최종수정일
);

-- 댓글 테이블
CREATE TABLE REPLY
(
	IDX NUMBER,  -- 댓글번호
	AUTHOR VARCHAR2(50),  -- 작성자
	CONTENT VARCHAR2(4000),  -- 내용
	IP VARCHAR2(20),  -- 작성자IP
	BOARD_IDX NUMBER,  -- 원글의 번호
	POSTDATE DATE  -- 작성일 
);

-- 기본키
ALTER TABLE MEMBER ADD CONSTRAINT MEMBER_PK PRIMARY KEY(NO);
ALTER TABLE MEMBER_LOG ADD CONSTRAINT MEMBER_LOG_PK PRIMARY KEY(NO);
ALTER TABLE BOARD ADD CONSTRAINT BOARD_PK PRIMARY KEY(IDX);
ALTER TABLE REPLY ADD CONSTRAINT REPLY_PK PRIMARY KEY(IDX);
-- 외래키
ALTER TABLE MEMBER_LOG ADD CONSTRAINT MEMBER_LOG_MEMBER_FK FOREIGN KEY(ID) REFERENCES MEMBER(ID);
ALTER TABLE BOARD ADD CONSTRAINT BOARD_MEMBER_FK FOREIGN KEY(AUTHOR) REFERENCES MEMBER(ID);
ALTER TABLE REPLY ADD CONSTRAINT REPLY_BOARD_FK FOREIGN KEY(BOARD_IDX) REFERENCES BOARD(IDX);

-- 시퀀스
DROP SEQUENCE MEMBER_SEQ;
DROP SEQUENCE MEMBER_LOG_SEQ;
DROP SEQUENCE BOARD_SEQ;
DROP SEQUENCE REPLY_SEQ;
CREATE SEQUENCE MEMBER_SEQ INCREMENT BY 1 START WITH 1 NOCYCLE NOCACHE;
CREATE SEQUENCE MEMBER_LOG_SEQ INCREMENT BY 1 START WITH 1 NOCYCLE NOCACHE;
CREATE SEQUENCE BOARD_SEQ INCREMENT BY 1 START WITH 1 NOCYCLE NOCACHE;
CREATE SEQUENCE REPLY_SEQ INCREMENT BY 1 START WITH 1 NOCYCLE NOCACHE;

-- 데이터
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL, 'admin', '1111', '제임스', 'admin@home.com', SYSDATE);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL, 'jack', '1111', '잭', 'jack@home.com', SYSDATE);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL, 'apple', '1111', '사과', 'apple@home.com', SYSDATE);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL, 'rose', '1111', '장미', 'rose@home.com', SYSDATE);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL, 'prodo', '1111', '프로도', 'prodo@home.com', SYSDATE);