CREATE TABLE ANK_KANNI
(
    案件番号                       CHAR(10) NOT NULL,
    見積枝番                       CHAR(2) NOT NULL,
    ユーザーコード                 CHAR(8) NOT NULL,
    顧客コード                     CHAR(6) NOT NULL,
    取引先名                       VARCHAR2(60) NOT NULL,
    見積日                         CHAR(8) NOT NULL,
    取引形態コード                 CHAR(2) NOT NULL,
    購入金額合計                   NUMBER(13,0) NOT NULL,
    契約金額                       NUMBER(13,0) NOT NULL,
    リース期間                     NUMBER(3,0) NOT NULL,
    実質利回り                     NUMBER(10,8) NOT NULL,
    粗利益                         NUMBER(13,0) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0021920 PRIMARY KEY (案件番号, 見積枝番) USING INDEX
)
/
