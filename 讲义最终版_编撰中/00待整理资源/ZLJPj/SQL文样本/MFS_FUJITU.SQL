CREATE TABLE MFS_FUJITU
(
    処理通番                       CHAR(4),
    請求先コード                   CHAR(8) NOT NULL,
    銀行名                         CHAR(15),
    支店名                         CHAR(15),
    銀行コード                     CHAR(4) NOT NULL,
    支店コード                     CHAR(3) NOT NULL,
    預金種類                       CHAR(1) NOT NULL,
    口座番号                       CHAR(7) NOT NULL,
    口座名義人名                   CHAR(30) NOT NULL,
    請求金額                       NUMBER(10,0) NOT NULL,
    契約番号                       CHAR(9),
    台数                           NUMBER(4,0),
    ダミー１                       CHAR(4),
    ダミー２                       CHAR(4)
)
/
