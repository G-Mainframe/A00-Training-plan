CREATE TABLE SEC_WK_ITIRAN
(
    連番                           NUMBER(5,0) NOT NULL,
    事業所コード                   CHAR(4) NOT NULL,
    事業所名称                     CHAR(20) NOT NULL,
    担当者コード                   CHAR(4) NOT NULL,
    担当者名称                     CHAR(20) NOT NULL,
    兼務事業所コード               CHAR(4) NOT NULL,
    兼務事業所名称                 CHAR(20) NOT NULL,
    ステータス                     CHAR(2) NOT NULL,
    有効期限                       CHAR(10) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
    CONSTRAINT P_ITIRAN PRIMARY KEY (端末番号, 連番) USING INDEX
)
/
