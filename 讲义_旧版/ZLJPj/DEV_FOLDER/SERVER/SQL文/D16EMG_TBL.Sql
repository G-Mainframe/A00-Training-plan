DROP   TABLE  D16EMG_TBL   ;
CREATE TABLE  D16EMG_TBL  (
       エラーコード                       CHAR(6)           NOT NULL,
       エラータイトル                     VARCHAR2(20)      NOT NULL,
       エラーメッセージ                   VARCHAR2(60)      NOT NULL,
       エラーアイコン                     NUMBER(1,0)       NOT NULL,
       エラーボタン                       NUMBER(1,0)       NOT NULL,
       エラーデフォルト                   NUMBER(1,0)       NOT NULL,
       更新日時                           CHAR(16)          NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
CONSTRAINT  PK_D16EMG_TBL  PRIMARY KEY (
       エラーコード));
