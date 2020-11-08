CREATE TABLE MST_DOSO
(
    動総保険コード                 CHAR(4) NOT NULL,
    適用日_１                      CHAR(8) NOT NULL,
    動総保険料率_１                NUMBER(10,8) NOT NULL,
    適用日_２                      CHAR(8) NOT NULL,
    動総保険料率_２                NUMBER(10,8) NOT NULL,
    適用日_３                      CHAR(8) NOT NULL,
    動総保険料率_３                NUMBER(10,8) NOT NULL,
    適用日_４                      CHAR(8) NOT NULL,
    動総保険料率_４                NUMBER(10,8) NOT NULL,
    適用日_５                      CHAR(8) NOT NULL,
    動総保険料率_５                NUMBER(10,8) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    取引先区分                     CHAR(1) DEFAULT ' ' NOT NULL,
    保険会社名                     VARCHAR2(40) DEFAULT ' ' NOT NULL,
    物件名                         VARCHAR2(60) DEFAULT ' ' NOT NULL,
    CONSTRAINT P_MST_DOSO PRIMARY KEY (動総保険コード) USING INDEX
)
/
