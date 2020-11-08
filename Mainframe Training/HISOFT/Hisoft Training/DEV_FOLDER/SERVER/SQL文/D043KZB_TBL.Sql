DROP   TABLE  D043KZB_TBL   ;
CREATE TABLE  D043KZB_TBL  (
       勘定科目コード                     CHAR(6)           NOT NULL,
       口座番号                           CHAR(10)          NOT NULL,
       口座名称                           VARCHAR2(40)      NOT NULL,
       口座略称                           VARCHAR2(16)      NOT NULL,
       口座カナ名称                       VARCHAR2(12)      NOT NULL,
       口座タイプ                         CHAR(1)           NOT NULL,
       口座主管部店                       CHAR(4)           NOT NULL,
       幣種                               CHAR(3)           NOT NULL,
       セグメントコード                   CHAR(1)           NOT NULL,
       口座番号利用開始日                 CHAR(8)           NOT NULL,
       口座番号利用終了日                 CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新フラグ                         CHAR(1)           NOT NULL,
CONSTRAINT  PK_D043KZB_TBL  PRIMARY KEY (
       勘定科目コード));
