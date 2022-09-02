-- ������ ����

--CREATE USER PETIST IDENTIFIED BY PETIST;
--GRANT CONNECT, RESOURCE TO PETIST;

-- PETIST ����

DROP TABLE MEMBER CASCADE CONSTRAINTS;
DROP TABLE HOSPITAL CASCADE CONSTRAINTS;
DROP TABLE HOSPITAL_INFO CASCADE CONSTRAINTS; 
DROP TABLE HOSPITAL_REVIEW CASCADE CONSTRAINTS;
DROP TABLE ANIMAL CASCADE CONSTRAINTS;
DROP TABLE DIARY CASCADE CONSTRAINTS;
DROP TABLE COMMUNITY CASCADE CONSTRAINTS;
DROP TABLE NOTICE CASCADE CONSTRAINTS;
DROP TABLE NOTICECOMMENT CASCADE CONSTRAINTS;
DROP TABLE INQUIRY CASCADE CONSTRAINTS;
DROP TABLE CATEGORY CASCADE CONSTRAINTS;
DROP TABLE REPLY CASCADE CONSTRAINTS;
DROP TABLE INREPLY CASCADE CONSTRAINTS;
DROP TABLE COATTACHMENT CASCADE CONSTRAINTS;
DROP TABLE USERREPLY CASCADE CONSTRAINTS;
--------------------------------------------------
---------------    SEQUENCE ����   ------------------   
--------------------------------------------------
DROP SEQUENCE SEQ_CNO; -- ���� �ĺ���ȣ�� �� ������
DROP SEQUENCE SEQ_FNO; -- ���� �ĺ���ȣ�� �� ������

-- ����
DROP SEQUENCE SEQ_INO; -- ���ǻ��� �ĺ���ȣ�� �� ������
DROP SEQUENCE SEQ_IRNO; -- ���� ���� ��� �ĺ���ȣ�� �� ������
-- ����
DROP SEQUENCE SEQ_ANO; -- �ݷ����� �ĺ���ȣ�� �� ������
DROP SEQUENCE SEQ_DNO; -- ���̾ �ĺ���ȣ�� �� ������
-- ����
DROP SEQUENCE SEQ_NNO; -- �������� ������
DROP SEQUENCE SEQ_NOCMT; -- �������� ��� ������
-- ����
DROP SEQUENCE SEQ_CRNO; -- Ŀ�´�Ƽ ��� �ĺ���ȣ�� �� ������

-- ���� �ĺ���ȣ�� �� ������
CREATE SEQUENCE SEQ_CNO 
NOCACHE;

-- ���� �ĺ���ȣ�� �� ������
CREATE SEQUENCE SEQ_FNO
NOCACHE;

-- �ݷ����� �ĺ���ȣ�� �� ������
CREATE SEQUENCE SEQ_ANO 
START WITH 50
NOCACHE;
-- �ݷ����� ���̾ �ĺ���ȣ�� �� ������
CREATE SEQUENCE SEQ_DNO 
NOCACHE;
-- ���ǻ��� �ĺ���ȣ�� �� ������
CREATE SEQUENCE SEQ_INO
NOCACHE;
-- ���ǻ��� ��� �ĺ���ȣ�� �� ������
CREATE SEQUENCE SEQ_IRNO
NOCACHE;
-- �������� �ĺ���ȣ�� �� ������
CREATE SEQUENCE SEQ_NNO
NOCACHE;
-- �������� ��� �ĺ���ȣ�� �� ������
CREATE SEQUENCE SEQ_NOCMT
NOCACHE;

-- Ŀ�´�Ƽ�� ��� �ĺ���ȣ�� �� ������
CREATE SEQUENCE SEQ_CRNO
NOCACHE;


--------------------------------------------------
----------------     MEMBER ����   ------------------   
--------------------------------------------------

CREATE TABLE MEMBER (
   MEMBER_ID VARCHAR2(20) PRIMARY KEY,
   MEMBER_PWD VARCHAR2(40) NOT NULL,
   MEMBER_NAME   VARCHAR2(50) NOT NULL,
   MEMBER_FNO VARCHAR2(15) NOT NULL,
   MEMBER_BNO VARCHAR2(15) NOT NULL,
   GENDER VARCHAR2(3) NOT NULL,
   PHONE VARCHAR2(13),
   EMAIL VARCHAR2(50) NOT NULL,
   STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N', 'B')), -- �⺻ȸ�� : Y, Ż����ȸ�� : N, �������� ȸ�� : B 
   MEMBER_CODE   NUMBER   DEFAULT 1 
);

COMMENT ON COLUMN MEMBER.MEMBER_ID IS '���̵�';
COMMENT ON COLUMN MEMBER.MEMBER_PWD IS '��й�ȣ';
COMMENT ON COLUMN MEMBER.MEMBER_NAME IS '�̸�';
COMMENT ON COLUMN MEMBER.MEMBER_FNO IS '�ֹε�Ϲ�ȣ���ڸ�';
COMMENT ON COLUMN MEMBER.MEMBER_BNO IS '�ֹε�Ϲ�ȣ���ڸ�';
COMMENT ON COLUMN MEMBER.GENDER IS '����';
COMMENT ON COLUMN MEMBER.PHONE IS '����ó';
COMMENT ON COLUMN MEMBER.EMAIL IS '�̸���';
COMMENT ON COLUMN MEMBER.STATUS IS 'ȸ������(Y/N/B)';
COMMENT ON COLUMN MEMBER.MEMBER_CODE IS 'ȸ���ڵ�';

