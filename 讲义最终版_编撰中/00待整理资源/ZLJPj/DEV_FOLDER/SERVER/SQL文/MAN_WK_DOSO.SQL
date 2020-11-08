CREATE TABLE MAN_WK_DOSO
(
    端末番号                       VARCHAR2(16) NOT NULL,
    処理区分                       CHAR(1) NOT NULL,
    修正区分                       CHAR(1) NOT NULL,
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
    CONSTRAINT P_MAN_WK_DOSO PRIMARY KEY (端末番号, 処理区分, 修正区分, 請求先コード, 対象資産コード) USING INDEX
)
/
