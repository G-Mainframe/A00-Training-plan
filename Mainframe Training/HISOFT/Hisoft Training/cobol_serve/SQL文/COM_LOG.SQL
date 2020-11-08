CREATE TABLE COM_LOG
(
    ＫＥＹ                         CHAR(6) NOT NULL,
    エラー有無フラグ               CHAR(1) NOT NULL,
    プロジェクトコード             CHAR(3) NOT NULL,
    プロジェクト名                 VARCHAR2(30) NOT NULL,
    プログラムＩＤ                 VARCHAR2(30) NOT NULL,
    プログラム名                   VARCHAR2(30) NOT NULL,
    メッセージ                     VARCHAR2(200) NOT NULL,
    業務日付                       CHAR(8) NOT NULL,
    マシンデート                   CHAR(8) NOT NULL,
    マシンタイム                   CHAR(6) NOT NULL,
    CONSTRAINT SYS_C0029534 PRIMARY KEY (ＫＥＹ) USING INDEX
)
/