INSERT INTO MEMBER
VALUES ('admin', '1111', '������', '970714', '1000000', '��', '010-1234-1234', 'admin@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO MEMBER
VALUES ('user01', 'pass01', '�����1', '111111', '1011111', '��', '010-1111-1111', 'user01@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO MEMBER
VALUES ('user02', 'pass02', '�����2', '222222', '1022222', '��', '010-2222-2222', 'user02@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO MEMBER
VALUES ('user03', 'pass03', '�����3', '333333', '1033333', '��', '010-3333-3333', 'user03@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO MEMBER
VALUES ('user04', 'pass04', '�����4', '444444', '1044444', '��', '010-4444-4444', 'user04@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO MEMBER
VALUES ('user05', 'pass05', '�����5', '555555', '1055555', '��', '010-5555-5555', 'user05@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO MEMBER
VALUES ('user06', 'pass06', '�����6', '666666', '1066666', '��', '010-6666-6666', 'user06@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO MEMBER
VALUES ('user07', 'pass07', '�����7', '777777', '1077777', '��', '010-7777-7777', 'user07@email.co.kr', 'B', DEFAULT);
INSERT INTO MEMBER
VALUES ('user08', 'pass08', '�����8', '888888', '1088888', '��', '010-8888-8888', 'user08@email.co.kr', 'N', DEFAULT);


--------------------------------------------------
---------------    HOSPITAL ����     ----------------   
--------------------------------------------------

CREATE TABLE HOSPITAL (
   HOSP_ID   VARCHAR2(20) PRIMARY KEY,
   HOSP_PWD VARCHAR2(40) NOT NULL,
    HOSP_NAME VARCHAR2(50) NOT NULL,
   HOSP_CRN NUMBER NOT NULL,
   HOSP_EMAIL VARCHAR2(50) NOT NULL,
   STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N', 'B')), -- �⺻ȸ�� : Y, Ż����ȸ�� : N, �������� ȸ�� : B    
   HOSP_CODE NUMBER DEFAULT 2 
);

COMMENT ON COLUMN HOSPITAL.HOSP_ID IS '���̵�';
COMMENT ON COLUMN HOSPITAL.HOSP_PWD IS '��й�ȣ';
COMMENT ON COLUMN HOSPITAL.HOSP_NAME IS '������';
COMMENT ON COLUMN HOSPITAL.HOSP_CRN IS '������Ϲ�ȣ';
COMMENT ON COLUMN HOSPITAL.HOSP_EMAIL IS '�̸���';
COMMENT ON COLUMN HOSPITAL.STATUS IS 'ȸ������(Y/N/B)';
COMMENT ON COLUMN HOSPITAL.HOSP_CODE IS 'ȸ���ڵ�';

-- ���� ȸ�� ����
INSERT INTO HOSPITAL
VALUES('hosp01', 'pass01', 'û��������������', '11111111', 'hosp01@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp02', 'pass02', '�̽�����������', '22222222', 'hosp02@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp03', 'pass03', '���̵����޵��ü���', '33333333', 'hosp03@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp04', 'pass04', '(��õ)���뵿������', '44444444', 'hosp04@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp05', 'pass05', '����ũ�µ�������', '55555555', 'hosp05@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp06', 'pass06', '(����)�׷��̽���������', '66666666', 'hosp06@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp07', 'pass07', '������б� ���ǰ����� ��������', '77777777', 'hosp07@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp08', 'pass08', '���絿������', '88888888', 'hosp08@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp09', 'pass09', '���緡��������', '99999999', 'hosp09@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp10', 'pass10', '������������', '12121212', 'hosp10@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp11', 'pass11', '�ִ��굿������', '12121212', 'hosp11@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp12', 'pass12', '���ӵ����ǷἾ��', '12121212', 'hosp12@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp13', 'pass13', '�츮�鵿���޵��ü���', '12121212', 'hosp13@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp14', 'pass14', '24���ص絿���޵��ü���', '16867212', 'hosp14@email.co.kr', DEFAULT, DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp15', 'pass15', '����15', '12121234', 'hosp15@email.co.kr', 'B', DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp16', 'pass16', '����16', '12121234', 'hosp15@email.co.kr', 'N', DEFAULT);
INSERT INTO HOSPITAL
VALUES('hosp17', 'pass17', 'NEW����', '11111111', 'hosp15@email.co.kr', 'Y', DEFAULT);

--------------------------------------------------
---------------  HOSPITAL_INFO ����   --------------   
--------------------------------------------------


CREATE TABLE HOSPITAL_INFO (
    HOSP_NO NUMBER PRIMARY KEY,
    HOSP_ID VARCHAR2(20) NOT NULL REFERENCES HOSPITAL(HOSP_ID) ON DELETE CASCADE,
    HOSP_NAME VARCHAR2(60) NOT NULL,
    ADDRESS VARCHAR2(300) NOT NULL,
    ADDRESS_DETAIL VARCHAR2(300),
    Y_COORDINATE NUMBER NOT NULL,
    X_COORDINATE NUMBER NOT NULL,
    OPERATING_TIME VARCHAR2(1000),
    HOLIDAY VARCHAR2(1000),
    PARKING VARCHAR2(100),
    TEL VARCHAR2(13) NOT NULL,
    HOMEPAGE VARCHAR2(300),
    INTRODUCE VARCHAR2(4000) NOT NULL,
    CREATE_DATE DATE DEFAULT SYSDATE,
    STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N'))
);


COMMENT ON COLUMN HOSPITAL_INFO.HOSP_NO IS '���� �ĺ���ȣ';
COMMENT ON COLUMN HOSPITAL_INFO.HOSP_ID IS '����ȸ�� ���̵�';
COMMENT ON COLUMN HOSPITAL_INFO.HOSP_NAME IS '���� �̸�';
COMMENT ON COLUMN HOSPITAL_INFO.ADDRESS IS '���� �ּ�';
COMMENT ON COLUMN HOSPITAL_INFO.ADDRESS_DETAIL IS '���� �� �ּ�';
COMMENT ON COLUMN HOSPITAL_INFO.Y_COORDINATE IS 'Y��ǥ';
COMMENT ON COLUMN HOSPITAL_INFO.X_COORDINATE IS 'X��ǥ';
COMMENT ON COLUMN HOSPITAL_INFO.OPERATING_TIME IS '��ð�';
COMMENT ON COLUMN HOSPITAL_INFO.HOLIDAY IS '����';
COMMENT ON COLUMN HOSPITAL_INFO.PARKING IS '��������';
COMMENT ON COLUMN HOSPITAL_INFO.TEL IS '����ó';
COMMENT ON COLUMN HOSPITAL_INFO.HOMEPAGE IS 'Ȩ������ �ּ�';
COMMENT ON COLUMN HOSPITAL_INFO.INTRODUCE IS '���� �Ұ�';
COMMENT ON COLUMN HOSPITAL_INFO.CREATE_DATE IS '�����';
COMMENT ON COLUMN HOSPITAL_INFO.STATUS IS '���°�(Y/N)';


INSERT INTO HOSPITAL_INFO (HOSP_NO, HOSP_ID, HOSP_NAME, ADDRESS, ADDRESS_DETAIL, Y_COORDINATE, X_COORDINATE, OPERATING_TIME, HOLIDAY, PARKING, TEL, HOMEPAGE, INTRODUCE, CREATE_DATE, STATUS) 
VALUES (SEQ_CNO.NEXTVAL,'hosp01','û��������������','��� û�ֽ� ����� ���� 70','(���뵿)',36.6415210763698,127.430097009602,'��, ȭ, ��, ��, ��, �� : 10:00 ~ 22:00 / �� : 14:00 ~ 22:00','���߹���','�Ұ�','043-239-7575','https://blog.naver.com/gwellah','-',to_date('06/01/2022', 'MM/DD/RRRR'),'Y');
INSERT INTO HOSPITAL_INFO (HOSP_NO, HOSP_ID, HOSP_NAME, ADDRESS, ADDRESS_DETAIL, Y_COORDINATE, X_COORDINATE, OPERATING_TIME, HOLIDAY, PARKING, TEL, HOMEPAGE, INTRODUCE, CREATE_DATE, STATUS) 
VALUES (SEQ_CNO.NEXTVAL,'hosp02','�̽�����������','��� ���� ���� 94','(�޵�)',35.5345472764092,129.317869737733,'�� ~ �� : 10:00 ~ 23:59 / �� : 10:00 ~ 19:00 / ���� �߰� ���� : 19:00 ~ 24:00','���߹���','����','052-258-2516','https://blog.naver.com/vet7145','������ : ���ǻ� 15��, ������ũ�ϼ� 21��',to_date('06/02/2022', 'MM/DD/RRRR'),'Y');
INSERT INTO HOSPITAL_INFO (HOSP_NO, HOSP_ID, HOSP_NAME, ADDRESS, ADDRESS_DETAIL, Y_COORDINATE, X_COORDINATE, OPERATING_TIME, HOLIDAY, PARKING, TEL, HOMEPAGE, INTRODUCE, CREATE_DATE, STATUS) 
VALUES (SEQ_CNO.NEXTVAL,'hosp03','���̵����޵��ü���','���� ���ֽ� �ϻ걸 ������� 218','(��ȭ�굿2��)',35.8123795376809,127.123614032487,'�� ~ �� : 10:00 ~ 21:00','����','����','063-285-7975','http://www.mayanimal.com/','���ǻ� 12��',to_date('06/03/2022', 'MM/DD/RRRR'),'Y');
INSERT INTO HOSPITAL_INFO (HOSP_NO, HOSP_ID, HOSP_NAME, ADDRESS, ADDRESS_DETAIL, Y_COORDINATE, X_COORDINATE, OPERATING_TIME, HOLIDAY, PARKING, TEL, HOMEPAGE, INTRODUCE, CREATE_DATE, STATUS) 
VALUES (SEQ_CNO.NEXTVAL,'hosp04','(��õ)���뵿������','���� ��õ�� ��õ�� 267','(����)',37.8800275751286,127.742968214907,'�� ~ �� : 09:00 ~ 19:00 / �� : 10:00 ~ 17:00','���߹���','����','033-256-7582','https://blog.naver.com/chhdac','���ǻ� 8��, ��ũ�ϼ� 2��',to_date('06/04/2022', 'MM/DD/RRRR'),'Y');
INSERT INTO HOSPITAL_INFO (HOSP_NO, HOSP_ID, HOSP_NAME, ADDRESS, ADDRESS_DETAIL, Y_COORDINATE, X_COORDINATE, OPERATING_TIME, HOLIDAY, PARKING, TEL, HOMEPAGE, INTRODUCE, CREATE_DATE, STATUS) 
VALUES (SEQ_CNO.NEXTVAL,'hosp05','����ũ�µ�������','���� ���ı� ������з� 115','�׸����� 1��(��ǵ�)',37.5068715299487,127.079982607099,'�� ~ �� : 10:00 ~ 20:00 / �� : 10:00 ~ 19:00','���� �Ͽ���','����','02-420-7580','http://blog.naver.com/rokvet','����/�ӻ����� �߼�ȭ ������Ż�� �����ϸ� ���� / ������ȣ�� / ������',to_date('06/05/2022', 'MM/DD/RRRR'),'Y');
INSERT INTO HOSPITAL_INFO (HOSP_NO, HOSP_ID, HOSP_NAME, ADDRESS, ADDRESS_DETAIL, Y_COORDINATE, X_COORDINATE, OPERATING_TIME, HOLIDAY, PARKING, TEL, HOMEPAGE, INTRODUCE, CREATE_DATE, STATUS) 
VALUES (SEQ_CNO.NEXTVAL,'hosp06','(����)�׷��̽���������','���� ������ �е���6�� 18','1�� (������)',37.5106275585019,127.024159932926,'�� ~ �� : 10:00~20:00','���߹���','����','02-3442-5554','http://blog.naver.com/byejoon22','����� �ൿ/�Ʒ� ��ɵ��� ���� / �ǰ����� ����� ���� / TV�⿬ / �ֽŽü�',to_date('06/06/2022', 'MM/DD/RRRR'),'Y');
INSERT INTO HOSPITAL_INFO (HOSP_NO, HOSP_ID, HOSP_NAME, ADDRESS, ADDRESS_DETAIL, Y_COORDINATE, X_COORDINATE, OPERATING_TIME, HOLIDAY, PARKING, TEL, HOMEPAGE, INTRODUCE, CREATE_DATE, STATUS) 
VALUES (SEQ_CNO.NEXTVAL,'hosp07','������б� ���ǰ����� ��������','���� ���Ǳ� ���Ƿ� 1','(�Ÿ���, ������б�)',37.468038057989,126.959294337648,'�� ~ �� : 09:00 ~ 15:00','���� �����, �Ͽ��� �� ������','����','02-880-8661','http://vmth.snu.ac.kr/index.do','��� ���� 1% ����������',to_date('06/07/2022', 'MM/DD/RRRR'),'Y');
INSERT INTO HOSPITAL_INFO (HOSP_NO, HOSP_ID, HOSP_NAME, ADDRESS, ADDRESS_DETAIL, Y_COORDINATE, X_COORDINATE, OPERATING_TIME, HOLIDAY, PARKING, TEL, HOMEPAGE, INTRODUCE, CREATE_DATE, STATUS) 
VALUES (SEQ_CNO.NEXTVAL,'hosp08','���絿������','����Ư����ġ�� �������� �ż���48���� 31','�� Ŭ���� ����(������)',33.2535774663368,126.508636272298,'�� ~ �� : 10:00 ~ 19:00 / �� 10:00 ~ 17:00','���� �Ͽ���, ������','����','064-738-7975','https://blog.naver.com/jdah7975','-',to_date('06/08/2022', 'MM/DD/RRRR'),'Y');
INSERT INTO HOSPITAL_INFO (HOSP_NO, HOSP_ID, HOSP_NAME, ADDRESS, ADDRESS_DETAIL, Y_COORDINATE, X_COORDINATE, OPERATING_TIME, HOLIDAY, PARKING, TEL, HOMEPAGE, INTRODUCE, CREATE_DATE, STATUS) 
VALUES (SEQ_CNO.NEXTVAL,'hosp09','���緡��������','�λ� ���� ������ 224-1','(�뿬��)',35.1348475558723,129.091142121656,'�� ~ �� : 10:00 ~ 19:00 / �߰� ���� : 19:00~07:00','���߹���','����','051-621-8880','https://blog.naver.com/animalcl','���ǻ� 6��, ��ũ�ϼ�8��',to_date('06/09/2022', 'MM/DD/RRRR'),'Y');
INSERT INTO HOSPITAL_INFO (HOSP_NO, HOSP_ID, HOSP_NAME, ADDRESS, ADDRESS_DETAIL, Y_COORDINATE, X_COORDINATE, OPERATING_TIME, HOLIDAY, PARKING, TEL, HOMEPAGE, INTRODUCE, CREATE_DATE, STATUS) 
VALUES (SEQ_CNO.NEXTVAL,'hosp10','(����)������������','���� ���ֽ� ������� 408','(�ܱ���, �������)',37.3299744446142,127.95002375138,'��~�� : 09:00 ~ 20:00 / �� : 09:00 ~ 19:00','���� �Ͽ��� �޹�','����','033-761-0167','https://blog.naver.com/nurihospital','���ǻ� 6��, ��ũ�ϼ� 9��',to_date('06/10/2022', 'MM/DD/RRRR'),'Y');
INSERT INTO HOSPITAL_INFO (HOSP_NO, HOSP_ID, HOSP_NAME, ADDRESS, ADDRESS_DETAIL, Y_COORDINATE, X_COORDINATE, OPERATING_TIME, HOLIDAY, PARKING, TEL, HOMEPAGE, INTRODUCE, CREATE_DATE, STATUS) 
VALUES (SEQ_CNO.NEXTVAL,'hosp11','�ִ��굿������','�泲 õ�Ƚ� ������ �͹̳�2�� 8','(�źε�)',36.8196329132767,127.158440492646,'�� ~ �� : 10:00 ~ 21:00','���� �Ͽ���','����','041-523-0275',NULL,'-',to_date('06/11/2022', 'MM/DD/RRRR'),'Y');
INSERT INTO HOSPITAL_INFO (HOSP_NO, HOSP_ID, HOSP_NAME, ADDRESS, ADDRESS_DETAIL, Y_COORDINATE, X_COORDINATE, OPERATING_TIME, HOLIDAY, PARKING, TEL, HOMEPAGE, INTRODUCE, CREATE_DATE, STATUS) 
VALUES (SEQ_CNO.NEXTVAL,'hosp12','���ӵ����ǷἾ��','��� ������ �絵��19���� 17','2�� 201ȣ(ǳ����)',37.6083043970328,126.724302881112,'�� ~ �� : 09:30 ~ 22:00','���߹���','����','031-985-1040','https://www.heim-amc.com/','���ǻ� 2��',to_date('06/12/2022', 'MM/DD/RRRR'),'Y');
INSERT INTO HOSPITAL_INFO (HOSP_NO, HOSP_ID, HOSP_NAME, ADDRESS, ADDRESS_DETAIL, Y_COORDINATE, X_COORDINATE, OPERATING_TIME, HOLIDAY, PARKING, TEL, HOMEPAGE, INTRODUCE, CREATE_DATE, STATUS) 
VALUES (SEQ_CNO.NEXTVAL,'hosp13','�츮�鵿���޵��ü���','���� ��õ�� �񵿷� 161','(������)',37.5229138940392,126.864895802441,'�� ~ ��  : 00:00 ~ 23:59','���߹���','����','02-2642-7588','http://wooridleclinic.kr/main/index.php','-',to_date('06/13/2022', 'MM/DD/RRRR'),'Y');
INSERT INTO HOSPITAL_INFO (HOSP_NO, HOSP_ID, HOSP_NAME, ADDRESS, ADDRESS_DETAIL, Y_COORDINATE, X_COORDINATE, OPERATING_TIME, HOLIDAY, PARKING, TEL, HOMEPAGE, INTRODUCE, CREATE_DATE, STATUS) 
VALUES (SEQ_CNO.NEXTVAL,'hosp14','24���ص絿���޵��ü���','��� ��õ�� ����� 190','�����������Ʈ 1������ 2�� 213-216ȣ',37.501269771119,126.777250532846,'�� ~ �� : 00:00 ~ 23:59 / �߰����� 21:00 ~ 09:00','���߹���','����','032-715-7579','https://blog.naver.com/prodigy_kr','��ɵ�������, ����/�ӻ�����, ������Ż��, �Կ��� 3��, ������ 2��, ��Ȱ��, ������ �Կ���, 2������',to_date('06/14/2022', 'MM/DD/RRRR'),'Y');


--------------------------------------------------
-------------  HOSPITAL_REVIEW ����   --------------   
--------------------------------------------------


CREATE TABLE "HOSPITAL_REVIEW" (
   "REVIEW_NO"   NUMBER PRIMARY KEY,
   "HOSP_NO" NUMBER NOT NULL REFERENCES HOSPITAL_INFO(HOSP_NO) ON DELETE CASCADE,
   "USER_ID" VARCHAR2(20) REFERENCES MEMBER(MEMBER_ID)  ON DELETE CASCADE,
    "PET_NO" NUMBER,
    "PET_KIND" VARCHAR2(9),
   "PET_BREED"   VARCHAR2(50),
   "PET_AGE" NUMBER,
   "CLINIC_DATE" DATE NOT NULL,
   "CLINIC_INFO" VARCHAR2(300),
   "PRICE"   NUMBER,
   "CONTENT" VARCHAR2(4000) NOT NULL,
   "CREATE_DATE" DATE DEFAULT SYSDATE   NOT NULL,
   "STATUS" VARCHAR2(1) DEFAULT 'Y' NOT NULL CHECK(STATUS IN ('Y', 'N'))
);


COMMENT ON COLUMN "HOSPITAL_REVIEW"."REVIEW_NO" IS '���� �ĺ���ȣ';
COMMENT ON COLUMN "HOSPITAL_REVIEW"."HOSP_NO" IS '���� �ĺ���ȣ';
COMMENT ON COLUMN "HOSPITAL_REVIEW"."USER_ID" IS '���̵�';
COMMENT ON COLUMN "HOSPITAL_REVIEW"."PET_NO" IS '�ݷ����� �ĺ���ȣ';
COMMENT ON COLUMN "HOSPITAL_REVIEW"."PET_KIND" IS '�ݷ����� ����(������/�����/��/�����/��Ÿ)';
COMMENT ON COLUMN "HOSPITAL_REVIEW"."PET_BREED" IS '�ݷ����� ǰ��';
COMMENT ON COLUMN "HOSPITAL_REVIEW"."PET_AGE" IS '�ݷ����� ����(������)';
COMMENT ON COLUMN "HOSPITAL_REVIEW"."CLINIC_DATE" IS '���ᳯ¥';
COMMENT ON COLUMN "HOSPITAL_REVIEW"."CLINIC_INFO" IS '��������';
COMMENT ON COLUMN "HOSPITAL_REVIEW"."PRICE" IS '���� ����';
COMMENT ON COLUMN "HOSPITAL_REVIEW"."CONTENT" IS '���� ����';
COMMENT ON COLUMN "HOSPITAL_REVIEW"."CREATE_DATE" IS '�ۼ���';
COMMENT ON COLUMN "HOSPITAL_REVIEW"."STATUS" IS '����(Y/N)';

INSERT INTO HOSPITAL_REVIEW(REVIEW_NO, HOSP_NO, USER_ID, PET_NO, PET_KIND, PET_BREED, CLINIC_DATE, CONTENT, CREATE_DATE)
VALUES (SEQ_CNO.NEXTVAL, 14, 'user01', 25, '������', '���', TO_DATE('2022-06-01', 'YYYY-MM-DD'), '��', TO_DATE('2022-06-01', 'YYYY-MM-DD')); 
INSERT INTO HOSPITAL_REVIEW(REVIEW_NO, HOSP_NO, USER_ID, PET_NO, PET_KIND, PET_BREED, CLINIC_DATE, CONTENT, CREATE_DATE)
VALUES (SEQ_CNO.NEXTVAL, 13, 'user02', 26, '������', '����', TO_DATE('2022-06-02', 'YYYY-MM-DD'), '���̿���', TO_DATE('2022-06-03', 'YYYY-MM-DD')); 
INSERT INTO HOSPITAL_REVIEW(REVIEW_NO, HOSP_NO, USER_ID, PET_NO, PET_KIND, PET_BREED, CLINIC_DATE, CONTENT, CREATE_DATE)
VALUES (SEQ_CNO.NEXTVAL, 14, 'user03', 27, '������', 'Ǫ��', TO_DATE('2022-06-03', 'YYYY-MM-DD'), '¯�̿���', TO_DATE('2022-06-06', 'YYYY-MM-DD')); 
INSERT INTO HOSPITAL_REVIEW(REVIEW_NO, HOSP_NO, USER_ID, PET_NO, PET_KIND, PET_BREED, CLINIC_DATE, CONTENT, CREATE_DATE)
VALUES (SEQ_CNO.NEXTVAL, 13, 'user04', 28, '������', '��Ƽ��', TO_DATE('2022-06-04', 'YYYY-MM-DD'), '���� ���ƿ�', TO_DATE('2022-06-04', 'YYYY-MM-DD')); 
INSERT INTO HOSPITAL_REVIEW(REVIEW_NO, HOSP_NO, USER_ID, PET_NO, PET_KIND, PET_BREED, CLINIC_DATE, CONTENT, CREATE_DATE)
VALUES (SEQ_CNO.NEXTVAL, 14, 'user05', 29, '������', '����ġ�ҵ�', TO_DATE('2022-06-05', 'YYYY-MM-DD'), '���� ���ƿ�', TO_DATE('2022-06-06', 'YYYY-MM-DD')); 
INSERT INTO HOSPITAL_REVIEW(REVIEW_NO, HOSP_NO, USER_ID, PET_NO, PET_KIND, PET_BREED, CLINIC_DATE, CONTENT, CREATE_DATE)
VALUES (SEQ_CNO.NEXTVAL, 12, 'user01', 30, '�����', '�ƺ�Ͻþ�',  TO_DATE('2022-06-06', 'YYYY-MM-DD'), '��', TO_DATE('2022-06-07', 'YYYY-MM-DD')); 
INSERT INTO HOSPITAL_REVIEW(REVIEW_NO, HOSP_NO, USER_ID, PET_NO, PET_KIND, PET_BREED, CLINIC_DATE, CONTENT, CREATE_DATE)
VALUES (SEQ_CNO.NEXTVAL, 11, 'user02', 31, '�����', '�Ƹ޸�ĭ�����', TO_DATE('2022-06-07', 'YYYY-MM-DD'), '���̿���', TO_DATE('2022-06-07', 'YYYY-MM-DD')); 
INSERT INTO HOSPITAL_REVIEW(REVIEW_NO, HOSP_NO, USER_ID, PET_NO, PET_KIND, PET_BREED, CLINIC_DATE, CONTENT, CREATE_DATE)
VALUES (SEQ_CNO.NEXTVAL, 12, 'user03', 32, '��', '����޹�', TO_DATE('2022-06-08', 'YYYY-MM-DD'), '¯�̿���', TO_DATE('2022-06-08', 'YYYY-MM-DD')); 
INSERT INTO HOSPITAL_REVIEW(REVIEW_NO, HOSP_NO, USER_ID, PET_NO, PET_KIND, PET_BREED, CLINIC_DATE, CONTENT, CREATE_DATE)
VALUES (SEQ_CNO.NEXTVAL, 11, 'user04', 33, '�����', '�ݺؾ�', TO_DATE('2022-06-09', 'YYYY-MM-DD'), '���� ���ƿ�', TO_DATE('2022-06-10', 'YYYY-MM-DD')); 
INSERT INTO HOSPITAL_REVIEW(REVIEW_NO, HOSP_NO, USER_ID, PET_NO, PET_KIND, PET_BREED, CLINIC_DATE, CONTENT, CREATE_DATE)
VALUES (SEQ_CNO.NEXTVAL, 12, 'user05', 34, '��Ÿ', '�����ĵ����', TO_DATE('2022-06-10', 'YYYY-MM-DD'), '���� ���ƿ�', TO_DATE('2022-06-12', 'YYYY-MM-DD')); 


----------------------------------------------------
--------------     ANIMAL ����     ------------------   
----------------------------------------------------

CREATE TABLE "ANIMAL" (
   "PET_NO" NUMBER PRIMARY KEY,
   "PET_NAME" VARCHAR2(20) NOT NULL,
   "PET_INPUTNO" VARCHAR2(50),
   "PET_KIND" VARCHAR2(9) NOT NULL CHECK(PET_KIND IN ('������', '�����', '��', '�����', '��Ÿ')),
   "PET_BREED"   VARCHAR2(50) NOT NULL,
   "PET_BIRTH"   DATE DEFAULT SYSDATE,
   "PET_NEUTRAL" VARCHAR2(1) DEFAULT 'N' CHECK(PET_NEUTRAL IN('Y', 'N')),
   "CREATE_DATE" DATE DEFAULT SYSDATE,
   "STATUS" VARCHAR2(1) DEFAULT 'Y' CHECK(STATUS IN('Y', 'N')) NOT NULL,
   "PET_OWNER"   VARCHAR2(20) NOT NULL,
   "COUNT" NUMBER,
     FOREIGN KEY(PET_OWNER) REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE
);

COMMENT ON COLUMN "ANIMAL"."PET_NO" IS '�ݷ����� �ĺ���ȣ';
COMMENT ON COLUMN "ANIMAL"."PET_NAME" IS '�ݷ����� �̸�';
COMMENT ON COLUMN "ANIMAL"."PET_INPUTNO" IS '�ݷ����� ��Ϲ�ȣ';
COMMENT ON COLUMN "ANIMAL"."PET_KIND" IS '�ݷ����� ����';
COMMENT ON COLUMN "ANIMAL"."PET_BREED" IS '�ݷ����� ǰ��';
COMMENT ON COLUMN "ANIMAL"."PET_BIRTH" IS '�ݷ������������';
COMMENT ON COLUMN "ANIMAL"."PET_NEUTRAL" IS '�ݷ����� �߼�ȭ����';
COMMENT ON COLUMN "ANIMAL"."CREATE_DATE" IS '�ݷ����� �����';
COMMENT ON COLUMN "ANIMAL"."STATUS" IS '�ݷ����� ����';
COMMENT ON COLUMN "ANIMAL"."PET_OWNER" IS 'USERID';


INSERT INTO ANIMAL(PET_NO, PET_NAME, PET_KIND, PET_BREED, PET_BIRTH, PET_OWNER)
VALUES(SEQ_ANO.NEXTVAL, '��Ű', '������', '����', TO_DATE('2022-01-01', 'YYYY-MM-DD'), 'user02');
INSERT INTO ANIMAL(PET_NO, PET_NAME, PET_KIND, PET_BREED, PET_BIRTH, PET_OWNER)
VALUES(SEQ_ANO.NEXTVAL, '����', '������', 'Ǫ��', TO_DATE('2017-01-01', 'YYYY-MM-DD'), 'user03');
INSERT INTO ANIMAL(PET_NO, PET_NAME, PET_KIND, PET_BREED, PET_BIRTH, PET_OWNER)
VALUES(SEQ_ANO.NEXTVAL, '������', '������', '��Ƽ��', TO_DATE('2012-01-01', 'YYYY-MM-DD'), 'user04');
INSERT INTO ANIMAL(PET_NO, PET_NAME, PET_KIND, PET_BREED, PET_BIRTH, PET_OWNER)
VALUES(SEQ_ANO.NEXTVAL, '����', '������', '����ġ�ҵ�', TO_DATE('2012-01-01', 'YYYY-MM-DD'), 'user05');

INSERT INTO ANIMAL(PET_NO, PET_NAME, PET_KIND, PET_BREED, PET_BIRTH, PET_OWNER)
VALUES(SEQ_ANO.NEXTVAL, '����', '�����', '�Ƹ޸�ĭ�����', TO_DATE('2022-01-01', 'YYYY-MM-DD'), 'user02');
INSERT INTO ANIMAL(PET_NO, PET_NAME, PET_KIND, PET_BREED, PET_BIRTH, PET_OWNER)
VALUES(SEQ_ANO.NEXTVAL, '�޵���', '��', '����޹�', TO_DATE('2017-01-01', 'YYYY-MM-DD'), 'user03');
INSERT INTO ANIMAL(PET_NO, PET_NAME, PET_KIND, PET_BREED, PET_BIRTH, PET_OWNER)
VALUES(SEQ_ANO.NEXTVAL, '������', '�����', '�ݺؾ�', TO_DATE('2012-01-01', 'YYYY-MM-DD'), 'user04');
INSERT INTO ANIMAL(PET_NO, PET_NAME, PET_KIND, PET_BREED, PET_BIRTH, PET_OWNER)
VALUES(SEQ_ANO.NEXTVAL, '�밨��', '��Ÿ', '�����ĵ����', TO_DATE('2012-01-01', 'YYYY-MM-DD'), 'user05');


CREATE TABLE "DIARY" (
   "DIARY_NO"   NUMBER      PRIMARY KEY,
   "PET_WEIGHT"   NUMBER DEFAULT 0,
   "PET_WALK"   NUMBER DEFAULT 0,
   "PET_FOOD"   NUMBER DEFAULT 0,
   "PET_PEE"   VARCHAR2(20)   DEFAULT '��������',
   "PET_RECORD"   VARCHAR2(200)   DEFAULT '�� ���� ���',
   "WRITE_DATE"   DATE   DEFAULT SYSDATE NOT NULL,
   "STATUS"   VARCHAR2(1)   DEFAULT 'Y' CHECK(STATUS IN('Y', 'N')) NOT NULL,
   "PET_NO"   NUMBER      NOT NULL,
    FOREIGN KEY(PET_NO) REFERENCES ANIMAL(PET_NO) ON DELETE CASCADE
);

COMMENT ON COLUMN "DIARY"."DIARY_NO" IS '�ϱ� ��Ϲ�ȣ';
COMMENT ON COLUMN "DIARY"."PET_WEIGHT" IS '�ݷ����� ������';
COMMENT ON COLUMN "DIARY"."PET_WALK" IS '�ݷ����� ��å�Ÿ�';
COMMENT ON COLUMN "DIARY"."PET_FOOD" IS '�ݷ����� ��ᷮ';
COMMENT ON COLUMN "DIARY"."PET_PEE" IS '�ݷ����� ��Һ�����';
COMMENT ON COLUMN "DIARY"."PET_RECORD" IS '�ݷ����� �׿��Ǳ��';
COMMENT ON COLUMN "DIARY"."WRITE_DATE" IS '�ۼ���';
COMMENT ON COLUMN "DIARY"."STATUS" IS '����';
COMMENT ON COLUMN "DIARY"."PET_NO" IS '�ݷ����� �ĺ���ȣ';


----------------------------------------------------
--------------    COMMUNITY ����     ----------------   
----------------------------------------------------

CREATE TABLE "COMMUNITY" (
   "COMM_NO" NUMBER PRIMARY KEY,
   "COMM_TITLE" VARCHAR2(100) NOT NULL,
   "COMM_CONTENT" VARCHAR2(4000) NOT NULL,
   "COMM_WRITER" VARCHAR2(100) NOT NULL,
   "COMM_COUNT" NUMBER   DEFAULT 0,
    "CATEGORY_NO" NUMBER,
   "CREATE_DATE" DATE DEFAULT SYSDATE NOT NULL,
   "STATUS" VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N'))
);

COMMENT ON COLUMN "COMMUNITY"."COMM_NO" IS '�۹�ȣ';
COMMENT ON COLUMN "COMMUNITY"."COMM_TITLE" IS '������';
COMMENT ON COLUMN "COMMUNITY"."COMM_CONTENT" IS '�۳���';
COMMENT ON COLUMN "COMMUNITY"."COMM_WRITER" IS '���ۼ���';
COMMENT ON COLUMN "COMMUNITY"."COMM_COUNT" IS '��ȸ��';
COMMENT ON COLUMN "COMMUNITY"."CATEGORY_NO" IS 'ī�װ� ��ȣ';
COMMENT ON COLUMN "COMMUNITY"."CREATE_DATE" IS '�ۼ���';
COMMENT ON COLUMN "COMMUNITY"."STATUS" IS '����';

INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�ȳ��ϼ���~ �ݰ����ϴ�~!','�ߺ�Ź�����~!!!', '�����1', 56 , 50, '2021-03-04', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�ߺ�Ź�����~~~!!!','ó�� �����߽��ϴ� ����', '�����1', 77 , 50, '2021-03-05', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�ݰ�����~���� �λ�ø��ϴ�!','������2���� Ű��� ����̿���~ ��� ģ�ϰ� ������~', '�����2', 123 , 50, '2021-03-06', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������ ��å ģ�� ���մϴ�!!','���� ���򱸿� ��ô� �е��� ��۴޾��ּ���!', '�����4', 93 , 50, '2021-03-07', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� ��õ����~!���ִ°ɷ� ��','������ �����ɷ� ��Ź����� ��', '�����3', 88 , 50, '2021-03-08', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�ٵ� �ָ��� ���Ͻó���?','���� ������� ��ȭ��������� �߾��!', '�����2', 245 , 50, '2021-03-09', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�����е��� ��̴� �����ΰ���?','���� å �д°Ŷ� �״Ͻ��� ����Դϴ٤�', '�����6', 236 , 50, '2021-03-21', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� ��õ ��Ź�帲��!!!','�ѽ��߿��� ���� �������?', '�����5', 637 , 50, '2021-03-21', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���̿�~!!! �λ�帳�ϴ�!����','�̷��� ���� ������ ���� �� �� �ִ� ��ȸ�� �־ �� ���ƿ�!', '�����3', 521 , 50, '2021-03-22', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '����Ŀ� �Ф� �� ������???','�ٵ� ������ ����ó���', '�����6', 252 , 50, '2021-03-23', 'Y' );

INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, 'ù �����λ�帳�ϴ�!!','�ʹ��ʹ� �ݰ����ϴ٤�', '�����2', 126 , 50, '2021-03-24', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '��մ� ��ȭ ��õ ��Ź�����^^','�� �ѱ���ȭ �����ϴµ� ��ȭ ��õ ���ּ���!', '�����3', 543 , 50, '2021-03-25', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '����� ���� ��õ���ֽǺ�~~','�򸣸� ���� ���������� �ٸ� ���� ��õ�� ���ּ���!', '�����3', 179 , 50, '2021-04-06', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�� ��� �� ����ּ��� �ФФ�','�θ�Բ��� �ݷ����� Ű��°� �ݴ��ϴµ� ��� �����ؾ� �ɱ��...', '�����4', 37 , 50, '2021-04-07', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� ���� ���� ������???','������ �����ɷ� ��Ź����� ��', '�����3', 50 , 50, '2021-04-08', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�ִϸ��̼� ��մ°� ������䤾��','���� ���� ��ճ���?', '�����5', 47 , 50, '2021-04-09', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� �޴� ��õ���ֽǺ�~!~!','�谡 ���� ���Ŀ�~', '�����1', 98 , 50, '2021-04-22', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, 'Ȥ�� �䳢 Ű��ôº� �������~?','���� Ű��°� �ƴϰ���?', '�����6', 231 , 50, '2021-04-28', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '��..�� �������?? ���ִ°� ��õ��!','���?', '�����6', 121 , 50, '2021-04-29', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�ٵ� Ű��� �ݷ����� �̸��� �ñ��ؿ� ����','�� �ݷ����� �밨�̿���!', '�����2', 537 , 50, '2021-04-30', 'Y' );

INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�� �ݷ������� �Բ����� ���� 1���̵Ǿ��׿� ','�ð��� �� �ʹ��ʹ� ������ �����ϴ٤�', '�����1', 223 , 50, '2021-05-04', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�����е��� �ݷ������� �󸶳� �Բ� �ð��� �����̳���?','�� ���� 5��°�׿䤾', '�����2', 117 , 50, '2021-05-05', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�谡 �ʸ�ʸ� ���Ŵϴ� �� ���������','�����е��� �� ��̾?', '�����3', 223 , 50, '2021-05-07', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� ����� ���� �ٶ󺸰� �ֳ׿䤾','���ݲ� ���� ������ �޷��°� �����ϴ٤��� �����е� ��� ���� �Ϸ� �Ǽ���', '�����3', 3 , 50, '2021-05-07', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�ð��� �� �ʹ� ������ ���ƿ�̤̤�','�ƾ� �׸��� �����̿�~', '�����5', 48 , 50, '2021-05-08', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������ ���� ��õ���ֽǺ�~!!����','��ε� ������ ���ִ°ɷ� ��õ���ּ���!', '�����2', 145 , 50, '2021-05-08', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�����ʿ��� ���� ��å�Ͻ� ��åģ�� ���ؿ�~','��� �޾��ֽ� �����ϰڽ��ϴ�~~', '�����5', 237 , 50, '2021-05-22', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� ���� �ٳ�Խ��ϴ� ������(÷��)','������� ���� �����ð� ������ �Ծ��!', '�����4', 137 , 50, '2021-05-28', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�����е��� �ݷ����� ��� Ű��ó���?','�� ������1���� �����2���� Ű����־��', '�����6', 437 , 50, '2021-05-29', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� �������� ������ ���Ҿ��!!!!','���� ÷���մϴ� ������', '�����1', 35 , 50, '2021-05-29', 'Y' );

INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� ������ �ʹ� ���� �ʳ���?�Ф�','��å�� �ؾߵǴµ� ���� �ʹ������� ������ �Ⱦ����׿�', '�����2', 23 , 50, '2021-06-04', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�ݷ����� ���� �̺�Ʈ �����մϴ�!!!','��� �޾��ֽô� �е� ��÷ ���ؼ� ���� �����帱�Կ�', '�����3', 124 , 50, '2021-06-07', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������ ���������� �����þ�䤾��','�����е��� ����̳���??', '�����4', 223 , 50, '2021-06-07', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�����е� �־� ������ ��� �Ǽ���?','�� ��ġ��� �־��Դϴ� ��', '�����4', 56 , 50, '2021-06-10', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, 'Ȥ�� ������ Ű��ôºе� ��Ű���?','Ű��ô� �� �ִ��� �ñ��մϴ٤�', '�����5', 511 , 50, '2021-06-22', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�������� ������� �Բ� �ܽ��ϰ� ��ȭ�þ��!','�����е��� �ָ� ��� �����̳���?', '�����2', 245 , 50, '2021-06-23', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������ �ǻ߿� �Ѱ� ��å ���� ÷���մϴ�!','�����е鵵 ��å �����Ͻ���?', '�����1', 201 , 50, '2021-06-25', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� ����Ʈ ��õ��Ź�帳�ϴ� ^^','���� ��� ����ҰԿ�~!!', '�����6', 158 , 50, '2021-06-28', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�θ�� ���ż��� �����������??','��.. ���� ������ �𸣰ھ��!', '�����3', 642 , 50, '2021-06-29', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, 'ģ����� �Բ� ����ٳ�Խ��ϴ� ��','��� �ð��� �� �¾Ƽ� ���ֵ� ���� �� �ٳ�Գ׿� ��', '�����4', 125 , 50, '2021-06-29', 'Y' );

INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '��� �Ļ�� �ϼ̴�����?������','���� ��信 ����� �Ծ���� ��', '�����3', 213 , 50, '2021-07-01', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� �޴� ��õ�޽��ϴ�~!!!!','���ִ°ɷ� ���� ���� ��õ���ּ���!', '�����1', 1124 , 50, '2021-07-07', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�ȳ��ϼ���! �����λ�����!','�ߺ�Ź�帳�ϴ�^^', '�����3', 113 , 50, '2021-07-08', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�������� �ٵ� ���ϰ� ��ó���?','�� �Ϸ����� ��󸶺��ϴ礻��', '�����4', 99 , 50, '2021-07-10', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�����е��� �־ֶ����?','�� ���� �Ŷ���Դϴ� ��', '�����5', 314 , 50, '2021-07-22', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������ �� ��õ���ּ����~~','����Ʈ ���� �� �������?', '�����6', 215 , 50, '2021-07-23', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�λ��ʿ� ��å�� ������ ��õ�޽��ϴ�!','���� ��� �޾��ּ���~!!', '�����1', 201 , 50, '2021-07-25', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� �ɷ��ں� ��Ű���?����','��å�ϴ� �ܱ��� �ôµ� �Ѹ��� ���߾�� �Ф�', '�����4', 228 , 50, '2021-07-26', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������ ��å �ڽ� ��õ�޽��ϴ�~','������ �����̱��� ���빮���� �����ϰ� �־��!', '�����2', 742 , 50, '2021-07-27', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� ���� �������� ������??','��..��â...', '�����4', 235 , 50, '2021-07-29', 'Y' );

INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�����е��� �ɽ��Ҷ� ���ϼ���?','���� �ȴ°� �����ؼ� ���� �ǻ߶� ��å�� ���ְ��䤾', '�����1', 113 , 50, '2022-06-22', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�ٵ� ���� ������ ��� �ǽó���?','�� ������ �߶�� �����մϴ� �����е� �ǰ��� �ñ��ؿ�!', '�����1', 514 , 50, '2022-06-24', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� ó������ �����ϰ� �Ǿ���� ��� �ȳ��ϼ��뤾', '��θ�� �ݰ�����~! ģ�ϰ� ������ ��', '�����3', 113 , 50, '2022-06-25', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�������� �Ҽ� å ��õ ���� �� �������?','���� ��Ÿ�� �Ҽ��� �����ؼ� ��� �����ֽø� �����ϰڽ��ϴ� ��', '�����4', 129 , 50, '2022-06-26', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���̾�Ʈ 93����.. ���� �ʱ���.','���� ������ �������ϴ�..���� ���� �ּ���..', '�����5', 414 , 50, '2022-06-27', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�������� �����ϴ� �Ҹ�','��Ʃ�꿡�� ã�Ƽ� �����غôµ� �ƹ� ������ ����D��', '�����6', 221 , 50, '2022-06-28', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�����е��� �����ϴ� ��Ʃ�� ä���� ������?','���� �������ڶ� ��Ʃ�� ��ܺ��ϴ٤�', '�����1', 101 , 50, '2022-06-29', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '��å�Ҷ� ��� ���� ����!','��õ���ֽ� �����ϰڽ���!', '�����4', 228 , 50, '2022-07-01', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� �λ�帳�ϴ�','���� ������ �����Դϴ� ��� ȯ�����ּ���', '�����2', 742 , 50, '2022-07-02', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '��åģ�����ؿ�!','�λ� �����ʿ� �����Ͻô� ���� ��� �����ֽø� �����ϰڽ��ϴ�~~', '�����4', 235 , 50, '2022-07-03', 'Y' );

INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������ �� �����ؼ� ������ �帱�Կ�!','�ٵ� �� ��Ƕ� ��� ����Ʈ �̿��Ͻó���?', '�����1', 198 , 60, '2021-03-21', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '����ٰ� �����ϸ� �ǳ���??!','�ٵ� �������� ����Ʈ �̿��غ��̳���?', '�����2', 158 , 60, '2021-03-28', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� ������ �ñ��ѵ� Ȥ�� �����ƽô� ��??','�����Դϴ�8', '�����3', 64 , 60, '2021-04-12', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������Ե� �����ֽ��ϴ٤Ф� �����ֽʽÿ�.','�����Դϴ�8', '�����4', 48 , 60, '2021-04-18', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '��å��ų�� �����ؾ� �� �� �����������?','�����Դϴ�6', '�����5', 282 , 60, '2021-04-28', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�����е��� ����� ��� � ��ǰ������?','�����Դϴ�8', '�����5', 197 , 60, '2021-04-29', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, 'Ȥ�� ���� �̱��Ƴ� Ű��ôº� �����?��','�����Դϴ�8', '�����1', 75 , 60, '2021-04-30', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�ٵ� ��� ������ �����ϰ� ��Ű���?','�����Դϴ�6', '�����3', 721 , 60, '2021-05-01', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������ �躯 �Ʒ� �����־��~~','�����Դϴ�8', '�����6', 134 , 60, '2021-05-02', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '����� ��� ���� �帳�ϴ�!!','�����Դϴ�8', '�����5', 231 , 60, '2021-05-11', 'Y' );

INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������ ����� �ø��°� ����?','������ �ߵǳ�~', '�����2', 238 , 60, '2021-05-21', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�ٵ� �ݷ����� �Ʒ� ������� �Ͻó���?','���� �� �ּ���~', '�����3', 58 , 60, '2021-05-22', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '����3�� ��ó �������� �����帳�ϴ�','���� �����ϰ� ����� �����ϴ� �� ��õ�� ���ּ���', '�����5', 94 , 60, '2021-05-23', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '����̵� �峭������ ���� �������?','��õ���ּ���!', '�����4', 98 , 60, '2021-05-24', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�������� �ݷ����� ��� ������� �Ͻó���?','�ñ��մϴ�!', '�����1', 202 , 60, '2021-05-26', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�������� ��õ���� �� �������?','���� �ұ����ʿ� �����ϰ� �ִµ� ���� �� �ֽǺ�!', '�����2', 334 , 60, '2021-05-29', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�躯�Ʒ� ���������~~', '� ������� �ؾ� �Ǵ��� ���� ��������..','�����3', 214 , 60, '2021-05-30', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '����Ե� ���� ���䰡 ��Ű���?','�� ���� ��� ���� ������ �׷��� ������ �ϰ� �ֽ��ϴ�.', '�����6', 141 , 60, '2021-06-01', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '����̵��� �ƿ� ��å�� �� �ʿ䰡 ������?','������ ���̴� �����̶� �׻� �ۿ� �����ڰ� �����..', '�����2', 242 , 60, '2021-06-02', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�ٵ� �ݷ����� ���̰� ��� �ǽó���?','������ ����̴� ����10���ε� ���� �ǰ��ؿ䤾', '�����2', 152 , 60, '2021-06-04', 'Y' );

INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�����Ե� ������ �ʿ��մϴ�','�躯 �Ʒ� �����Ҷ� ������� �ؾ� �ɱ��?', '�����1', 538 , 60, '2021-06-07', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�������� ���� �ȵ�����','������������ ���� ���� �Ф� �����ؾ� �ɱ', '�����2', 158 , 60, '2021-06-08', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������� ���� �̷��� ��Ѱ���...','�����ϰ� ���ϰ� �ϴµ� 30���� ���Ծ�� �Ф�', '�����6', 61 , 60, '2021-06-12', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���ִ� ���� ����Ʈ ��õ����!','���� ���������� �� �����ϴ� ������ ������?', '�����4', 62 , 60, '2021-06-13', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� �����帳�ϴ�','��å�Ҷ� �� ����� ��������� �ؾ� �� �������?', '�����3', 151 , 60, '2021-06-14', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '��ᷮ ��������� �ؾ� �ɱ��?','��Ƽ�� Ű��� �ִµ� ��������� �������� ���� �� �ȿͿ�..', '�����1', 232 , 60, '2021-06-16', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�����е� �ݷ����� �Ϸ翡 � �ֽó���?', '���� ��ħ �����ְ� �߰��߰� ������ �ְ� �־�� �����е� �ǰ��� �ñ��ؿ�!','�����2', 104 , 60, '2021-06-17', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '����Ե鿡�� �����ֽ��ϴ�!','���� �����̾��� �մ������� �ñ��������ϴ� ��� �޾��ּ���!', '�����3', 111 , 60, '2021-06-23', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�ɾ� �Ʒù� ���������','������ �൵ �ɾ� �Ʒ��� �� �ȵǴµ� ���� �ֳ���?', '�����5', 52 , 60, '2021-06-24', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�������� ����Ʈ ����!','������ ���� ������ �� ��õ�ֽ� �� �ֳ���?', '�����2', 112 , 60, '2021-06-26', 'Y' );

INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������ Ű��ôº�??','�󸶳� ���� �е��� Ű��ô��� �ñ��ؿ�!', '�����2', 38 , 60, '2021-06-27', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '��å ��ð��� �Ͻó���?','�� �Ϸ� 1�ð��� 2~3�� �����ϴµ� �����е��� ���?', '�����3', 508 , 60, '2021-06-28', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '��������������!','�Ϸ翡 ��� ����ϴ���.. ������ �� �� �ִ¹� �����?', '�����4', 611 , 60, '2021-06-29', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '����̵��� ��� ������ �־ �ǳ���?','������ ���̴� ���ȿ����� �� ��µ� ���� �̷��°� �´°ǰ���?', '�����5', 263 , 60, '2021-06-30', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '��� ��� �����ּ���!','���� ������ ��Ž�� �ʹ� ���Ƽ� ���� �ִµ� ���� �ʹ� �Ⱦ��.. �������ؾߵɱ��..��', '�����6', 118 , 60, '2021-07-10', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '��Ž�� �����ʿ��ؿ�','������ ���� ��¥ �Ϳ�� ��Ž�� �ʹ� ���ؿ� �Ф� ��� �ؾ� �ɱ��?', '�����1', 202 , 60, '2021-07-14', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������ �о�����', '�о� ���� �� ������� ����� ���� �����ϴٰ� �����Ͻó���?','�����3', 75 , 60, '2021-07-20', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�䳢 ��ᵵ ��õ ���� �� �������?','����� ���� �ֱ��ϴµ� ��� ������ �� �ñ��ؿ�', '�����5', 110 , 60, '2021-07-22', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '����ġ �о�����','���� ���� �������� Ű��� �ִµ� ����ġ�� ������ ������ �о�� ���� �� �ּ���!', '�����4', 219 , 60, '2021-07-25', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�������� �����뿡 ���� ����','���������� �ȵǴٺ���..���� å���� �� ��ƽ��ϴ� �� �������� ������ �������?', '�����2', 314 , 60, '2021-07-29', 'Y' );

INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������ ���� Ȯ�ι�','�������� ���� �������� ���������� Ű��� �ִµ� ���̰� �ñ��ؿ� Ȯ�� ����� �������? ', '�����3', 318 , 60, '2022-06-27', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '��åģ�� ����','��åģ�� ���ϼż� ���� ��å�غ��źе� �ıⰡ �ñ��ؿ�!', '�����5', 88 , 60, '2022-06-28', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '��İ��� ���������','�������� �ݷ��߿��� �Ϸ� 3���� ì���ִµ� �����е鵵 ���� �̷������� ����Ͻô� ���ΰ���?', '�����1', 61 , 60, '2022-06-29', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '������� �ɸ��� �ñ��ؿ�','�� �������� �Բ� �������� �˴ٰ��� �𸣰ھ�� ����', '�����4', 119 , 60, '2021-06-30', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���� ����� �ñ��ؿ�!','������ �ʹ� �����ؼ� ���� �ȸ������� �ϴµ� ���� ��� �� �������..??', '�����2', 241 , 60, '2022-07-02', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '���������� å�� ���?','������Ե鿡�� �����帳�ϴ�.. ������ �������� ������ �ʹ� �����ؼ� �Ǵ��� �� �ȼ��µ� ������ �ֳ���?', '�����1', 337 , 60, '2022-07-03', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�������� ����Ʈ ����!', '���� ����Ʈ �����е��� ��� �ֿ��Ͻó���..? ','�����6', 105 , 60, '2021-08-21', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�������� ������� ����..','���� ���°� ������ ������ ��� ������ �����ŷ���...��å���ڴ°ɱ��? ��å�� �ǳ� ���µ� �Ф�', '�����4', 228 , 60, '2022-07-04', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '����̿� ������ ���� Ű��ôº� ��Ǳ��..?','���� ���� �ֱ⶧ ���� ���� Ű���� �׷��� ���̰� ������ �����е��� ����ΰ���..?', '�����2', 607 , 60, '2022-07-05', 'Y' );
INSERT INTO COMMUNITY VALUES(SEQ_CNO.NEXTVAL, '�����е��� �ݷ��ߵ� �̸��� �ñ��ؿ�~!','���� �� �������� �̸��� ���ڿ��� ���� �����е� �ݷ��� �̸��� �ñ��ؿ�!', '�����2', 607 , 60, '2022-07-06', 'Y' );


