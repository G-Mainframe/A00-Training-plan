DROP   TABLE  LTRMEI０２０   ;
CREATE TABLE  LTRMEI０２０  (
       レコード種別                       CHAR(3)           NOT NULL,
       当月翌月区分                       CHAR(1)           NOT NULL,
       契約形態コード                     CHAR(2)           NOT NULL,
       形態補助                           CHAR(1)           NOT NULL,
       ダミー００１                       CHAR(8)           NOT NULL,
       契約形態名                         VARCHAR2(20)      NOT NULL,
       契約形態名略称                     VARCHAR2(10)      NOT NULL,
       契約形態名カナ                     CHAR(25)          NOT NULL,
       契約形態名カナ略称                 CHAR(12)          NOT NULL,
       ダミー００２                       CHAR(83)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRMEI０２０  PRIMARY KEY (
       レコード種別,
       当月翌月区分,
       契約形態コード,
       形態補助,
       ダミー));
