DROP   TABLE  LTRN   ;
CREATE TABLE  LTRN  (
       納付先コード                       CHAR(6)           NOT NULL,
       都道府県名漢字                     VARCHAR2(8)       NOT NULL,
       市区名・郡町村名漢字               VARCHAR2(30)      NOT NULL,
       市区名・郡町村名カナ               CHAR(30)          NOT NULL,
       ダミー１                           CHAR(1)           NOT NULL,
       郵便親                             CHAR(3)           NOT NULL,
       郵便子                             CHAR(4)           NOT NULL,
       住所名漢字                         VARCHAR2(60)      NOT NULL,
       住所名カナ                         CHAR(60)          NOT NULL,
       納付先名漢字                       VARCHAR2(20)      NOT NULL,
       納付先名カナ                       CHAR(20)          NOT NULL,
       投資金支払区分                     CHAR(1)           NOT NULL,
       ○○方法                           CHAR(1)           NOT NULL,
       ○○資産税率                       NUMBER(5,3)       NOT NULL,
       納付銀行コード                     CHAR(4)           NOT NULL,
       ダミー２                           CHAR(13)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRN  PRIMARY KEY (
       納付先コード));