CREATE TABLE COATTACHMENT (
  FILE_NO NUMBER PRIMARY KEY,
  REF_CONO NUMBER NOT NULL,
  ORIGIN_NAME VARCHAR2(255) NOT NULL,
  CHANGE_NAME VARCHAR2(255) NOT NULL,
  FILE_PATH VARCHAR2(1000) NOT NULL,
  UPLOAD_DATE DATE DEFAULT SYSDATE NOT NULL,
  FILE_LEVEL NUMBER,
  STATUS VARCHAR2(1) DEFAULT 'Y' CHECK(STATUS IN('Y', 'N')),
  FOREIGN KEY (REF_CONO) REFERENCES COMMUNITY(COMM_NO)
);

COMMENT ON COLUMN COATTACHMENT.FILE_NO IS '���Ϲ�ȣ';
COMMENT ON COLUMN COATTACHMENT.REF_CONO IS '�����Խñ۹�ȣ';
COMMENT ON COLUMN COATTACHMENT.ORIGIN_NAME IS '���Ͽ�����';
COMMENT ON COLUMN COATTACHMENT.CHANGE_NAME IS '���ϼ�����';
COMMENT ON COLUMN COATTACHMENT.FILE_PATH IS '�����������';
COMMENT ON COLUMN COATTACHMENT.UPLOAD_DATE IS '���ε���';
COMMENT ON COLUMN COATTACHMENT.FILE_LEVEL IS '���Ϸ���(1/2)';
COMMENT ON COLUMN COATTACHMENT.STATUS IS '���°�(Y/N)';

