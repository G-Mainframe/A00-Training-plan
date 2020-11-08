CREATE TABLE KEI_SETTI_MST
(
    顧客コード                     CHAR(6) NOT NULL,
    設置場所コード                 CHAR(3) NOT NULL,
    設置場所名_漢字                VARCHAR2(40) NOT NULL,
    設置場所名_カナ                VARCHAR2(20) NOT NULL,
    設置場所郵便番号               CHAR(7) NOT NULL,
    納付先コード                   CHAR(6) NOT NULL,
    設置場所住所                   VARCHAR2(100) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025710 PRIMARY KEY (顧客コード, 設置場所コード) USING INDEX
)
/
