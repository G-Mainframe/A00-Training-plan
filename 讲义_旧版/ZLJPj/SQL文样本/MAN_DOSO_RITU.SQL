CREATE TABLE MAN_DOSO_RITU
(
    請求先コード                   CHAR(8) NOT NULL,
    対象資産コード                 CHAR(7) NOT NULL,
    付保率１                       NUMBER(2,0) NOT NULL,
    付保率２                       NUMBER(2,0) NOT NULL,
    付保率３                       NUMBER(2,0) NOT NULL,
    付保率４                       NUMBER(2,0) NOT NULL,
    付保率５                       NUMBER(2,0) NOT NULL,
    付保率６                       NUMBER(2,0) NOT NULL,
    付保率７                       NUMBER(2,0) NOT NULL,
    付保率８                       NUMBER(2,0) NOT NULL,
    付保率９                       NUMBER(2,0) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT P_MAN_DOSO_RITU PRIMARY KEY (請求先コード, 対象資産コード) USING INDEX
)
/
