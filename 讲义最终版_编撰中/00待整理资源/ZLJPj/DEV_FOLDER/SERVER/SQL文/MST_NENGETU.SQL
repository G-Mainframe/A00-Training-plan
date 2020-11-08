CREATE TABLE MST_NENGETU
(
    処理年月管理ＩＤ               CHAR(8) NOT NULL,
    当日処理日                     CHAR(8) NOT NULL,
    当月月度                       CHAR(8) NOT NULL,
    前月月度                       CHAR(8) NOT NULL,
    翌月月度                       CHAR(8) NOT NULL,
    当月検収分送信締日             CHAR(8) NOT NULL,
    貸付金ファクタリング送信締日   CHAR(8) NOT NULL,
    中途解約送信締日               CHAR(8) NOT NULL,
    成約送信締日                   CHAR(8) NOT NULL,
    満了再リース継続リース送信締日 CHAR(8) NOT NULL,
    ＳＦＣ送信締日_１              CHAR(8) NOT NULL,
    ＳＦＣ送信締日_２              CHAR(8) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT P_MST_NENGETU PRIMARY KEY (処理年月管理ＩＤ) USING INDEX
)
/