CREATE TABLE USERREPLY(
  REPLY_NO NUMBER PRIMARY KEY,
  REPLY_CONTENT VARCHAR2(400) NOT NULL,
  REF_BNO NUMBER NOT NULL,
  REPLY_WRITER VARCHAR2(20) NOT NULL,
  CREATE_DATE DATE DEFAULT SYSDATE NOT NULL,
  STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
  FOREIGN KEY (REF_BNO) REFERENCES COMMUNITY(COMM_NO)
);

COMMENT ON COLUMN USERREPLY.REPLY_NO IS '��۹�ȣ';
COMMENT ON COLUMN USERREPLY.REPLY_CONTENT IS '��۳���';
COMMENT ON COLUMN USERREPLY.REF_BNO IS '�����ϴ°Խñ۹�ȣ';
COMMENT ON COLUMN USERREPLY.REPLY_WRITER IS '�ۼ���ȸ����ȣ';
COMMENT ON COLUMN USERREPLY.CREATE_DATE IS '�ۼ���';
COMMENT ON COLUMN USERREPLY.STATUS IS '���°�(Y/N)';

INSERT INTO USERREPLY(REPLY_NO, REPLY_CONTENT, REF_BNO, REPLY_WRITER, CREATE_DATE, STATUS)
VALUES(SEQ_CRNO.NEXTVAL, '����! �����ó���� �����ϰ� �־��! ī����̵� ���沲��! lklk789 ī���ּ��뤾', 84, 'user01', TO_DATE('2022-07-04 10:11:23', 'yyyy-mm-dd hh24:mi:ss'), DEFAULT);
INSERT INTO USERREPLY(REPLY_NO, REPLY_CONTENT, REF_BNO, REPLY_WRITER, CREATE_DATE, STATUS)
VALUES(SEQ_CRNO.NEXTVAL, '��..���� ���￡ �����ϰ� �־ �ȵɰ� ���׿� ������ ��ȸ�� �ȴٸ� ���� ��å�ؿ�!', 84, 'user02', TO_DATE('2022-07-05 09:27:55', 'yyyy-mm-dd hh24:mi:ss'), DEFAULT);
INSERT INTO USERREPLY(REPLY_NO, REPLY_CONTENT, REF_BNO, REPLY_WRITER, CREATE_DATE, STATUS)
VALUES(SEQ_CRNO.NEXTVAL, '���� ���׿� ���� ���� �߾︸��ñ�! ', 84, 'hosp02', TO_DATE('2022-07-04 12:35:52', 'yyyy-mm-dd hh24:mi:ss'), DEFAULT);

INSERT INTO USERREPLY(REPLY_NO, REPLY_CONTENT, REF_BNO, REPLY_WRITER, CREATE_DATE, STATUS)
VALUES(SEQ_CRNO.NEXTVAL, '������ �������� ���̿���!', 134, 'hosp01', TO_DATE('2022-07-07 08:12:25', 'yyyy-mm-dd hh24:mi:ss'), DEFAULT);
INSERT INTO USERREPLY(REPLY_NO, REPLY_CONTENT, REF_BNO, REPLY_WRITER, CREATE_DATE, STATUS)
VALUES(SEQ_CRNO.NEXTVAL, '�ݷ����� �ƴϰ� �ݷ�������..���� �κζ�� �ؿ�!', 134, 'user03', TO_DATE('2022-07-07 09:35:16', 'yyyy-mm-dd hh24:mi:ss'), DEFAULT);
INSERT INTO USERREPLY(REPLY_NO, REPLY_CONTENT, REF_BNO, REPLY_WRITER, CREATE_DATE, STATUS)
VALUES(SEQ_CRNO.NEXTVAL, '������ �������� ����̿���!', 134, 'user01', TO_DATE('2022-07-07 15:17:32', 'yyyy-mm-dd hh24:mi:ss'), DEFAULT);
INSERT INTO USERREPLY(REPLY_NO, REPLY_CONTENT, REF_BNO, REPLY_WRITER, CREATE_DATE, STATUS)
VALUES(SEQ_CRNO.NEXTVAL, '�������� �����Դϴ礻��!', 134, 'user04', TO_DATE('2022-07-06 17:22:33', 'yyyy-mm-dd hh24:mi:ss'), DEFAULT);


--------------------------------------------------
--------------     NOTICE ����   -------------------
--------------------------------------------------

CREATE TABLE NOTICE(
      NOTICE_NO NUMBER PRIMARY KEY, --�������� ��ȣ
      NOTICE_TITLE VARCHAR2(100) NOT NULL, --�������� ����
      NOTICE_CONTENT VARCHAR2(4000) NOT NULL, --�������� ����
      NOTICE_WRITER VARCHAR2(20) NOT NULL, --�ۼ��� ���̵�
      COUNT NUMBER DEFAULT 0, --��ȸ��
      CREATE_DATE DATE DEFAULT SYSDATE NOT NULL, --�ۼ���
      STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')), --���°�
      FOREIGN KEY(NOTICE_WRITER) REFERENCES MEMBER(MEMBER_ID) ON DELETE CASCADE
);

COMMENT ON COLUMN NOTICE.NOTICE_NO IS '�������׹�ȣ';
COMMENT ON COLUMN NOTICE.NOTICE_TITLE IS '������������';
COMMENT ON COLUMN NOTICE.NOTICE_CONTENT IS '�������׳���';
COMMENT ON COLUMN NOTICE.NOTICE_WRITER IS '�ۼ��� ���̵�';
COMMENT ON COLUMN NOTICE.COUNT IS '��ȸ��';
COMMENT ON COLUMN NOTICE.CREATE_DATE IS '�ۼ���';
COMMENT ON COLUMN NOTICE.STATUS IS '���°�(Y/N)';

INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '(��)�񽺾���Ƽ', 'ȸ���   (��)�񽺾���Ƽ
���� �о�   �ڹ� ������
����ä�뿹���ο�   2~3
ä�뿹����   ���
ȸ���ּ�   ����� ��õ�� ���������2�� 165, 303ȣ', 'admin', DEFAULT, '2022-02-11', DEFAULT);

INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '(��)�񽺾���Ƽ', '����/����   ��**(����) : ����������, ����, ��������, �α���, ȸ������, ȸ��Ż��
��** : �ݵ�/��������, ȸ������, ��� ����, �Ǹ��� ����, ����, ��������, �̺�Ʈ
��** : �ݵ� CRUD �� �˸�
��** : �ݵ� CRUD �� �˸�
��** : ����� CRUD �� ����
��** : ����� CRUD �� ����
����   ũ���� �ݵ��� �� ��ü�μ��� ����������, �Ϲ� ���߿��Դ� �� ���� ��ü�� �����ϰ� �ٰ����⶧����,
ũ���� �ݵ������� �����庮�� ���߰�, ������ ���ϰ� ����Ҽ��ִ� ��ȸ�� ���� �����ϴ� ����Ʈ ����
�������   1. �ݵ����
- ���/����Ʈ �� �󼼺���/����/�Ű�/����/�˸�
2. �������
- ���/����Ʈ �� �󼼺���/����/�Ű�/����/��ǰ/��ȯ
3. ������ ���
- ������Ʈ/��ǰ/ȸ�� ����Ʈ����
- ������Ʈ/��ǰ �Ű� �� ������Ʈ ����
- Q_A ä�ð���
4. ȸ�����
- ����/�α���/ȸ������/ȸ��Ż��/����/����������/����/���
������ �־���   - �Һ��ڰ� �ݵ��� �����ϰ� �ǰ��� ����
- Ű���� �Է������� ���ϴ� ��ǰ�� �˻�
- �ݵ��� ���� ��ǰ�� ���ű�� �� �Ϲ���ǰ �Ǹ�
- �ı⸦ ���� ���� �� ���ܱ��
����� ��
����ȯ��   JAVA, ORACLE, HTML, CSS, JavaScript, jQuery, Ajax, Apache-Tomcat, Spring, Mybatis, GitHub, Maven', 'admin', DEFAULT, '2022-02-13', DEFAULT);

INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '(��������������)�ڹ�(JAVA)��� ���������� ���� ������ �缺����A)', '"ȸ���   (��)�񽺾���Ƽ
���� �о�   �ڹ� ������
����ä�뿹���ο�   2~3
ä�뿹����   ���
ȸ���ּ�   ����� ��õ�� ���������2�� 165, 303ȣ"', 'admin', DEFAULT, '2022-02-11', DEFAULT);

INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '(��������������)�ڹ�(JAVA)��� ���������� ���� ������ �缺����A)', '������ : (��������������)�ڹ�(JAVA)��� ���������� ���� ������ �缺����A
���� : �赿�� ������
��¥ : 2022.07.11
�ð� : 10:00 ~ 11:00
���ǽ� : KH���������� �������� 2�� M���ǽ�
������� :  ��ȿ��
 

KH���������� ��� Ư�� �ȳ��Դϴ�.
 
���Ư���� ��������� ���� �ñ����� �ؼ��ϰ�, ����غ� ���Ͽ� ���� ������ ���� �� �ִ� �ڸ��Դϴ�
 
���� ���� ��Ź �帳�ϴ�. ', 'admin', DEFAULT, '2022-02-15', DEFAULT);

INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '(��������������)Springframework _ Ŭ���� ���� �� ������ �缺����(1)', '������ : (��������������)Springframework _ Ŭ���� ���� �� ������ �缺����(1)(��������)
���� : ������
��¥ : 2022.07.07
�ð� : 09:00 ~ 18:00
���ǽ� : KH���������� �������� D���ǽ�
 
KH���������� ������Ʈ ��ǥ �ȳ��Դϴ�.
 
������Ʈ ��ǥȸ�� �л����� �����ߴ� ������ ������� ��ȹ�ϰ� ������ ������Ʈ�� �����ϰ� ���� �� ������ ���� ������ ������ �ڸ��Դϴ�.
 
������Ʈ ��ǥȸ���� KH�������������� �����ϰ� �ִ� �л��̸� ������ ������ �� ������ ���� ���� �ٶ��ϴ�.', 'admin', DEFAULT, '2022-02-17', DEFAULT);

INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '(��������������) Ŭ���� ��ǻ�� �� ���� ����SW�����Ͼ� �缺 ����B', '������ : (��������������) Ŭ���� ��ǻ�� �� ���� ����SW�����Ͼ� �缺 ����B
���� : ������
��¥ : 2022.07.06 ~ 2022.07.12
��� : ZOOM Ȱ��
������� :  ������
 
KH���������� ���Ŭ���� �ȳ��Դϴ�.
 
�ش� ������ �� �л��� ������� ��������� �����ϴ� ���Ŭ������ �ǽ� �� �����Դϴ�.
���Ŭ������ ���Ͽ� ����� ���� ���� ������ ��� �ٶ��ϴ�.
', 'admin', DEFAULT, '2022-02-19', DEFAULT);

INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '��������ȸ �����û_�������� �ۼ��ȳ�', '�ȳ��ϼ���.
KH��������Դϴ�.
��������ȸ���� ��û�� ���� �ȳ��帳�ϴ�.

<��������ȸ �����û�ȳ�>

1. ��û���
- KHȨ������ �α��� > ���������� > �н������� > ��������ȸ ����

2. ��û�Ⱓ
- 07�� 04��(��)~07�� 17��(��)
* �ش�Ⱓ ������ ��û�����ϸ�, ���� ��û �Ұ��մϴ�.

3. �������� �ۼ�
- �ش� ������ ��û �� �������� �ۼ� �� �ֽø� �˴ϴ�.
- KHȨ������ �α��� > ����������> ����������� 2��> ���⴩����
  (����OT�� �ߴ� ����� ����)

 
�� �������� ���� �� ���ּ���!!', 'admin', DEFAULT, '2022-02-21', DEFAULT);

INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '2�� ���Ư�� �ȳ�', '������ : (��������������)�ڹ�(JAVA)��� ���������� ���� ������ �缺����A
���� : �ּ���
��¥ : 2022.07.12
�ð� : 13:30 ~ 14:10
���ǽ� : KH���������� ���� �� ���ǽ�
������� :  �̼ҿ�
 

KH���������� 2�� ��� Ư�� �ȳ��Դϴ�.
 

1�� ���Ư���� ������ 2�� ���Ư���� ���� �� �����Դϴ�!

 
���Ư���� ��������� ���� �ñ����� �ؼ��ϰ�, ����غ� ���Ͽ� ���� ������ ���� �� �ִ� �ڸ��̸� 

�ڱ�Ұ��� �ۼ����� ���� �κе鿡 ���� �Ұ��ص帮�� �ۼ��ϴ� �ñ��Դϴ�
 
Ư�� ��¥ �� ����ϼż� �� ����ֽñ� �ٶ��ϴ�.

 

�����մϴ�.', 'admin', DEFAULT, '2022-02-23', DEFAULT);

INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '(�����ý��۱���) ���ȿ����Ͼ ��� �������� ������ �缺����(1)', '������ : (�����ý��۱���) ���ȿ����Ͼ ��� �������� ������ �缺����
���� : ����ȣ ������
��¥ : 2022.06.07
�ð� : 17:00 ~ 21:50
���ǽ� : KH���������� �������� 2�� O���ǽ�
 
KH���������� ������Ʈ ��ǥ �ȳ��Դϴ�.
 
������Ʈ ��ǥȸ�� �л����� �����ߴ� ������ ������� ��ȹ�ϰ� ������ ������Ʈ�� �����ϰ� ���� �� ������ ���� ������ ������ �ڸ��Դϴ�.
 
������Ʈ ��ǥȸ���� KH�������������� �����ϰ� �ִ� �л��̸� ������ ������ �� ������ ���� ���� �ٶ��ϴ�.', 'admin', DEFAULT, '2022-02-25', DEFAULT);

INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '(����Ʈ��_����������)������ UI/UX �������� ������ �缺����A ����OT', '
������ : (����Ʈ��_����������)������ UI/UX �������� ������ �缺����A
���� : �迵�� ������
�����Ⱓ : 2022.05.30 ~ 2023.01.13
���ǽð� : 15:30 ~ 22:00
���ǽ� : KH���������� �������� 3�� 352���ǽ�
 
KH���������� ����OT �ȳ��Դϴ�.
 
���� ������ ������� �� �п���Ȱ�� ���� OT�� ���� �˴ϴ�.
OT�� ���� ���� ���� �� ��������� ���� �ȳ��� �ް� �� �����̿��� �л� �����е��� �����ð��� ���� �ʰ� �����Ͻñ� �ٶ��ϴ�.
 
�������� ���ο� ������ �����մϴ�!
', 'admin', DEFAULT, '2022-03-11', DEFAULT);

INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '(�����ý��۱���)�����ý��� ���ࡤ� ��� �������� ������', '������ : (�����ý��۱���)�����ý��� ���ࡤ� ��� �������� ������ �缺����A
���� : ��¿� ������
�����Ⱓ : 2022. 05. 25 ~ 2022. 12. 27
���ǽð� : 09:00 ~ 15:30
���ǽ� : KH���������� �������� 1�� U���ǽ�
 
KH���������� ����OT �ȳ��Դϴ�.
 
���� ������ ������� �� �п���Ȱ�� ���� OT�� ���� �˴ϴ�.
OT�� ���� ���� ���� �� ��������� ���� �ȳ��� �ް� �� �����̿��� �л� �����е��� �����ð��� ���� �ʰ� �����Ͻñ� �ٶ��ϴ�.
 
�������� ���ο� ������ �����մϴ�!', 'admin', DEFAULT, '2022-03-15', DEFAULT);


INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '(����Ʈ��_����������) ������ UI/UX �������� ������ �缺���� �����', '������ : (����Ʈ��_����������) ������ UI/UX �������� ������ �缺����
���� : �ڿ���
��¥ : 2022.05.23
�ð� : 14:00
���ǽ� : KH���������� ���� 2�� 352���ǽ�
 
KH���������� ������Ʈ ��ǥ �ȳ��Դϴ�.
 
������Ʈ ��ǥȸ�� �л����� �����ߴ� ������ ������� ��ȹ�ϰ� ������ ������Ʈ�� �����ϰ� ���� �� ������ ���� ������ ������ �ڸ��Դϴ�.
 
������Ʈ ��ǥȸ���� KH�������������� �����ϰ� �ִ� �л��̸� ������ ������ �� ������ ���� ���� �ٶ��ϴ�.', 'admin', DEFAULT, '2022-03-16', DEFAULT);


INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '(Ŭ���� � ����) Ŭ���� ��ǻ�� �����Ͼ� �缺 ���� 3ȸ��', '������ : (Ŭ���� � ����) Ŭ���� ��ǻ�� �����Ͼ� �缺 ����
���� : �迵��
�����Ⱓ : 2022.05.23 ~ 2023.01.19
���ǽð� : 09:00 ~ 15:30
���ǽ� : KH���������� �������� B���ǽ�
 
KH���������� ����OT �ȳ��Դϴ�.
 
���� ������ ������� �� �п���Ȱ�� ���� OT�� ���� �˴ϴ�.
OT�� ���� ���� ���� �� ��������� ���� �ȳ��� �ް� �� �����̿��� �л� �����е��� �����ð��� ���� �ʰ� �����Ͻñ� �ٶ��ϴ�.
 
�������� ���ο� ������ �����մϴ�!
', 'admin', DEFAULT, '2022-03-19', DEFAULT);


INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '(�����ý��۱���) �����ý��� ���ࡤ� ���', '������ : (�����ý��۱���) �����ý��� ���ࡤ� ��� �������� ������ �缺����
���� : ��¿�
��¥ : 2022.05.20
�ð� : 10:00 ~ 14:00
���ǽ� : KH���������� ���� 1�� U���ǽ�
 
KH���������� ������Ʈ ��ǥ �ȳ��Դϴ�.
 
������Ʈ ��ǥȸ�� �л����� �����ߴ� ������ ������� ��ȹ�ϰ� ������ ������Ʈ�� �����ϰ� ���� �� ������ ���� ������ ������ �ڸ��Դϴ�.
 
������Ʈ ��ǥȸ���� KH�������������� �����ϰ� �ִ� �л��̸� ������ ������ �� ������ ���� ���� �ٶ��ϴ�.', 'admin', DEFAULT, '2022-04-03', DEFAULT);


INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '(������ ������)������ �÷����� Ȱ���� ������ �缺����A1', '������ : (������ ������)������ �÷����� Ȱ���� ������ �缺����A
���� : ����� ������
�����Ⱓ : 2022.05.16 ~ 2022.12.20
���ǽð� : 15:30 ~ 22:00
���ǽ� : KH���������� ���� �� ���ǽ�
 
KH���������� ����OT �ȳ��Դϴ�.
 
���� ������ ������� �� �п���Ȱ�� ���� OT�� ���� �˴ϴ�.
OT�� ���� ���� ���� �� ��������� ���� �ȳ��� �ް� �� �����̿��� �л� �����е��� �����ð��� ���� �ʰ� �����Ͻñ� �ٶ��ϴ�.
 
�������� ���ο� ������ �����մϴ�!
', 'admin', DEFAULT, '2022-04-10', DEFAULT);


INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '(�����ý��۱���)���ȿ����Ͼ ��� �������� ������ �缺����A2', '
������ : (�����ý��۱���)���ȿ����Ͼ ��� �������� ������ �缺����A2_1ȸ��
���� : ������
�����Ⱓ : 2022.05.12 ~ 2022.12.06
���ǽð� : 09:00 ~ 15:30
���ǽ� : KH���������� �������� 3�� 362���ǽ�
 
KH���������� ����OT �ȳ��Դϴ�.
 
���� ������ ������� �� �п���Ȱ�� ���� OT�� ���� �˴ϴ�.
OT�� ���� ���� ���� �� ��������� ���� �ȳ��� �ް� �� �����̿��� �л� �����е��� �����ð��� ���� �ʰ� �����Ͻñ� �ٶ��ϴ�.
 
