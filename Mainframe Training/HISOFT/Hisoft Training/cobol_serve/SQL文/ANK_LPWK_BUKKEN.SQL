CREATE TABLE ANK_LPWK_BUKKEN
(
    案件番号                       CHAR(10) NOT NULL,
    見積枝番                       CHAR(2) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
    購入金額                       NUMBER(13,0),
    物件名_漢字                    VARCHAR2(40),
    数量                           NUMBER(4,0),
    単位                           CHAR(2),
    耐用年数                       NUMBER(2,0),
    固定資産税率                   NUMBER(4,2),
    固定資産税額                   NUMBER(13,0),
    動総保険料率                   NUMBER(5,3),
    動総保険料                     NUMBER(13,0),
    残価額                         NUMBER(13,0),
    基本リース料                   NUMBER(13,0),
    個別リース料                   NUMBER(13,0),
    リース料率                     NUMBER(10,8),
    CONSTRAINT SYS_C0022113 PRIMARY KEY (案件番号, 見積枝番, 物件ＮＯ, 端末番号) USING INDEX
)
/
