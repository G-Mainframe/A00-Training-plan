CREATE TABLE MST_SINYO_LEASE
(
    リース_割賦区分                CHAR(1) NOT NULL,
    保険期間月数                   CHAR(3) NOT NULL,
    適用日                         CHAR(8) NOT NULL,
    信用保険料率                   NUMBER(10,8) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT P_MST_SINYO_LEASE PRIMARY KEY (リース_割賦区分, 保険期間月数) USING INDEX
)
/
