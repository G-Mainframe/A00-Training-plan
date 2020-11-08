CREATE TABLE  CPFKAIRC  (
       契約ＮＯ                           CHAR(9)           NOT NULL,
       解約日                             CHAR(7)           NOT NULL,
       解約処理コード                     CHAR(1)           NOT NULL,
       物件ＮＯ                           NUMBER(3,0)       NOT NULL,
       解約区分                           CHAR(1)           NOT NULL,
       基本部                             CHAR(200)         NOT NULL,
       明細部                             CHAR(500)         NOT NULL,
       保険部                             CHAR(200)         NOT NULL,
       償却部                             CHAR(200)         NOT NULL,
       固定資産税部                       CHAR(300)         NOT NULL,
       ダミー００１                       CHAR(79)          NOT NULL,
CONSTRAINT  PK_CPFKAIRC  PRIMARY KEY (
       契約ＮＯ,
       解約日,
       解約処理コード,
       物件ＮＯ,
       解約区分));
