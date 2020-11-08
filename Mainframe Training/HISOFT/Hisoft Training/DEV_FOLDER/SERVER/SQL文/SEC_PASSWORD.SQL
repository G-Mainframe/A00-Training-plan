CREATE TABLE SEC_PASSWORD
(
    担当者コード                   CHAR(4) NOT NULL,
    ローカルパスワード＿新          CHAR(10) NOT NULL,
    センターパスワード             CHAR(5) NOT NULL,
    ステータスＮＯ                 CHAR(2) NOT NULL,
    有効期限                       CHAR(8) NOT NULL,
    更新ＦＬＧ                     CHAR(1) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT P_SEC_PASSWORD PRIMARY KEY (担当者コード) USING INDEX
)
/
