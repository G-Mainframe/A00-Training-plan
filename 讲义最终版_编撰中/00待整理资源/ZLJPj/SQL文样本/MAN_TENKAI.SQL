CREATE TABLE MAN_TENKAI
(
    契約番号                       CHAR(9) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    勘定処理コード                 CHAR(2) NOT NULL,
    連番                           NUMBER(3,0) NOT NULL,
    リース料_請求金額              NUMBER(13,0) NOT NULL,
    支払回数                       NUMBER(3,0) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT P_MAN_TENKAI PRIMARY KEY (契約番号, 物件ＮＯ, 勘定処理コード, 連番) USING INDEX
)
/
