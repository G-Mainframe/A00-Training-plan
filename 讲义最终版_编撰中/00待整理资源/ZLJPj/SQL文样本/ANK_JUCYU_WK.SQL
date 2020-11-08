CREATE TABLE ANK_JUCYU_WK
(
    契約番号                       CHAR(9) NOT NULL,
    作業者                         CHAR(16) NOT NULL,
    事業所コード                   CHAR(4) NOT NULL,
    担当者コード                   CHAR(4) NOT NULL,
    顧客コード                     CHAR(6) NOT NULL,
    取引先名                       VARCHAR2(60) NOT NULL,
    契約日                         CHAR(8) NOT NULL,
    取引形態コード                 CHAR(2) NOT NULL,
    契約金額                       NUMBER(13,0) NOT NULL,
    購入金額合計                   NUMBER(13,0) NOT NULL,
    粗利益                         NUMBER(13,0) NOT NULL,
    実質利回り                     NUMBER(10,8) NOT NULL,
    リース期間                     NUMBER(3,0) NOT NULL,
    物件名_漢字                    VARCHAR2(40) NOT NULL,
    検収予定日                     CHAR(8) NOT NULL,
    ディーラーコード               CHAR(5) NOT NULL,
    購入先名                       VARCHAR2(60) NOT NULL,
    CONSTRAINT SYS_C0021892 PRIMARY KEY (契約番号, 作業者) USING INDEX
)
/
