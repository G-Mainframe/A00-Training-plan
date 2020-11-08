CREATE TABLE  LTRHNP  (
       入金通番                           NUMBER(9,0)       NOT NULL,
       入金区分                           NUMBER(1,0)       NOT NULL,
       入金先コード                       CHAR(8)           NOT NULL,
       入金額                             NUMBER(13,0)      NOT NULL,
       入金先名称                         CHAR(48)          NOT NULL,
       入金日                             CHAR(7)           NOT NULL,
       銀行コード                         NUMBER(7,0)       NOT NULL,
       口座番号                           NUMBER(7,0)       NOT NULL,
       契約番号                           CHAR(9)           NOT NULL,
       消込残高                           NUMBER(13,0)      NOT NULL,
       銀行短縮コード                     NUMBER(2,0)       NOT NULL,
       入金仕訳短縮コード                 NUMBER(2,0)       NOT NULL,
       処理区分                           NUMBER(1,0)       NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRHNP  PRIMARY KEY (
       入金通番));
