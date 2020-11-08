DROP   TABLE  D088TRC_TBL   ;
CREATE TABLE  D088TRC_TBL  (
       取引先コード                       CHAR(9)           NOT NULL,
       適用開始年月日                     CHAR(8)           NOT NULL,
       与信限度金額                       NUMBER(13,0)      NOT NULL,
       適用期限年月日                     CHAR(8)           NOT NULL,
       無効フラグ                         CHAR(1)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
CONSTRAINT  PK_D088TRC_TBL  PRIMARY KEY (
       取引先コード,
       適用開始年月日));
