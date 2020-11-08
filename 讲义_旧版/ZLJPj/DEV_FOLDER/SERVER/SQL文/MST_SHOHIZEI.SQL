CREATE TABLE MST_SHOHIZEI
(
    消費税率コード                 CHAR(2) NOT NULL,
    経過措置適用開始日             CHAR(8) NOT NULL,
    経過措置適用終了日             CHAR(8) NOT NULL,
    消費税率_１                    NUMBER(3,1) NOT NULL,
    適用日_１                      CHAR(8) NOT NULL,
    消費税率_２                    NUMBER(3,1) NOT NULL,
    適用日_２                      CHAR(8) NOT NULL,
    消費税率_３                    NUMBER(3,1) NOT NULL,
    適用日_３                      CHAR(8) NOT NULL,
    消費税率_４                    NUMBER(3,1) NOT NULL,
    適用日_４                      CHAR(8) NOT NULL,
    消費税率_５                    NUMBER(3,1) NOT NULL,
    適用日_５                      CHAR(8) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT P_MST_SHOHIZEI PRIMARY KEY (消費税率コード) USING INDEX
)
/
