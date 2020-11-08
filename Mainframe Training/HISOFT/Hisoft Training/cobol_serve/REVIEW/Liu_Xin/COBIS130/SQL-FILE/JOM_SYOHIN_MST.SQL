DROP TABLE JOM_SYOHIN_MST;
CREATE TABLE JOM_SYOHIN_MST
(
    ジョモ商品コード               CHAR(4) NOT NULL,
    ジョモ商品分類名               VARCHAR2(30) NOT NULL,
    物件名＿漢字                   VARCHAR2(40) NOT NULL,
    物件名                         VARCHAR2(20) NOT NULL,
    機種名                         VARCHAR2(20) NOT NULL,
    資産コード                     CHAR(7) NOT NULL,
    耐用年数                       CHAR(2) NOT NULL,
    税区分                         CHAR(1) NOT NULL,
    固定資産税率                   NUMBER(3,1) NOT NULL,
    保険料率                       NUMBER(5,3) NOT NULL,
    動総保険コード                 CHAR(4) NOT NULL,
    信用保険コード＿リース         CHAR(6) NOT NULL,
    信用保険コード＿割賦           CHAR(6) NOT NULL,
    CONSTRAINT PK_JOM_SYOHIN_MST PRIMARY KEY (ジョモ商品コード) USING INDEX
)
/
