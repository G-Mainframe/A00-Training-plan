CREATE TABLE  LTRSYZ  (
       科目コード                         CHAR(3)           NOT NULL,
       取引コード                         CHAR(2)           NOT NULL,
       登録削除                           CHAR(1)           NOT NULL,
       科目タイプ                         CHAR(1)           NOT NULL,
       ダミー００１                       CHAR(3)           NOT NULL,
       口座登録数                         NUMBER(5,0)       NOT NULL,
       借方合計                           NUMBER(15,0)      NOT NULL,
       貸方合計                           NUMBER(15,0)      NOT NULL,
       残価                               NUMBER(15,0)      NOT NULL,
       ダミー００２                       CHAR(28)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRSYZ  PRIMARY KEY (
       科目コード,
       取引コード));
