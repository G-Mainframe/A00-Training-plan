CREATE TABLE MST_NOFU
(
    納付先コード                   CHAR(6) NOT NULL,
    納付先住所_１                  VARCHAR2(10) NOT NULL,
    納付先住所_２                  VARCHAR2(40) NOT NULL,
    納付先住所_３                  VARCHAR2(40) NOT NULL,
    納付先住所_４                  VARCHAR2(10) NOT NULL,
    納付先住所_５                  VARCHAR2(40) NOT NULL,
    納付先住所_６                  VARCHAR2(40) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT P_MST_NOFU PRIMARY KEY (納付先コード) USING INDEX
)
/
