DROP   TABLE  LTRTUUX005   ;
CREATE TABLE  LTRTUUX005  (
       ＫＥＹ１                           CHAR(4)           NOT NULL,
       ダミー１                           CHAR(6)           NOT NULL,
       契約番号区分１                     CHAR(1)           NOT NULL,
       契約番号期                         NUMBER(2,0)       NOT NULL,
       契約番号区分２                     CHAR(1)           NOT NULL,
       契約番号一連番号                   NUMBER(3,0)       NOT NULL,
       契約番号ダミー                     CHAR(2)           NOT NULL,
       前月度世紀                         NUMBER(1,0)       NOT NULL,
       前月度年月日                       CHAR(6)           NOT NULL,
       ダミー２                           CHAR(39)          NOT NULL,
       共通情報                           CHAR(35)          NOT NULL,
CONSTRAINT  PK_LTRTUUX005  PRIMARY KEY (
       ＫＥＹ１,
       ダミー１));
