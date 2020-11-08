CREATE TABLE MST_GYOSHU
(
    業種コード                     CHAR(2) NOT NULL,
    業種名                         VARCHAR2(30) NOT NULL,
    業種名_略称                    VARCHAR2(10) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    主要業種内容                   VARCHAR2(2000),
    CONSTRAINT P_MST_GYOSHU PRIMARY KEY (業種コード) USING INDEX
)
/
