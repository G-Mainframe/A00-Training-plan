CREATE TABLE ANK_LPWK_HUBARAI
(
    案件番号                       CHAR(10) NOT NULL,
    見積枝番                       CHAR(2) NOT NULL,
    支払連番                       NUMBER(3,0) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
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
    CONSTRAINT SYS_C0022118 PRIMARY KEY (案件番号, 見積枝番, 支払連番, 端末番号) USING INDEX
)
/
