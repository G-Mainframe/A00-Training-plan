DROP TABLE APR_SYOHIN_MST;
CREATE TABLE APR_SYOHIN_MST
(
    アポロ商品コード               CHAR(4) NOT NULL,
    アポロ商品分類名               VARCHAR2(20) NOT NULL,
    物件名＿漢字                   VARCHAR2(40) NOT NULL,
    物件名                         VARCHAR2(20) NOT NULL,
    機種名                         VARCHAR2(20) NOT NULL,
    資産コード                     CHAR(7) NOT NULL,
    耐用年数                       CHAR(2) NOT NULL,
    保険料率                       NUMBER(5,3) NOT NULL,
    動総保険コード                 CHAR(4) NOT NULL,
    信用保険コード＿リース         CHAR(6) NOT NULL,
    信用保険コード＿割賦           CHAR(6) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT PK_APR_SYOHIN_MST PRIMARY KEY (アポロ商品コード) USING INDEX
)
/
