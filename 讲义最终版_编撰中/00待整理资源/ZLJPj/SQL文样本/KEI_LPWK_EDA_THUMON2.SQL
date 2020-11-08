CREATE TABLE KEI_LPWK_EDA_THUMON2
(
    契約番号                       CHAR(9) NOT NULL,
    ディーラーコード               CHAR(5) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
    番号                           NUMBER(3,0) NOT NULL,
    事業所コード                   CHAR(4),
    取引先名                       VARCHAR2(60),
    契約日                         CHAR(8),
    検収予定日                     CHAR(8),
    充当_相殺区分                  CHAR(1),
    前渡金区分                     CHAR(1),
    購入先名                       VARCHAR2(60),
    購入先住所                     VARCHAR2(100),
    購入金額合計                   NUMBER(13,0),
    仕入消費税等額                 NUMBER(13,0),
    都道府県                       VARCHAR2(10),
    住所１                         VARCHAR2(40),
    住所２                         VARCHAR2(40),
    CONSTRAINT SYS_C0025481 PRIMARY KEY (契約番号, ディーラーコード, 端末番号, 番号) USING INDEX
)
/
