CREATE TABLE LEA_WORK04
(
    KEY                            CHAR(1) NOT NULL,
    支払連番                       NUMBER(3,0),
    元本                           NUMBER(13,0),
    賦金                           NUMBER(13,0),
    諸費用                         NUMBER(13,0),
    利息                           NUMBER(13,0),
    元本内入                       NUMBER(13,0),
    一括弁済金                     NUMBER(13,0),
    固定資産税月額                 NUMBER(13,0),
    動総保険月額                   NUMBER(13,0),
    リース期間                     NUMBER(3,0),
    据置月数                       NUMBER(4,2),
    契約総額                       NUMBER(13,0),
    購入金額                       NUMBER(13,0),
    残価額                         NUMBER(13,0),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0026374 PRIMARY KEY (KEY) USING INDEX
)
/
