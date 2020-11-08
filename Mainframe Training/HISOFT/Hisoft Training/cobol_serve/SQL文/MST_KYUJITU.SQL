CREATE TABLE MST_KYUJITU
(
    年                             CHAR(4) NOT NULL,
    月                             CHAR(2) NOT NULL,
    月末日                         CHAR(2) NOT NULL,
    日                             CHAR(2) NOT NULL,
    リース営業日区分               CHAR(1) NOT NULL,
    銀行営業日区分                 CHAR(1) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT P_MST_KYUJITU PRIMARY KEY (年, 月, 日) USING INDEX
)
/
