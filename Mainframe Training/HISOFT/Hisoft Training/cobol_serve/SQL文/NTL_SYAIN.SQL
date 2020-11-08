CREATE TABLE NTL_SYAIN
(
    レコード種別                   CHAR(1) NOT NULL,
    リース会社ＩＤ                 CHAR(6) NOT NULL,
    社員ＩＤ                       CHAR(8) NOT NULL,
    支店名称                       CHAR(20),
    部名称                         CHAR(24),
    課名称                         CHAR(24),
    名前                           CHAR(34),
    メールアドレス                 CHAR(50),
    電話番号                       CHAR(15),
    作成ＩＤ                       CHAR(10),
    作成日                         CHAR(10),
    更新ＩＤ                       CHAR(10),
    更新日                         CHAR(10),
    CONSTRAINT SYS_C0027515 PRIMARY KEY (レコード種別, リース会社ＩＤ, 社員ＩＤ) USING INDEX
)
/
