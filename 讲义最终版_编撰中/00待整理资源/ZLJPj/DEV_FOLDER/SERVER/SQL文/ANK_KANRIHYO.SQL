CREATE TABLE ANK_KANRIHYO
(
    案件番号                       CHAR(10) NOT NULL,
    見積枝番                       CHAR(2) NOT NULL,
    事業所コード                   CHAR(4) NOT NULL,
    担当者コード                   CHAR(4) NOT NULL,
    案件状況区分                   CHAR(2) NOT NULL,
    顧客コード                     CHAR(6) NOT NULL,
    取引先名                       VARCHAR2(60) NOT NULL,
    見積日                         CHAR(8) NOT NULL,
    取引形態コード                 CHAR(2) NOT NULL,
    契約金額                       NUMBER(13,0) NOT NULL,
    購入金額合計                   NUMBER(13,0) NOT NULL,
    粗利益                         NUMBER(13,0) NOT NULL,
    実質利回り                     NUMBER(10,8) NOT NULL,
    リース期間                     NUMBER(3,0) NOT NULL,
    物件名_漢字                    VARCHAR2(40) NOT NULL,
    検収予定日                     CHAR(8) NOT NULL,
    受注リース会社                 VARCHAR2(40) NOT NULL,
    他社受注利回り                 NUMBER(10,8) NOT NULL,
    ロスト理由区分                 CHAR(2) NOT NULL,
    ロスト案件満了日               CHAR(8) NOT NULL,
    ロスト理由                     VARCHAR2(100) NOT NULL,
    CONSTRAINT SYS_C0021942 PRIMARY KEY (案件番号, 見積枝番, 事業所コード) USING INDEX
)
/
