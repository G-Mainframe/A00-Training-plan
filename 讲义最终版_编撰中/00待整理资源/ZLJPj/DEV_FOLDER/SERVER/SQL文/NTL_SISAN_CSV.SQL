CREATE TABLE NTL_SISAN_CSV
(
    レコード種別                   VARCHAR2(3) NOT NULL,
    リース会社ＩＤ                 VARCHAR2(8) NOT NULL,
    契約ＩＤ                       VARCHAR2(24) NOT NULL,
    資産番号                       VARCHAR2(8) NOT NULL,
    物件個数                       VARCHAR2(8),
    物件個数単位                   VARCHAR2(6),
    物件名                         VARCHAR2(82),
    物件設置場所名                 VARCHAR2(92),
    ＳＰ顧客ＩＤ                   VARCHAR2(14),
    平均月額リース料               VARCHAR2(15),
    次回約定回収額                 VARCHAR2(14),
    物件備忘情報                   VARCHAR2(62),
    画面用備忘情報                 VARCHAR2(62),
    ソート専用項目                 VARCHAR2(32),
    作成ＩＤ                       VARCHAR2(12),
    作成日                         VARCHAR2(12),
    更新ＩＤ                       VARCHAR2(12),
    更新日                         VARCHAR2(12),
    CONSTRAINT SYS_C0027506 PRIMARY KEY (レコード種別, リース会社ＩＤ, 契約ＩＤ, 資産番号) USING INDEX
)
/