�������� ���ο� ������ �����մϴ�!

', 'admin', DEFAULT, '2022-04-13', DEFAULT);

INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '������Ʈ �Ϸ� ���� �ۼ� ����', '�� �ý����� ����
- ��ȹ�� ���� ���� �κ��� �����Ͽ� �ۼ� �� ���� ������ ����� �ִٸ� �߰�
- ������ ���� ������ ����� ������� ��� ����
�� �ý��� ����
- ��ȹ�� ���� �ý��� ���� �� ������ ������ �κи� �ۼ�
- ��ȹ�� ���� �ý��� ������ �޶��� �κ��� �ִ� ��� �߰�
- ��� �׸����� �׸���ȣ �� �׸������� ���δ�.
 (��: �׸� 2-1 �ý��� �޴� ������)
', 'admin', DEFAULT, '2022-04-16', DEFAULT);


INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '�� �ý��� �帧', '- ��ȹ�� ���� �ý��� �帧�� �� ������ ������ �κи� �ۼ�
- ��ȹ�� ���� �ý��� �帧���� �޶��� �κ��� �ִ� ��� �߰�
- ��� �׸����� �׸���ȣ �� �׸������� ���δ�.
 (��: �׸� 3-1 �ý��� ������)', 'admin', DEFAULT, '2022-04-20', DEFAULT);


INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '�� �ý��� ����� ��ħ', '- �ý����� ��� ����ؾ� �ϴ����� �ۼ��Ѵ�. - ���� ȭ���� ĸó�ؼ� �ش� ȭ���� ��� �����ؾ� �ϴ����� ���� �ۼ��Ѵ�. ��, ó�� �ý����� ����ϴ� ������� ���忡�� ��� ����� ������� �ۼ��Ѵ�. - ��� �׸����� �׸���ȣ �� �׸������� ���δ�.
 (��: �׸� 4-1 �α��� ȭ��)
', 'admin', DEFAULT, '2022-04-21', DEFAULT);


INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '�� DB ������', '- ��ȹ�� ���� DB ���� �� ������ ������ DB�� ������ �ۼ�
- ��ȹ�� ���� DB ����� �޶��� �κ��� �ִ� ��� �߰�', 'admin', DEFAULT, '2022-05-01', DEFAULT);

INSERT INTO NOTICE
VALUES (SEQ_NNO.NEXTVAL, '   ���ǻ�� �������ߴ����ῡ ���� ����', '1. �����ǻ�������� ��18691ȣ �� �����ǻ�� ����ɡ�,�����ǻ�� �����Ģ���� �����մϴ�.   

2. ���� ��22.1.4. �Ϻΰ����� �����ǻ����(���� ��18691ȣ)�� �������� 6������ ����Կ� ����, 
�ٰ����� ��22.7.5.(ȭ)���� ���ǻ�� ���������ߴ����ᡱ�� �ϴ� ��� �����ǻ������13����2(�������ߴ����ῡ ���� ����)�� ���� 
���������� ��� ������ ������ �����ϰ�, ����(���ڹ��� ����)���� ���Ǹ� �޾ƾ� �մϴ�.       

 ��. �������� �߻��ϰų� �߻� ������ ������ ���ܸ�       
 ��. ���������ߴ����ᡱ�� �ʿ伺, ��� �� ����       
 ��. ���������ߴ����ᡱ�� ���� ���������� �߻��� ����Ǵ� ������ �Ǵ� ���ۿ�       
 ��. ���������ߴ����ᡱ ���Ŀ� ���������� ���� �ؼ��Ͽ��� �� ����

            �¼������ߴ������� ����(�����ǻ�� �����Ģ����13����2)
               1. ���Ÿ��븦 �����ϴ� �������, ��, ������ ���� ����
               2. ���Ÿ��븦 �����ϴ� ����


3. ���� ���� ������ ������ ������ ���η� �ϰ�, ���Ǹ� ���� ���� �����ǻ�� �����Ģ������ ��11ȣ ������ ���Ǽ��� 
���������ڵ��� �����̳� ������� ������ 1�Ⱓ �����ؾ� �մϴ�. 
(�� ����11ȣ ���Ǽ� ������ ������ �ʼ� �׸����� �� ������ ��� ������ ������ ���Ǽ� ��� ��� �����ϸ�, ���� ���Ѽ��ǻ�ȸ �ǰ� ���� �ȳ� ����)     


4. �ٸ�, ���� �� ���� ������ ���������ߴ����ᡱ�� ��ü�Ǹ� ������ ������ ���������ų� ������ ��ü�� �ߴ��� ��ָ� ������ ����� �ִ� ��쿡�� 
���������ߴ����ᡱ���Ŀ� �����ϰ� ���Ǹ� ���� �� �ֽ��ϴ�.     


5. �� ���� ���� ���������� ��� ������ ���� �ƴ��ϰų� �������� ���Ǹ� ���� �ƴ��� ��� 
���·�(1�� 30����/2�� 60����/3�� 90����)�� �ΰ��� �� �����Ƿ�, ���ǻ� ȸ������ ������ ���ǰ� �ʿ��մϴ�. 

--------------------------------------------------------------------------------------------------------
���Ѽ��ǻ�ȸ���� ������ ���ǻ�� ������� Q_A, �ڼ��Ѿȳ����� 1�ο� ������ �ߴ����� ���Ǽ� ���� ���� �� �ۼ����� �� 1�θ� ���Ϸ� ÷���س����ϴ�. 
ȸ���е鲲���� ������ �����Ͻþ� �������� ���� �ʵ��� �������ֽñ� �ٶ��ϴ�. 
�����մϴ�. ', 'admin', DEFAULT, '2022-06-11', DEFAULT);




CREATE TABLE NOTICECOMMENT(
    CMT_NO NUMBER PRIMARY KEY, --��� ��ȣ REFERENCES COMMENTS.COMMENT_NO
    CMT_WRITER VARCHAR2(100) NOT NULL, --��� �ۼ���
    CMT_CONTENT VARCHAR2 (4000) NOT NULL, --��� ����
    REF_NNO NUMBER NOT NULL,
    CREATE_DATE DATE DEFAULT SYSDATE NOT NULL, --�ۼ���
    STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN('Y', 'N')), --���°�
    FOREIGN KEY(REF_NNO) REFERENCES NOTICE(NOTICE_NO)--�������� ��ȣ ����
);

INSERT INTO NOTICECOMMENT
VALUES (SEQ_NOCMT.NEXTVAL, 'admin', '�ٲ� ������ �츮 �ư����� � ������ �ٱ��?', '19', '2022-07-06', DEFAULT);

INSERT INTO NOTICECOMMENT
VALUES (SEQ_NOCMT.NEXTVAL, 'hosp01', '"�ȳ��ϼ���! ���� ���������Դϴ�!
�ٲ� ���� ���� �ּ��� ���ϰڽ��ϴ�!"', '19', '2022-07-06', DEFAULT);

INSERT INTO NOTICECOMMENT
VALUES (SEQ_NOCMT.NEXTVAL, 'user01', '�� ���� ���������̳׿�! �� ���⼭ ������ ���� �޾Ҵµ� �ư� ������ �ߵư� �������� �屺ó�� �� ����̾��!', '19', '2022-07-06', DEFAULT);

INSERT INTO NOTICECOMMENT
VALUES (SEQ_NOCMT.NEXTVAL, 'user02', '����! ���Ⱑ �� ������ �����̱���! ���� �� �����߰ھ!', '19', '2022-07-06', DEFAULT);

INSERT INTO NOTICECOMMENT
VALUES (SEQ_NOCMT.NEXTVAL, 'hosp01', '�� �����Դϴ�;;', '19', '2022-07-06', DEFAULT);

INSERT INTO NOTICECOMMENT
VALUES (SEQ_NOCMT.NEXTVAL, 'hosp01', '�����ý��� ���ࡤ� ��� �������� ������ �缺����A ���� ���ſ�!', '19', '2022-07-06', DEFAULT);

INSERT INTO NOTICECOMMENT
VALUES (SEQ_NOCMT.NEXTVAL, 'user01', '��!.. �˼��ؿ�!!!!!!', '19', '2022-07-06', DEFAULT);

INSERT INTO NOTICECOMMENT
VALUES (SEQ_NOCMT.NEXTVAL, 'user02', '�εյε� ���� ��! �� ������ ���� ����̶� �湮�ҰԿ�!', '19', '2022-07-06', DEFAULT);

INSERT INTO NOTICECOMMENT
VALUES (SEQ_NOCMT.NEXTVAL, 'hosp01', '��! ���� ���ø� �ÿ��� �� �帱�Կ�!', '19', '2022-07-06', DEFAULT);




--------------------------------------------------
--------------     INQUIRY ����   -----------------
--------------------------------------------------

CREATE TABLE "CATEGORY" (
    CATEGORY_NO NUMBER PRIMARY KEY,
   "CATEGORY_NAME"   VARCHAR2(30)   NOT NULL
);

COMMENT ON COLUMN "CATEGORY"."CATEGORY_NO" IS 'ī�װ���ȣ';
COMMENT ON COLUMN "CATEGORY"."CATEGORY_NAME" IS 'ī�װ���';

INSERT INTO CATEGORY VALUES(10, '�Ű���');
INSERT INTO CATEGORY VALUES(20, '��������');
INSERT INTO CATEGORY VALUES(30, '��������');
INSERT INTO CATEGORY VALUES(40, '��Ÿ����');
INSERT INTO CATEGORY VALUES(50, '�ͱۿͱ۰Խ���');
INSERT INTO CATEGORY VALUES(60, '�����Խ���');


CREATE TABLE "INQUIRY" (
   "INQUIRY_NO"   NUMBER PRIMARY KEY,
   "CATEGORY_NO"   NUMBER   NOT NULL,
   "USER_ID"   VARCHAR2(20)   NOT NULL,
    INQUIRY_TITLE VARCHAR2(1000) NOT NULL,
   "INQUIRY_CONTENT"   VARCHAR2(4000)   NOT NULL,
   "CREATE_DATE"   DATE DEFAULT SYSDATE NOT NULL,
   STATUS VARCHAR2(1) DEFAULT 'O' CHECK (STATUS IN('O', 'X')),
   CHECKSTATUS VARCHAR(100) DEFAULT '�亯�̿Ϸ�' CHECK(CHECKSTATUS IN('�亯�Ϸ�','�亯�̿Ϸ�')),
    FOREIGN KEY (CATEGORY_NO) REFERENCES CATEGORY(CATEGORY_NO)
);

COMMENT ON COLUMN "INQUIRY"."INQUIRY_NO" IS '���ǹ�ȣ';
COMMENT ON COLUMN "INQUIRY"."CATEGORY_NO" IS 'ī�װ���ȣ';
COMMENT ON COLUMN "INQUIRY"."USER_ID" IS '���̵�';
COMMENT ON COLUMN INQUIRY.INQUIRY_TITLE IS '��������';
COMMENT ON COLUMN "INQUIRY"."INQUIRY_CONTENT" IS '���ǳ���';
COMMENT ON COLUMN "INQUIRY"."CREATE_DATE" IS '�ۼ���';
COMMENT ON COLUMN "INQUIRY"."STATUS" IS 'ó���Ȼ���:O/ó���ȵȻ���:X';

INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 10, 'user01', 'Ŀ�´�Ƽ���� ����ȫ���ص� �Ǵ°ſ�����?', '���� �״���Դϴ�. �ͱۿͱ� Ŀ�´�Ƽ���� ����ȫ���� �Ͻô� ���� �ִµ� ������ ���ּ���','2022-02-18','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 10, 'user02', '�ͱۿͱۿ��� ���� ȫ��', '�ͱۿͱۿ��� ���� ȫ���� �Ͻô� �п� �輼��... ���̵�� user07�̿����ϴ�','2022-02-20','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 10, 'user03', 'Ŀ�´�Ƽ�� �̻��� ��', 'Ŀ�´�Ƽ�� �̻��� ���� �ִµ� Ȯ���غ��� �������ֽǼ� �ֳ���?','2022-02-24','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 10, 'user04', 'ȸ������ �� ����� ���ּ���', '�����ں��� ���Ͻñ淡 Ŀ�´�Ƽ�� ������ ���谡 �Ǿ��ִµ� Ȯ�� ���غ��ó���? ��ġ�� �����ֽ���','2022-02-26','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 20, 'user05', '���̵� ���� ����?', '���̵� ���� ���� �Ѱ���?','2022-03-01','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 20, 'user06', '�����ߴµ�', '�����ߴµ� �� ������������ �̸��� �ٲܼ��ֳ���?','2022-03-2','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 30, 'user07', '���� ����������', '404�� �ߴµ� �����ִ°ǰ���?','2022-03-5','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 30, 'user08', '�������� �̵��Ǳ� ��', '�������� �̵��Ǳ����� �α׾ƿ��� �Ǵ°� ���ƿ�','2022-03-8','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 40, 'user01', '�������̵� �ӵ�', 'Ȥ�� ������ �̵��� �����Ÿ��µ� �� �׷��� �ǰ���?','2022-03-11','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 40, 'user02', '�ٸ� ��� �߰�', 'ģ���� ���� ȸ���鳢�� ä���ϰ� ������ ���߿� ����� ����� �ֽǼ� �ֳ���?','2022-03-12','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 20, 'user01', '���� �̸��Ϸ� ', '���� �̸��Ϸ� ȸ�������� �����Ѱ���?','2022-03-15','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 20, 'hosp01', '���������', '��������ڵ�Ϲ�ȣ�� �ٲܼ� �ֳ���?','2022-03-15','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 10, 'hosp04', '�������� ����', '�������� ���䰡 �ֽ��ϴ�. �˼������� �����ֽǼ� �ֳ���?','2022-03-16','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 10, 'user04', '������ ȫ���ϳ׿�', '������ ���õ� ���ΰ� ������ ȫ���Ͻô� ���� ��ó׿�','2022-03-18','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 10, 'user01', '���������� ��������', '�������Ḧ �ϴ� ������ ���ܾȵǳ���? ��¥ ���ϰ� ���� �ٸ� �������δ� �����µ� �ʹ� ��γ׿�','2022-04-18','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 10, 'user02', 'user07�� ���� �ִ�', 'user07�� ���� �ִ� �Խñ۸��� �� �弳�� ����� ���׿�','2022-04-20','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 10, 'user03', 'user07�� ���ϴ� ����ΰ���', 'user07�� ���� ��� �Խñ۸��� �弳�� ����� �����ΰŰ����� ���� ���ּ���...','2022-04-24','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 10, 'user04', 'user07 �̻����', 'user07�� ����� ���� ����ȫ���� �ϰ� Ŀ�´�Ƽ���� �弳�� ����� �������������� ���������� ���Ͻó���?','2022-04-26','O','�亯�̿Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 20, 'user05', 'ȸ��Ż�� �߾��µ�', 'ȸ��Ż�� �ϱ����� �ִ� �������� �ٽ� �ҷ����Ⱑ �����ұ��?','2022-04-30','O','�亯�̿Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 20, 'user06', 'ȸ������ ����', 'ȸ��Ż���ߴµ� ������ �����Ѱ���?','2022-05-2','O','�亯�̿Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 40, 'user06', '������ �������� �ʴ�', '������ �������� �ʴ� ������ ������������ �ߴ°� ���ƿ�','2022-06-12','O','�亯�̿Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 20, 'user07', '�̸����� �г���', '�̸����� �г������� �������� �Ѱ���?','2022-06-15','O','�亯�̿Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 20, 'hosp08', '�����ΰ���..', '�����ΰ��� �ٸ� ���̵�� �����ϰ� �־��µ� �ϳ��� ������ �����ұ��?','2022-06-15','O','�亯�Ϸ�');
INSERT INTO INQUIRY VALUES(SEQ_INO.NEXTVAL, 10, 'hosp02', '����ȸ���� ���並 �̻��ϰ� ���׿�', '�������� ���䰡 �ִµ� �������ֽǼ��ֳ���?','2022-06-16','O','�亯�̿Ϸ�');



