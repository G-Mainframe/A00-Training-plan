CREATE TABLE NTL_MANTSUS_CSV
(
    レコード種別                   VARCHAR2(3) NOT NULL,
    リース会社ＩＤ                 VARCHAR2(8) NOT NULL,
    契約ＩＤ                       VARCHAR2(24) NOT NULL,
    資産番号キー                   VARCHAR2(28) NOT NULL,
    送付先コード                   VARCHAR2(22),
    資産番号                       VARCHAR2(8),
    物件個数                       VARCHAR2(8),
    物件個数単位                   VARCHAR2(6),
    物件名                         VARCHAR2(82),
    物件設置場所名                 VARCHAR2(92),
    ＳＰ顧客ＩＤ                   VARCHAR2(14),
    ソート専用項目                 VARCHAR2(32),
    備忘情報                       VARCHAR2(62),
    作成ＩＤ                       VARCHAR2(12),
    作成日                         VARCHAR2(12),
    更新ＩＤ                       VARCHAR2(12),
    更新日                         VARCHAR2(12),
    CONSTRAINT SYS_C0027491 PRIMARY KEY (レコード種別, リース会社ＩＤ, 契約ＩＤ, 資産番号キー) USING INDEX
)
/
