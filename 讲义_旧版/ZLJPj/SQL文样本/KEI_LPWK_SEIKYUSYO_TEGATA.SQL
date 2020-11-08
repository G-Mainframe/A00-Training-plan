CREATE TABLE KEI_LPWK_SEIKYUSYO_TEGATA
(
    契約番号                       CHAR(9) NOT NULL,
    連番                           CHAR(3) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
    リース料                       NUMBER(13,0) NOT NULL,
    回数                           NUMBER(3,0) NOT NULL,
    消費税徴収区分                 CHAR(1) NOT NULL,
    勘定処理コード                 CHAR(2) NOT NULL,
    購入金額合計                   NUMBER(13,0) NOT NULL,
    動総保険料合計                 NUMBER(13,0) NOT NULL,
    契約金額                       NUMBER(13,0) NOT NULL,
    消費税率                       NUMBER(3,1) NOT NULL,
    請求区分１                     CHAR(1) NOT NULL,
    請求区分２                     CHAR(1) NOT NULL,
    手形枚数                       NUMBER(3,0) NOT NULL,
    CONSTRAINT SYS_C0025576 PRIMARY KEY (契約番号, 連番, 端末番号) USING INDEX
)
/
