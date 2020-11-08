CREATE TABLE NTL_SUPPLIER
(
    レコード種別                   CHAR(1) NOT NULL,
    リース会社ＩＤ                 CHAR(6) NOT NULL,
    ＳＰ顧客ＩＤ                   CHAR(12) NOT NULL,
    サプライヤー名                 CHAR(64),
    作成ＩＤ                       CHAR(10),
    作成日                         CHAR(10),
    更新ＩＤ                       CHAR(10),
    更新日                         CHAR(10),
    CONSTRAINT SYS_C0027511 PRIMARY KEY (レコード種別, リース会社ＩＤ, ＳＰ顧客ＩＤ) USING INDEX
)
/
