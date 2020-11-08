CREATE TABLE MST_SINYO_KIKAI
(
    リース_割賦区分                CHAR(1) NOT NULL,
    信用保険コード_機械区分        CHAR(2) NOT NULL,
    信用保険機械類名               VARCHAR2(70) NOT NULL,
    金額ファイル下限               NUMBER(13,0) NOT NULL,
    金額ファイル上限               NUMBER(13,0) NOT NULL,
    最長期間                       CHAR(2) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT P_MST_SINYO_KIKAI PRIMARY KEY (リース_割賦区分, 信用保険コード_機械区分) USING INDEX
)
/
