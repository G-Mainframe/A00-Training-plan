CREATE TABLE KEI_LPWK_RINGI_MEISAI
(
    契約番号                       CHAR(9) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    ＷＫ連番                       NUMBER(5,0) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
    購入先識別ＮＯ                 CHAR(1),
    物件名_漢字                    VARCHAR2(40),
    製造業者                       VARCHAR2(60),
    数量                           NUMBER(4,0),
    購入金額                       NUMBER(13,0),
    資産コード                     CHAR(7),
    耐用年数                       NUMBER(2,0),
    信用保険コード                 CHAR(6),
    残価額                         NUMBER(13,0),
    残価保証先名                   VARCHAR2(60),
    設置場所名_漢字                VARCHAR2(40),
    設置場所住所                   VARCHAR2(100),
    資産マスタ資産名               VARCHAR2(30),
    購入先名                       VARCHAR2(60),
    取引先名                       VARCHAR2(60),
    契約日                         CHAR(8),
    CONSTRAINT SYS_C0025557 PRIMARY KEY (契約番号, 物件ＮＯ, ＷＫ連番, 端末番号) USING INDEX
)
/
