CREATE TABLE  LTRRYU  (
       契約ＮＯ                           CHAR(9)           NOT NULL,
       銀行コード                         CHAR(4)           NOT NULL,
       支店コード                         CHAR(3)           NOT NULL,
       名寄せコード                       CHAR(8)           NOT NULL,
       ユーザーコード                     CHAR(8)           NOT NULL,
       請求先コード                       CHAR(8)           NOT NULL,
       ダミー００１                       CHAR(25)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRRYU  PRIMARY KEY (
       契約ＮＯ));
