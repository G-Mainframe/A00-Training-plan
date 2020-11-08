CREATE TABLE KEI_IKEN
(
    契約番号                       CHAR(9) NOT NULL,
    営業部意見                     VARCHAR2(340) NOT NULL,
    事務連絡事項                   VARCHAR2(200) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025114 PRIMARY KEY (契約番号) USING INDEX
)
/
