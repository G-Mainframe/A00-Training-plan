CREATE TABLE MST_SISAN
(
    資産コード                     CHAR(7) NOT NULL,
    資産名                         VARCHAR2(30) DEFAULT ' ' NOT NULL,
    資産名＿略称                   VARCHAR2(10) DEFAULT ' ' NOT NULL,
    耐用年数＿年数                 NUMBER(3,0) NOT NULL,
    適用日＿１                     CHAR(8) DEFAULT ' ' NOT NULL,
    法定減価償却率＿１             NUMBER(10,8) NOT NULL,
    適用日＿２                     CHAR(8) DEFAULT ' ' NOT NULL,
    法定減価償却率＿２             NUMBER(10,8) NOT NULL,
    登録日                         CHAR(8) DEFAULT ' ' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT ' ' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT ' ' NOT NULL,
    更新日                         CHAR(8) DEFAULT ' ' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT ' ' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT ' ' NOT NULL,
    CONSTRAINT P_MST_SISAN PRIMARY KEY (資産コード) USING INDEX
)
/
