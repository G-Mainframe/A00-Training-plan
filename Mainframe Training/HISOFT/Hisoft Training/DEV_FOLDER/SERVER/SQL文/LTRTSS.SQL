CREATE TABLE  LTRTSS  (
       債務契約ＮＯ                       CHAR(10)          NOT NULL,
       再リースコード                     NUMBER(1,0)       NOT NULL,
       契約明細ＮＯ                       NUMBER(2,0)       NOT NULL,
       承認残価承認区分                   NUMBER(1,0)       NOT NULL,
       処理時刻時分秒                     NUMBER(6,0)       NOT NULL,
       処理区分                           NUMBER(1,0)       NOT NULL,
       債務取引先コード                   CHAR(8)           NOT NULL,
       当日支払金額                       NUMBER(13,0)      NOT NULL,
       総支払金額                         NUMBER(13,0)      NOT NULL,
       登録件数                           NUMBER(5,0)       NOT NULL,
       ダミー００１                       CHAR(17)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRTSS  PRIMARY KEY (
       債務契約ＮＯ,
       再リースコード,
       契約明細ＮＯ));
