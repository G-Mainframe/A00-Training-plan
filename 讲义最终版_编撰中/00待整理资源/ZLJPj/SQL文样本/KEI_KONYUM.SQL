CREATE TABLE KEI_KONYUM
(
    ディーラーコード               CHAR(5) NOT NULL,
    事業所コード                   CHAR(4) NOT NULL,
    購入先コード＿センター         CHAR(8) NOT NULL,
    購入先名                       VARCHAR2(60) NOT NULL,
    支払先コード                   CHAR(4) NOT NULL,
    購入先郵便番号                 CHAR(7) NOT NULL,
    購入先住所                     VARCHAR2(100) NOT NULL,
    購入先担当者                   VARCHAR2(20) NOT NULL,
    電話番号                       VARCHAR2(15) NOT NULL,
    ＦＡＸ番号                     VARCHAR2(15) NOT NULL,
    支払繰延月数                   NUMBER(4,2) NOT NULL,
    支払条件文言                   VARCHAR2(40) NOT NULL,
    コメント                       VARCHAR2(100) NOT NULL,
    購入先名カナ                   VARCHAR2(30) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT SYS_C0025409 PRIMARY KEY (ディーラーコード) USING INDEX
)
/
