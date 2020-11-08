CREATE TABLE  LTRKET  (
       契約ＮＯ                           CHAR(9)           NOT NULL,
       請求コード                         NUMBER(2,0)       NOT NULL,
       ＳＥＱ番号                         NUMBER(3,0)       NOT NULL,
       展開リース料                       NUMBER(13,0)      NOT NULL,
       回数                               NUMBER(3,0)       NOT NULL,
       ダミー００１                       CHAR(12)          NOT NULL,
CONSTRAINT  PK_LTRKET  PRIMARY KEY (
       契約ＮＯ,
       請求コード,
       ＳＥＱ番号));
