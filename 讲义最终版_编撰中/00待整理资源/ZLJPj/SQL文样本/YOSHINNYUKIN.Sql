DROP   TABLE  YOSHINNYUKIN   ;
CREATE TABLE  YOSHINNYUKIN  (
       管理与信先コード                   CHAR(8)           NOT NULL,
       管理与信区分                       CHAR(1)           NOT NULL,
       自動与信区分                       CHAR(1)           NOT NULL,
       事故日                             CHAR(8)           NOT NULL,
       契約ＮＯ                           CHAR(9)           NOT NULL,
       勘定コード                         CHAR(2)           NOT NULL,
       入金予定日                         CHAR(8)           NOT NULL,
       請求内コード                       CHAR(3)           NOT NULL,
       消込通番                           CHAR(9)           NOT NULL,
       請求金額                           NUMBER(13,0)      NOT NULL,
CONSTRAINT  PK_YOSHINNYUKIN  PRIMARY KEY (
       管理与信先コード,
       管理与信区分,
       自動与信区分,
       事故日,
       契約ＮＯ,
       勘定コード,
       入金予定日,
       請求内コード));
