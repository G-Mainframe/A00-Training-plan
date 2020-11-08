DROP   TABLE  D186BTM_TBL   ;
CREATE TABLE  D186BTM_TBL  (
       支社コード                         CHAR(6)           NOT NULL,
       支社名                             VARCHAR2(40)      NOT NULL,
       支社名カナ                         VARCHAR2(40)      NOT NULL,
       店質コード                         CHAR(2)           NOT NULL,
       店質                               VARCHAR2(20)      NOT NULL,
       エリアコード                       CHAR(2)           NOT NULL,
       エリア                             VARCHAR2(20)      NOT NULL,
CONSTRAINT  PK_D186BTM_TBL  PRIMARY KEY (
       支社コード));
