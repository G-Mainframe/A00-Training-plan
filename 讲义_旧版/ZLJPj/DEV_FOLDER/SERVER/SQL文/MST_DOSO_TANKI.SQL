CREATE TABLE MST_DOSO_TANKI
(
    既経過期間_月数                CHAR(2) NOT NULL,
    既経過期間_日数                CHAR(3) NOT NULL,
    動総保険短期料率_１            NUMBER(10,8) NOT NULL,
    適用日_１                      CHAR(8) NOT NULL,
    動総保険短期料率_２            NUMBER(10,8) NOT NULL,
    適用日_２                      CHAR(8) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT P_MST_DOSO_TANKI PRIMARY KEY (既経過期間_月数, 既経過期間_日数) USING INDEX
)
/
