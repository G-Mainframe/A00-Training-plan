CREATE TABLE NTL_CUSTOMER_CSV
(
    レコード種別                   VARCHAR2(3) NOT NULL,
    リース会社ＩＤ                 VARCHAR2(8) NOT NULL,
    顧客ＩＤ                       VARCHAR2(14) NOT NULL,
    顧客名                         VARCHAR2(98),
    住所                           VARCHAR2(122),
    電話番号                       VARCHAR2(17),
    作成ＩＤ                       VARCHAR2(12),
    作成日                         VARCHAR2(12),
    更新ＩＤ                       VARCHAR2(12),
    更新日                         VARCHAR2(12),
    CONSTRAINT SYS_C0027460 PRIMARY KEY (レコード種別, リース会社ＩＤ, 顧客ＩＤ) USING INDEX
)
/
