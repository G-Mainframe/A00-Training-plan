CREATE TABLE KEI_BUKKEN_MST
(
    顧客コード                     CHAR(6) NOT NULL,
    物件コード                     CHAR(3) NOT NULL,
    物件名_漢字                    VARCHAR2(40) NOT NULL,
    物件名_カナ                    VARCHAR2(20) NOT NULL,
    仕様製造番号                   VARCHAR2(20) NOT NULL,
    製造業者                       VARCHAR2(60) NOT NULL,
    動総付保区分                   CHAR(1) NOT NULL,
    動総保険コード                 CHAR(4) NOT NULL,
    動総保険料率                   NUMBER(5,3) NOT NULL,
    資産コード                     CHAR(7) NOT NULL,
    耐用年数                       NUMBER(2,0) NOT NULL,
    信用保険コード                 CHAR(6) NOT NULL,
    型式番号                       VARCHAR2(15) NOT NULL,
    税区分                         CHAR(1) NOT NULL,
    税負担コード                   CHAR(1) NOT NULL,
    固定資産税率                   NUMBER(4,2) NOT NULL,
    指定電子計算機                 VARCHAR2(40) NOT NULL,
    使用権設定者                   VARCHAR2(60) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025024 PRIMARY KEY (顧客コード, 物件コード) USING INDEX
)
/
