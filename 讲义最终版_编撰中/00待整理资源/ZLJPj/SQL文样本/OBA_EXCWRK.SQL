CREATE TABLE OBA_EXCWRK
(
    契約番号                       CHAR(9) NOT NULL,
    貸借コード                     CHAR(1),
    事業所コード                   CHAR(4),
    事業所名                       VARCHAR2(20),
    ユーザーコード                 CHAR(8),
    ユーザー名                     VARCHAR2(60),
    備考                           VARCHAR2(40),
    取引日                         CHAR(8),
    開始日                         CHAR(8),
    基準日                         CHAR(8),
    債務者格付                     CHAR(4),
    債権金額                       NUMBER(13,0) NOT NULL,
    回収金額                       NUMBER(13,0) NOT NULL,
    債権残高                       NUMBER(13,0) NOT NULL,
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録者                         CHAR(4),
    変更日                         CHAR(8),
    変更時刻                       CHAR(6),
    変更者                         CHAR(4)
)
/
