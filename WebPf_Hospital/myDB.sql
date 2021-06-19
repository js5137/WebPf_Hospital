CREATE SCHEMA siteDB;
USE siteDB;

CREATE TABLE 의사(
	의사번호 int auto_increment,
	이름 CHAR(10) not null,
	직책 VARCHAR(10) not null,
	PRIMARY KEY(의사번호)
);

CREATE TABLE 회원(
	id VARCHAR(10) NOT NULL,
	비밀번호 VARCHAR(16) NOT NULL,
	이름 VARCHAR(10) NOT NULL,
	연락처 VARCHAR(13) NOT NULL,
	email VARCHAR(20),
	PRIMARY KEY(id)
);

CREATE TABLE 예약(
	예약번호 INT NOT NULL auto_increment,
	예약시간 TIMESTAMP NOT NULL,
	방문목적 VARCHAR(10) NOT NULL,
	남길말 VARCHAR(300),
	회원id VARCHAR(10) NOT NULL,
	PRIMARY KEY(예약번호)
);

CREATE TABLE 진료(
	진료번호 INT auto_increment,
	진료시간 TIMESTAMP NOT NULL,
	담당의사번호 INT NOT NULL,
	회원id VARCHAR(10) NOT NULL,
	특이사항 VARCHAR(50),
	primary key(진료번호)
);



INSERT INTO 회원 VALUES('admin','1234','관리자','0000','admin@sql.com');
INSERT INTO 회원 VALUES('aa1234','aaaa','서규호','010-0000-0000',NULL);

INSERT INTO 의사(이름, 직책) VALUES ('최은서','원장');
INSERT INTO 의사(이름, 직책) VALUES ('한지원','일반의');
INSERT INTO 의사(이름, 직책) VALUES ('강준용','일반의');

INSERT INTO 예약(예약시간, 방문목적, 남길말, 회원id) VALUES ('2021-05-01 10:30:00','건강검진', 'TEST','admin');
INSERT INTO 예약(예약시간, 방문목적, 남길말, 회원id) VALUES ('2021-05-02 13:30:00','그외', NULL,'admin');
INSERT INTO 예약(예약시간, 방문목적, 남길말, 회원id) VALUES ('2021-05-01 10:30:00','진료문의', NULL,'aa1234');

INSERT INTO 진료(진료시간, 담당의사번호, 회원id, 특이사항) VALUES('2021-02-23 16:51:42','3','aa1234',NULL);
INSERT INTO 진료(진료시간, 담당의사번호, 회원id, 특이사항) VALUES('2021-02-23 13:01:02','1','admin','콧물');
INSERT INTO 진료(진료시간, 담당의사번호, 회원id, 특이사항) VALUES('2021-02-25 18:20:23','2','aa1234',NULL);
INSERT INTO 진료(진료시간, 담당의사번호, 회원id, 특이사항) VALUES('2021-02-28 15:57:06','2','aa1234','기침');
INSERT INTO 진료(진료시간, 담당의사번호, 회원id, 특이사항) VALUES('2021-03-03 11:44:38','1','admin',NULL);
INSERT INTO 진료(진료시간, 담당의사번호, 회원id, 특이사항) VALUES('2021-03-11 10:23:29','3','admin','수술');

create view 진료확인 AS SELECT * FROM 진료 INNER JOIN 의사 ON 진료.담당의사번호 = 의사.의사번호;