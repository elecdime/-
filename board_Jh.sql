--------------------------------------------------------
--  ������ ������ - ������-3��-07-2022   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table BOARD_JH
--------------------------------------------------------

  CREATE TABLE "ARIMOATESTDB"."BOARD_JH" 
   (	"BBSNO" NUMBER, 
	"WRITER" VARCHAR2(50 BYTE), 
	"TITLE" VARCHAR2(50 BYTE), 
	"CONTENT" VARCHAR2(2000 BYTE), 
	"VIEWCNT" NUMBER DEFAULT 0, 
	"REGDATE" TIMESTAMP (6) DEFAULT sysdate, 
	"ENDDATE" DATE, 
	"BBSGROUP" NUMBER, 
	"BBSDENT" NUMBER, 
	"CATECODE" VARCHAR2(30 BYTE) DEFAULT 0, 
	"NOTICE" NUMBER(10,0) DEFAULT 0, 
	"STARTDATE" DATE, 
	"BOARD_PARENT" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;

   COMMENT ON TABLE "ARIMOATESTDB"."BOARD_JH"  IS 'board_jh				
�÷���	�ڷ���	null	��������	�뵵
bbsno	nunber	not null	pk	���̺��ȣ
title	varchar2(50)	not null		�Խ˱� ����
content	varchar2(2000)	not null		�Խ˱� ����
writer	varchar2(50)	not null		�ۼ���
regDate	timestamp	not null	default now	�ۼ���
viewCnt	number	not null	default 0	��ȸ��
endDate	timestamp	not null		����������
fileName	varchar(1000)			���Ͼ��ε�
bbsGroup	number			�Խ˱� �׷� ex) 1������ ���,����� ����� ��� 1
bbsStep	number			����� ��ȣex) ù���������1, �ι��� ����� 2
bbsDent	number			�鿩���� ��ȣex)������ ���� �亯�� 1 , ��亯�� 2 , ����亯�� 3
catecode	varchar2(30)	not null		ī�װ� ���̺��� ī�װ��� ����
img	varchar2(200)			�̹��� 
imgs	varchar2(200)			�̹��� �̸������
 ';
