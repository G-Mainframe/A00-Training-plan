DROP   TABLE  LTRMEI３２０   ;
CREATE TABLE  LTRMEI３２０  (
       レコード種別                       CHAR(3)           NOT NULL,
       当月翌月区分                       CHAR(1)           NOT NULL,
       管販費コード                       CHAR(3)           NOT NULL,
       ダミー００１                       CHAR(8)           NOT NULL,
       登録削除                           CHAR(1)           NOT NULL,
       ダミー００２                       CHAR(4)           NOT NULL,
       管販費名称                         VARCHAR2(16)      NOT NULL,
       集計コード                         CHAR(3)           NOT NULL,
       管販費タイプ                       CHAR(1)           NOT NULL,
       適用日＿世紀                       NUMBER(1,0)       NOT NULL,
       適用日＿年月日                     NUMBER(6,0)       NOT NULL,
       ダミー００３                       CHAR(118)         NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRMEI３２０  PRIMARY KEY (
       レコード種別,
       当月翌月区分,
       管販費コード,
       ダミー));
