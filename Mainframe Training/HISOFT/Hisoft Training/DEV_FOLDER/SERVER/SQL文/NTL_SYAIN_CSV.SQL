CREATE TABLE NTL_SYAIN_CSV
(
    レコード種別                   VARCHAR2(3) NOT NULL,
    リース会社ＩＤ                 VARCHAR2(8) NOT NULL,
    社員ＩＤ                       VARCHAR2(10) NOT NULL,
    支店名称                       VARCHAR2(22),
    部名称                         VARCHAR2(26),
    課名称                         VARCHAR2(26),
    名前                           VARCHAR2(36),
    メールアドレス                 VARCHAR2(52),
    電話番号                       VARCHAR2(17),
    作成ＩＤ                       VARCHAR2(12),
    作成日                         VARCHAR2(12),
    更新ＩＤ                       VARCHAR2(12),
    更新日                         VARCHAR2(12),
    CONSTRAINT SYS_C0027519 PRIMARY KEY (レコード種別, リース会社ＩＤ, 社員ＩＤ) USING INDEX
)
/
