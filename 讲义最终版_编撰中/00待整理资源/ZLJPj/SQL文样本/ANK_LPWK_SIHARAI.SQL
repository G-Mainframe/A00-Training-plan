CREATE TABLE ANK_LPWK_SIHARAI
(
    案件番号                       CHAR(10) NOT NULL,
    見積枝番                       CHAR(2) NOT NULL,
    ページ                         NUMBER(1,0) NOT NULL,
    支払連番                       NUMBER(3,0) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
    支払連番１                     NUMBER(3,0),
    支払日１                       CHAR(8),
    リース料１                     NUMBER(13,0),
    残高１                         NUMBER(13,0),
    支払連番２                     NUMBER(3,0),
    支払日２                       CHAR(8),
    リース料２                     NUMBER(13,0),
    残高２                         NUMBER(13,0),
    リース期間                     NUMBER(3,0),
    前受月数                       NUMBER(2,0),
    契約総額                       NUMBER(13,0),
    残価額                         NUMBER(13,0),
    CONSTRAINT SYS_C0022137 PRIMARY KEY (案件番号, 見積枝番, ページ, 支払連番, 端末番号) USING INDEX
)
/
