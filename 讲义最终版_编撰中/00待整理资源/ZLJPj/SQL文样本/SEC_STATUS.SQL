CREATE TABLE SEC_STATUS
(
    ステータスＮＯ                 CHAR(2) NOT NULL,
    ステータス名称                 VARCHAR2(20) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT P_SEC_STATUS PRIMARY KEY (ステータスＮＯ) USING INDEX
)
/
