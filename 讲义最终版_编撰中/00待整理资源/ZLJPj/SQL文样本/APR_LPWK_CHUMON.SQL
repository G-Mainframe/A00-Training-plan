CREATE TABLE APR_LPWK_CHUMON
(
    リース割賦区分                 CHAR(1) NOT NULL,
    ディーラーコード               CHAR(5) NOT NULL,
    帳票作成区分                   CHAR(1) NOT NULL,
    契約番号ＦＲＯＭ               CHAR(9) NOT NULL,
    契約番号ＴＯ                   CHAR(9) NOT NULL,
    契約日                         CHAR(8) NOT NULL,
    検収予定日                     CHAR(8) NOT NULL,
    検収日                         CHAR(8) NOT NULL,
    売主名                         VARCHAR2(60) NOT NULL,
    支払条件                       VARCHAR2(40) NOT NULL,
    購入金額合計                   NUMBER(13,0) NOT NULL,
    消費税等額合計                 NUMBER(13,0) NOT NULL,
    CONSTRAINT SYS_C0022436 PRIMARY KEY (リース割賦区分, ディーラーコード) USING INDEX
)
/
