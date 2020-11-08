CREATE TABLE KTK_WK_TENKAI
(
    契約番号                       CHAR(9) NOT NULL,
    データ区分                     CHAR(1) NOT NULL,
    展開番号                       NUMBER(3,0) NOT NULL,
    金額                           NUMBER(13,0) DEFAULT 0 NOT NULL,
    回数                           NUMBER(3,0) DEFAULT 0 NOT NULL,
    利率                           NUMBER(10,8) DEFAULT 0 NOT NULL,
    社内金利                       NUMBER(10,8) DEFAULT 0 NOT NULL,
    回収方式＿元本                 CHAR(1) DEFAULT ' ' NOT NULL,
    回収方式＿利息                 CHAR(1) DEFAULT ' ' NOT NULL,
    登録日                         CHAR(8) DEFAULT ' ' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT ' ' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT ' ' NOT NULL,
    更新日                         CHAR(8) DEFAULT ' ' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT ' ' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT ' ' NOT NULL,
    CONSTRAINT PK_KTK_WK_TENKAI PRIMARY KEY (契約番号, データ区分, 展開番号) USING INDEX
)
/
