CREATE TABLE NTL_CUSTOMER
(
    レコード種別                   CHAR(1) NOT NULL,
    リース会社ＩＤ                 CHAR(6) NOT NULL,
    顧客ＩＤ                       CHAR(12) NOT NULL,
    顧客名                         CHAR(96),
    住所                           CHAR(120),
    電話番号                       CHAR(15),
    作成ＩＤ                       CHAR(10),
    作成日                         CHAR(10),
    更新ＩＤ                       CHAR(10),
    更新日                         CHAR(10),
    CONSTRAINT SYS_C0027456 PRIMARY KEY (レコード種別, リース会社ＩＤ, 顧客ＩＤ) USING INDEX
)
/
