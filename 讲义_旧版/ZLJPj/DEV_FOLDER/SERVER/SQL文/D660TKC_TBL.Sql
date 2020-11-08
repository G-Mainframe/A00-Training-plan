DROP   TABLE  D660TKC_TBL   ;
CREATE TABLE  D660TKC_TBL  (
       印刷指示画面ＩＤ                   CHAR(8)           NOT NULL,
       取引先コード                       CHAR(9)           NOT NULL,
       帳票ＩＤ                           CHAR(8)           NOT NULL,
       表示順                             NUMBER(3,0)       NOT NULL,
       出力形態                           CHAR(1)           NOT NULL,
       徴求管理有無                       CHAR(1)           NOT NULL,
       徴求管理種類                       CHAR(1)           NOT NULL,
       書類種類                           CHAR(3)           NOT NULL,
       書類連番＿徴求書類＿               NUMBER(3,0)       NOT NULL,
       出力状況                           CHAR(1)           NOT NULL,
       最終出力年月日                     CHAR(8)           NOT NULL,
       最終出力時間                       CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D660TKC_TBL  PRIMARY KEY (
       印刷指示画面ＩＤ,
       取引先コード,
       帳票ＩＤ));
