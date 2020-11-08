CREATE TABLE IBS_FINANCE
(
    契約ＮＯ                         CHAR(9) DEFAULT ' ' NOT NULL,
    連番                           NUMBER(3,0) DEFAULT 0 NOT NULL,
    計算日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    日数                           NUMBER(4,0) DEFAULT 0 NOT NULL,
    回収日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    ＴＴＭ                         NUMBER(6,2) DEFAULT 0 NOT NULL,
    調達金利                       NUMBER(12,8) DEFAULT 0 NOT NULL,
    運用金利                       NUMBER(12,8) DEFAULT 0 NOT NULL,
    元本内入                       NUMBER(16,2) DEFAULT 0 NOT NULL,
    利息                           NUMBER(16,2) DEFAULT 0 NOT NULL,
    その他                         NUMBER(16,2) DEFAULT 0 NOT NULL,
    回収額                         NUMBER(16,2) DEFAULT 0 NOT NULL,
    元本残高                       NUMBER(16,2) DEFAULT 0 NOT NULL,
    未実現利益                     NUMBER(16,2) DEFAULT 0 NOT NULL,
    未実現利益差額累計             NUMBER(16,2) DEFAULT 0 NOT NULL,
    備考                           VARCHAR2(20) DEFAULT ' ' NOT NULL,
    登録日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    登録時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    登録担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    更新日                         CHAR(8) DEFAULT '00000000' NOT NULL,
    更新時刻                       CHAR(6) DEFAULT '000000' NOT NULL,
    更新担当者コード               CHAR(4) DEFAULT '0000' NOT NULL,
    CONSTRAINT PKEY_IBS_FINANCE PRIMARY KEY (契約ＮＯ, 連番) USING INDEX
)
/