REM INSERTING into ARIMOATESTDB.BOARD_JH
SET DEFINE OFF;
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (229,'d-2-1','d-2-1','d-2-1',4,to_timestamp('22/02/25 11:11:19.000000000','RR/MM/DD HH24:MI:SSXFF'),null,219,3,'0',0,null,223);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (234,'d','d','d',6,to_timestamp('22/02/25 15:24:16.000000000','RR/MM/DD HH24:MI:SSXFF'),to_date('22/02/26','RR/MM/DD'),234,null,'101',0,to_date('22/02/22','RR/MM/DD'),0);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (235,'������','��������','��',0,to_timestamp('22/02/25 16:40:15.000000000','RR/MM/DD HH24:MI:SSXFF'),to_date('22/02/26','RR/MM/DD'),235,null,'0',0,to_date('22/02/16','RR/MM/DD'),0);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (220,'1-1','1-1','1-1',0,to_timestamp('22/02/25 10:25:17.000000000','RR/MM/DD HH24:MI:SSXFF'),null,216,1,'0',0,null,218);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (218,'1','1','1',4,to_timestamp('22/02/25 10:24:50.000000000','RR/MM/DD HH24:MI:SSXFF'),null,216,null,'0',0,null,0);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (219,'d','d','d',6,to_timestamp('22/02/25 10:25:09.000000000','RR/MM/DD HH24:MI:SSXFF'),null,219,null,'0',0,null,0);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (221,'d-1','d-1','d-1',8,to_timestamp('22/02/25 10:25:30.000000000','RR/MM/DD HH24:MI:SSXFF'),null,219,1,'0',0,null,219);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (222,'d-1-1','d-1-1','d-1-1',6,to_timestamp('22/02/25 10:47:54.000000000','RR/MM/DD HH24:MI:SSXFF'),null,219,2,'0',0,null,221);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (215,'��','��','��',2,to_timestamp('22/02/25 09:38:20.000000000','RR/MM/DD HH24:MI:SSXFF'),to_date('22/02/28','RR/MM/DD'),215,null,'0',0,to_date('22/02/23','RR/MM/DD'),0);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (225,'1','1','1',0,to_timestamp('22/02/25 11:00:51.000000000','RR/MM/DD HH24:MI:SSXFF'),null,225,null,'0',0,null,0);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (236,'������','�Խ��� �󼼺���','<img alt="" src="/web/resources/ckUpload/6ce64c15-03c0-4547-a2fa-afa2254dd90b_pngwing.com (1).png" style="height:100px; width:100px" /><img alt="" src="/web/resources/ckUpload/6ce64c15-03c0-4547-a2fa-afa2254dd90b_pngwing.com (1).png" style="height:100px; width:100px" /><img alt="" src="/web/resources/ckUpload/6ce64c15-03c0-4547-a2fa-afa2254dd90b_pngwing.com (1).png" style="height:100px; width:100px" /><img alt="" src="/web/resources/ckUpload/6ce64c15-03c0-4547-a2fa-afa2254dd90b_pngwing.com (1).png" style="height:100px; width:100px" /><br />
<img alt="" src="/web/resources/ckUpload/6ce64c15-03c0-4547-a2fa-afa2254dd90b_pngwing.com (1).png" style="height:100px; width:100px" /><img alt="" src="/web/resources/ckUpload/6ce64c15-03c0-4547-a2fa-afa2254dd90b_pngwing.com (1).png" style="height:100px; width:100px" /><br />
�̹��� ���ε� ����. ���� �̹��� ���ε� ����.&nbsp;<br />
&nbsp;',44,to_timestamp('22/03/02 10:18:08.000000000','RR/MM/DD HH24:MI:SSXFF'),null,236,null,'102',0,null,0);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (237,'������','�Խñ� �󼼺��� - 1','�Խñ� �󼼺��� - 1',10,to_timestamp('22/03/02 10:33:47.000000000','RR/MM/DD HH24:MI:SSXFF'),null,236,1,'0',0,null,236);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (238,'������','�Խñۻ󼼺��� -2','��',12,to_timestamp('22/02/25 17:01:17.000000000','RR/MM/DD HH24:MI:SSXFF'),null,236,1,'0',0,null,236);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (239,'������','�Խñۻ󼼺��� 2-1','��',82,to_timestamp('22/03/02 10:33:58.000000000','RR/MM/DD HH24:MI:SSXFF'),null,236,2,'0',0,null,238);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (242,'44','11233','1234<img alt="" src="/web/resources/ckUpload/d70d36f2-f3b3-4020-9170-284714b17da5_pngwing.com (1).png" />',2,to_timestamp('22/03/02 10:21:34.000000000','RR/MM/DD HH24:MI:SSXFF'),null,240,null,'0',0,null,0);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (243,'22','11','33<img alt="" src="/web/resources/ckUpload/0c6891e6-c1bf-47c4-bd14-3fbd96da52cd_pngwing.com (1).png" />',6,to_timestamp('22/03/02 10:22:02.000000000','RR/MM/DD HH24:MI:SSXFF'),null,243,null,'0',0,null,0);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (244,'�׽�Ʈ','�������� �׽�Ʈ','����',86,to_timestamp('22/03/02 10:22:29.000000000','RR/MM/DD HH24:MI:SSXFF'),to_date('22/03/26','RR/MM/DD'),244,null,'100',1,to_date('22/03/01','RR/MM/DD'),0);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (247,'1234','1234','1234',24,to_timestamp('22/03/02 10:23:43.000000000','RR/MM/DD HH24:MI:SSXFF'),null,246,null,'0',0,null,0);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (230,'5-1','5-1','5-1',4,to_timestamp('22/02/25 15:22:46.000000000','RR/MM/DD HH24:MI:SSXFF'),null,227,1,'0',0,null,227);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (186,'����','����','<table cellspacing="0" style="border-collapse:collapse; width:665px">
	<tbody>
		<tr>
			<td style="background-color:yellow; border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:1px solid black; height:22px; vertical-align:middle; white-space:nowrap; width:142px">id</td>
			<td style="background-color:yellow; border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:1px solid black; vertical-align:middle; white-space:nowrap; width:523px">����</td>
		</tr>
		<tr>
			<td style="border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:22px; vertical-align:middle; white-space:nowrap">boardView</td>
			<td style="border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:middle; white-space:nowrap">�Խ��� �󼼺���</td>
		</tr>
		<tr>
			<td style="border-bottom:1px solid black; border-left:1px solid black; border-right:1px solid black; border-top:none; height:22px; vertical-align:middle; white-space:nowrap">boardinsert</td>
			<td style="border-bottom:1px solid black; border-left:none; border-right:1px solid black; border-top:none; vertical-align:middle; white-space:nowrap">�Խñ� �ۼ�</td>
		</tr>
	</tbody>
</table>
',2,to_timestamp('22/02/24 15:47:23.000000000','RR/MM/DD HH24:MI:SSXFF'),to_date('22/02/25','RR/MM/DD'),186,null,'102',0,to_date('22/02/09','RR/MM/DD'),0);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (231,'5-2','5-2','5-2',6,to_timestamp('22/02/25 15:22:54.000000000','RR/MM/DD HH24:MI:SSXFF'),null,227,1,'0',0,null,227);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (232,'5-1-1','5-1-1','5-1-1',0,to_timestamp('22/02/25 15:23:01.000000000','RR/MM/DD HH24:MI:SSXFF'),null,227,2,'0',0,null,230);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (233,'5-2-1','5-2-1','5-2-1',0,to_timestamp('22/02/25 15:23:07.000000000','RR/MM/DD HH24:MI:SSXFF'),null,227,2,'0',0,null,231);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (223,'d-1-2','d-1-2','d-1-2',6,to_timestamp('22/02/25 10:59:24.000000000','RR/MM/DD HH24:MI:SSXFF'),null,219,2,'0',0,null,221);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (224,'d-1-1-1','d-1-1-1','d-1-1-1',2,to_timestamp('22/02/25 10:59:34.000000000','RR/MM/DD HH24:MI:SSXFF'),null,219,3,'0',0,null,222);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (226,'1','1','1',0,to_timestamp('22/02/25 11:03:11.000000000','RR/MM/DD HH24:MI:SSXFF'),null,226,null,'200',0,null,0);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (227,'5','5','5',14,to_timestamp('22/02/25 11:03:15.000000000','RR/MM/DD HH24:MI:SSXFF'),null,227,null,'0',0,null,0);
Insert into ARIMOATESTDB.BOARD_JH (BBSNO,WRITER,TITLE,CONTENT,VIEWCNT,REGDATE,ENDDATE,BBSGROUP,BBSDENT,CATECODE,NOTICE,STARTDATE,BOARD_PARENT) values (248,'11','11','dd<img alt="" src="/web/resources/ckUpload/4298f9fb-9037-40c0-8a10-250b70e44262_PMS_�α���.jpg" style="height:100px; width:100px" />',12,to_timestamp('22/03/02 11:04:33.000000000','RR/MM/DD HH24:MI:SSXFF'),to_date('22/03/03','RR/MM/DD'),248,null,'0',0,to_date('22/03/01','RR/MM/DD'),0);
--------------------------------------------------------
--  DDL for Index SYS_C0023182
--------------------------------------------------------

  CREATE UNIQUE INDEX "ARIMOATESTDB"."SYS_C0023182" ON "ARIMOATESTDB"."BOARD_JH" ("BBSNO") 
  PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Constraints for Table BOARD_JH
--------------------------------------------------------

  ALTER TABLE "ARIMOATESTDB"."BOARD_JH" MODIFY ("NOTICE" NOT NULL ENABLE);
  ALTER TABLE "ARIMOATESTDB"."BOARD_JH" ADD PRIMARY KEY ("BBSNO")
  USING INDEX PCTFREE 10 INITRANS 2 MAXTRANS 255 COMPUTE STATISTICS 
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS"  ENABLE;
  ALTER TABLE "ARIMOATESTDB"."BOARD_JH" MODIFY ("CONTENT" NOT NULL ENABLE);
  ALTER TABLE "ARIMOATESTDB"."BOARD_JH" MODIFY ("TITLE" NOT NULL ENABLE);
  ALTER TABLE "ARIMOATESTDB"."BOARD_JH" MODIFY ("WRITER" NOT NULL ENABLE);
  ALTER TABLE "ARIMOATESTDB"."BOARD_JH" MODIFY ("BBSNO" NOT NULL ENABLE);