----------------------------------------------------
--------------     ATTACHMENT ����     --------------   
----------------------------------------------------

DROP TABLE ATTACHMENT CASCADE CONSTRAINTS;

CREATE TABLE ATTACHMENT (
  FILE_NO NUMBER PRIMARY KEY,
  REF_CNO NUMBER NOT NULL,
  ORIGIN_NAME VARCHAR2(255) NOT NULL,
  CHANGE_NAME VARCHAR2(255) NOT NULL,
  FILE_PATH VARCHAR2(1000) NOT NULL,
  UPLOAD_DATE DATE DEFAULT SYSDATE NOT NULL,
  FILE_LEVEL NUMBER,
  STATUS VARCHAR2(1) DEFAULT 'Y' CHECK(STATUS IN('Y', 'N'))
);

COMMENT ON COLUMN ATTACHMENT.FILE_NO IS '���Ϲ�ȣ';
COMMENT ON COLUMN ATTACHMENT.REF_CNO IS '�����Խñ۹�ȣ';
COMMENT ON COLUMN ATTACHMENT.ORIGIN_NAME IS '���Ͽ�����';
COMMENT ON COLUMN ATTACHMENT.CHANGE_NAME IS '���ϼ�����';
COMMENT ON COLUMN ATTACHMENT.FILE_PATH IS '�����������';
COMMENT ON COLUMN ATTACHMENT.UPLOAD_DATE IS '���ε���';
COMMENT ON COLUMN ATTACHMENT.FILE_LEVEL IS '���Ϸ���(1/2)';
COMMENT ON COLUMN ATTACHMENT.STATUS IS '���°�(Y/N)';

INSERT INTO ATTACHMENT(FILE_NO, REF_CNO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH)
VALUES(SEQ_FNO.NEXTVAL, 1, '01_û��������������.jpg', 'Petist_20220629174515_25444.jpg', 'resources/hospital_upfiles/');
INSERT INTO ATTACHMENT(FILE_NO, REF_CNO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH)
VALUES(SEQ_FNO.NEXTVAL, 2, '02_�̽�����������.jpg', 'Petist_20220629175758_10979.jpg', 'resources/hospital_upfiles/');
INSERT INTO ATTACHMENT(FILE_NO, REF_CNO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH)
VALUES(SEQ_FNO.NEXTVAL, 3, '03_���̵����޵��ü���.jpg', 'Petist_20220629175903_49643.jpg', 'resources/hospital_upfiles/');
INSERT INTO ATTACHMENT(FILE_NO, REF_CNO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH)
VALUES(SEQ_FNO.NEXTVAL, 4, '04_(��õ)���뵿������.jpg', 'Petist_20220629180017_94778.jpg', 'resources/hospital_upfiles/');
INSERT INTO ATTACHMENT(FILE_NO, REF_CNO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH)
VALUES(SEQ_FNO.NEXTVAL, 5, '05_����ũ�µ�������.jpg', 'Petist_20220629180104_40450.jpg', 'resources/hospital_upfiles/');
INSERT INTO ATTACHMENT(FILE_NO, REF_CNO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH)
VALUES(SEQ_FNO.NEXTVAL, 6, '06_�׷��̽���������.jpg', 'Petist_20220629180155_78761.jpg', 'resources/hospital_upfiles/');
INSERT INTO ATTACHMENT(FILE_NO, REF_CNO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH)
VALUES(SEQ_FNO.NEXTVAL, 7, '07_������б� ���ǰ����� ��������.jpg', 'Petist_20220629180256_79026.jpg', 'resources/hospital_upfiles/');
INSERT INTO ATTACHMENT(FILE_NO, REF_CNO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH)
VALUES(SEQ_FNO.NEXTVAL, 8, '08_���絿������.jpg', 'Petist_20220629180405_42324.jpg', 'resources/hospital_upfiles/');
INSERT INTO ATTACHMENT(FILE_NO, REF_CNO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH)
VALUES(SEQ_FNO.NEXTVAL, 9, '09_���緡��������.jpg', 'Petist_20220629180454_89149.jpg', 'resources/hospital_upfiles/');
INSERT INTO ATTACHMENT(FILE_NO, REF_CNO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH)
VALUES(SEQ_FNO.NEXTVAL, 10, '10_���� ������������.jpg', 'Petist_20220629180554_37941.jpg', 'resources/hospital_upfiles/');
INSERT INTO ATTACHMENT(FILE_NO, REF_CNO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH)
VALUES(SEQ_FNO.NEXTVAL, 11, '11_�ִ��굿������.jpg', 'Petist_20220629180619_46406.jpg', 'resources/hospital_upfiles/');
INSERT INTO ATTACHMENT(FILE_NO, REF_CNO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH)
VALUES(SEQ_FNO.NEXTVAL, 12, '12_���ӵ����ǷἾ��.jpg', 'Petist_20220629180747_41701.jpg', 'resources/hospital_upfiles/');
INSERT INTO ATTACHMENT(FILE_NO, REF_CNO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH)
VALUES(SEQ_FNO.NEXTVAL, 13, '13_�츮�鵿���޵��ü���.jpg', 'Petist_20220629180836_28718.jpg', 'resources/hospital_upfiles/');
INSERT INTO ATTACHMENT(FILE_NO, REF_CNO, ORIGIN_NAME, CHANGE_NAME, FILE_PATH)
VALUES(SEQ_FNO.NEXTVAL, 14, '14_24���ص絿���޵��ü���.jpg', 'Petist_20220629180928_56172.jpg', 'resources/hospital_upfiles/');

----------------------------------------------------
----------------     REPLY ����     -----------------   
----------------------------------------------------

CREATE TABLE INREPLY(
  REPLY_NO NUMBER PRIMARY KEY,
  REPLY_CONTENT VARCHAR2(400) NOT NULL,
  REF_INO NUMBER NOT NULL,
  REPLY_WRITER VARCHAR2(20) NOT NULL,
  CREATE_DATE DATE DEFAULT SYSDATE NOT NULL,
  STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
  FOREIGN KEY (REF_INO) REFERENCES INQUIRY(INQUIRY_NO),
  FOREIGN KEY (REPLY_WRITER) REFERENCES MEMBER(MEMBER_ID)
);

COMMENT ON COLUMN INREPLY.REPLY_NO IS '��۹�ȣ';
COMMENT ON COLUMN INREPLY.REPLY_CONTENT IS '��۳���';
COMMENT ON COLUMN INREPLY.REF_INO IS '�����ϴ°Խñ۹�ȣ';
COMMENT ON COLUMN INREPLY.REPLY_WRITER IS '�ۼ��ھ��̵�';
COMMENT ON COLUMN INREPLY.CREATE_DATE IS '�ۼ���';
COMMENT ON COLUMN INREPLY.STATUS IS '���°�(Y/N)';



INSERT INTO INREPLY VALUES(SEQ_IRNO.NEXTVAL, '���Ȯ�� �� �����ص帮�ڽ��ϴ�', 23,'admin', DEFAULT,'Y');
INSERT INTO INREPLY VALUES(SEQ_IRNO.NEXTVAL, '�˼��մϴٸ� �׷��Դ� �Ұ����� �� �����ϴ�', 11,'admin', DEFAULT,'Y');
INSERT INTO INREPLY VALUES(SEQ_IRNO.NEXTVAL, '�� �����մϴ�', 12,'admin', DEFAULT,'Y');
INSERT INTO INREPLY VALUES(SEQ_IRNO.NEXTVAL, '�����մϴ�. Ȯ�� �� �����ص帮�ڽ��ϴ�', 10,'admin', DEFAULT,'Y');
INSERT INTO INREPLY VALUES(SEQ_IRNO.NEXTVAL, '����������ȣ�� �� 21��(���������� �ı�)�� ����, �����Ⱓ�� ����� ��� 5���̳��� ���������� �ı��ؾ��մϴ�. �ش� �������� ã�ƺ� ��� �����Ⱓ�� ����Ͽ� ������ �Ұ����Ұ� �����ϴ�. �˼��մϴ�', 9,'admin',SYSDATE,'Y');
INSERT INTO INREPLY VALUES(SEQ_IRNO.NEXTVAL, '�˼��մϴ�.', 8,'admin', DEFAULT,'Y'); 
-- �Ű��� �Ű��� ��� 
INSERT INTO INREPLY VALUES(SEQ_IRNO.NEXTVAL, '�˰ڽ��ϴ�.', 17,'admin', DEFAULT,'Y');  
INSERT INTO INREPLY VALUES(SEQ_IRNO.NEXTVAL, '�˰ڽ��ϴ�.', 16,'admin', DEFAULT,'Y'); 
INSERT INTO INREPLY VALUES(SEQ_IRNO.NEXTVAL, '�˰ڽ��ϴ�.', 15,'admin', DEFAULT,'Y'); 
INSERT INTO INREPLY VALUES(SEQ_IRNO.NEXTVAL, '�˰ڽ��ϴ�.', 14,'admin', DEFAULT,'Y'); 
INSERT INTO INREPLY VALUES(SEQ_IRNO.NEXTVAL, '�˰ڽ��ϴ�.', 13,'admin', DEFAULT,'Y'); 
INSERT INTO INREPLY VALUES(SEQ_IRNO.NEXTVAL, '�˰ڽ��ϴ�.', 4,'admin', DEFAULT,'Y'); 
INSERT INTO INREPLY VALUES(SEQ_IRNO.NEXTVAL, '�˰ڽ��ϴ�.', 3,'admin', DEFAULT,'Y'); 
INSERT INTO INREPLY VALUES(SEQ_IRNO.NEXTVAL, '�˰ڽ��ϴ�.', 2,'admin', DEFAULT,'Y'); 

CREATE TABLE REPLY(
  REPLY_NO NUMBER PRIMARY KEY,
  REPLY_CONTENT VARCHAR2(400) NOT NULL,
  REF_BNO NUMBER NOT NULL,
  REPLY_WRITER VARCHAR2(20) NOT NULL,
  CREATE_DATE DATE DEFAULT SYSDATE NOT NULL,
  STATUS VARCHAR2(1) DEFAULT 'Y' CHECK (STATUS IN ('Y', 'N')),
  FOREIGN KEY (REF_BNO) REFERENCES COMMUNITY(COMM_NO),
  FOREIGN KEY (REPLY_WRITER) REFERENCES MEMBER(MEMBER_ID),
  FOREIGN KEY (REPLY_WRITER) REFERENCES HOSPITAL(HOSP_ID)

);

COMMENT ON COLUMN REPLY.REPLY_NO IS '��۹�ȣ';
COMMENT ON COLUMN REPLY.REPLY_CONTENT IS '��۳���';
COMMENT ON COLUMN REPLY.REF_BNO IS '�����ϴ°Խñ۹�ȣ';
COMMENT ON COLUMN REPLY.REPLY_WRITER IS '�ۼ���ȸ����ȣ';
COMMENT ON COLUMN REPLY.CREATE_DATE IS '�ۼ���';
COMMENT ON COLUMN REPLY.STATUS IS '���°�(Y/N)';


COMMIT;