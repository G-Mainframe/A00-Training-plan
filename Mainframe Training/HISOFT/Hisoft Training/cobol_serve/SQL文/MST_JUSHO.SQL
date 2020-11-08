CREATE TABLE MST_JUSHO
(
    郵便番号                       CHAR(7) NOT NULL,
    住所_１                        VARCHAR2(10) NOT NULL,
    住所_２                        VARCHAR2(40) NOT NULL,
    住所_３                        VARCHAR2(40) NOT NULL,
    住所_４                        VARCHAR2(10) NOT NULL,
    住所_５                        VARCHAR2(40) NOT NULL,
    住所_６                        VARCHAR2(40) NOT NULL,
    納付先コード                   CHAR(6) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    検索キー                       CHAR(2) NOT NULL,
    CONSTRAINT P_MST_JUSHO PRIMARY KEY (郵便番号) USING INDEX
)
/
CREATE INDEX I_NOFU_CD
ON MST_JUSHO
(納付先コード)
/
CREATE INDEX I_NOF_KEN
ON MST_JUSHO
(検索キー)
/
