CREATE TABLE KOK_SIHARAI_H
(
    支払先コード                   CHAR(4) NOT NULL,
    処理区分                       CHAR(1),
    支払先名                       VARCHAR2(56) NOT NULL,
    口座名義人                     VARCHAR2(56),
    銀行コード                     CHAR(4),
    支店コード                     CHAR(3),
    預金種類                       CHAR(1),
    口座番号                       CHAR(7),
    登録番号                       CHAR(4),
    手形名宛人                     VARCHAR2(56),
    郵便番号                       CHAR(7),
    郵送先住所１                   VARCHAR2(34),
    郵送先住所２                   VARCHAR2(32),
    郵送先住所３                   VARCHAR2(32),
    郵送先名１                     VARCHAR2(28),
    郵送先名２                     VARCHAR2(28),
    休日対応区分                   CHAR(1),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    手数料有無                     CHAR(1),
    更新標識                       CHAR(1)
)
/
CREATE UNIQUE INDEX KOK_SIHARAI_H
ON KOK_SIHARAI_H
(支払先コード)
/
