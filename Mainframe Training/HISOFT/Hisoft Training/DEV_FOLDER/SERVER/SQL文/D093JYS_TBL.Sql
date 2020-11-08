DROP   TABLE  D093JYS_TBL   ;
CREATE TABLE  D093JYS_TBL  (
       譲渡人取引先コード                 CHAR(9)           NOT NULL,
       譲渡人契約先コード                 CHAR(5)           NOT NULL,
       原債務者取引先コード               CHAR(9)           NOT NULL,
       原債務者契約先コード               CHAR(5)           NOT NULL,
       更新年月日                         CHAR(8)           NOT NULL,
       更新時間                           CHAR(8)           NOT NULL,
       更新者                             CHAR(8)           NOT NULL,
       入力担当者コード                   CHAR(8)           NOT NULL,
       登録年月日                         CHAR(8)           NOT NULL,
       登録時間                           CHAR(8)           NOT NULL,
       登録担当者                         CHAR(8)           NOT NULL,
CONSTRAINT  PK_D093JYS_TBL  PRIMARY KEY (
       譲渡人取引先コード,
       譲渡人契約先コード,
       原債務者取引先コード,
       原債務者契約先コード));
