CREATE TABLE JYO_ASTMST
(
    基準年                         CHAR(4),
    資産番号                       CHAR(9),
    取得日                         CHAR(8),
    取得年度                       CHAR(1),
    取得年月                       CHAR(4),
    資産名                         VARCHAR2(30),
    数量                           NUMBER(4,0),
    資産種類                       CHAR(1),
    資産コード                     CHAR(6),
    耐用年数                       NUMBER(2,0),
    償却率                         NUMBER(5,3),
    取得価額                       NUMBER(13,0),
    納付先                         CHAR(6),
    残存率                         NUMBER(5,3),
    評価額                         NUMBER(13,0),
    帳簿価額                       NUMBER(13,0)
)
/
CREATE UNIQUE INDEX JYO_ASTMST
ON JYO_ASTMST
(資産番号)
/
