CREATE TABLE NTL_MANTSUS
(
    レコード種別                   CHAR(1) NOT NULL,
    リース会社ＩＤ                 CHAR(6) NOT NULL,
    契約ＩＤ                       CHAR(22) NOT NULL,
    資産番号キー                   CHAR(26) NOT NULL,
    送付先コード                   CHAR(20),
    資産番号                       CHAR(6),
    物件個数                       NUMBER(6,0),
    物件個数単位                   CHAR(4),
    物件名                         CHAR(80),
    物件設置場所名                 CHAR(90),
    ＳＰ顧客ＩＤ                   CHAR(12),
    ソート専用項目                 CHAR(30),
    備忘情報                       CHAR(60),
    作成ＩＤ                       CHAR(10),
    作成日                         CHAR(10),
    更新ＩＤ                       CHAR(10),
    更新日                         CHAR(10),
    CONSTRAINT SYS_C0027486 PRIMARY KEY (レコード種別, リース会社ＩＤ, 契約ＩＤ, 資産番号キー) USING INDEX
)
/
