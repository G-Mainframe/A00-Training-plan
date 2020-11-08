CREATE TABLE KEI_BUNKATU_KIHON
(
    契約番号                       CHAR(9) NOT NULL,
    新物件ＮＯ                     CHAR(3) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    物件名＿漢字                   VARCHAR2(40) NOT NULL,
    物件名＿カナ                   VARCHAR2(20) NOT NULL,
    仕様製造番号                   VARCHAR2(20) NOT NULL,
    数量                           NUMBER(4,0) NOT NULL,
    購入金額                       NUMBER(13,0) NOT NULL,
    納付先コード                   CHAR(6) NOT NULL,
    設置場所郵便番号               CHAR(7) NOT NULL,
    設置場所住所                   VARCHAR2(100) NOT NULL,
    設置場所名＿漢字               VARCHAR2(40) NOT NULL,
    設置場所名＿カナ               VARCHAR2(20) NOT NULL,
    個別リース料                   NUMBER(13,0) NOT NULL,
    ユーザーリファレンス１         CHAR(12) NOT NULL,
    ユーザーリファレンス２         CHAR(12) NOT NULL,
    ディーラーコード               CHAR(5) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025059 PRIMARY KEY (契約番号, 新物件ＮＯ, 物件ＮＯ) USING INDEX
)
/
