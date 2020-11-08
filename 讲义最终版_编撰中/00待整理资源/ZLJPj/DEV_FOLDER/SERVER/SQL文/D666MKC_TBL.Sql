DROP   TABLE  D666MKC_TBL   ;
CREATE TABLE  D666MKC_TBL  (
       年月                               CHAR(6)           NOT NULL,
       仮受金調整額                       NUMBER(13,0)      NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時刻                           CHAR(8)           NOT NULL,
       登録者                             CHAR(8)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時刻                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
CONSTRAINT  PK_D666MKC_TBL  PRIMARY KEY (
       年月));
