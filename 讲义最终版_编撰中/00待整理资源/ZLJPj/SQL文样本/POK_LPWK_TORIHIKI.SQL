CREATE TABLE POK_LPWK_TORIHIKI
(
    契約番号                       CHAR(9) NOT NULL,
    連番                           CHAR(3) NOT NULL,
    物件名                         VARCHAR2(40),
    製造業者名                     VARCHAR2(60),
    管理ＮＯ                         CHAR(9),
    機種コード                     CHAR(15),
    機番                           CHAR(12),
    初期発注ＮＯ                   CHAR(11),
    機械代金                       NUMBER(13,0),
    月額リース料                   NUMBER(13,0),
    リース支払回数                 NUMBER(3,0),
    設置先名称                     VARCHAR2(100),
    設置先行政区分１               CHAR(2),
    設置先行政区分２               CHAR(3),
    設置先都道府県名               VARCHAR2(8),
    設置先市区町村名               VARCHAR2(22),
    設置先町域名                   VARCHAR2(74),
    設置先補助住所                 VARCHAR2(60),
    設置先電話番号                 VARCHAR2(12),
    機械分類名称                   VARCHAR2(16),
    メーカーコード                 CHAR(2),
    ビルバリ有無名称               VARCHAR2(20),
    CONSTRAINT SYS_C0028238 PRIMARY KEY (契約番号, 連番) USING INDEX
)
/
