CREATE TABLE KOK_HSMCHO
(
    顧客コード                     CHAR(6) NOT NULL,
    勘定処理コード                 CHAR(2) NOT NULL,
    グループコード                 CHAR(8) NOT NULL,
    名寄せコード                   CHAR(8) NOT NULL,
    ユーザーコード                 CHAR(8) NOT NULL,
    グループ_前月末未徴収件数      CHAR(6) NOT NULL,
    グループ_前月末未徴収残高      NUMBER(13,0) NOT NULL,
    名寄せ_前月未徴収件数          CHAR(6) NOT NULL,
    名寄せ_前月末徴収残高          NUMBER(13,0) NOT NULL,
    ユーザー_前月末未徴収件数      CHAR(6) NOT NULL,
    ユーザー_前月末未徴収残高      NUMBER(13,0) NOT NULL,
    主管事業所コード               CHAR(4) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025914 PRIMARY KEY (顧客コード, 勘定処理コード, グループコード, 名寄せコード, ユーザーコード) USING INDEX
)
/
