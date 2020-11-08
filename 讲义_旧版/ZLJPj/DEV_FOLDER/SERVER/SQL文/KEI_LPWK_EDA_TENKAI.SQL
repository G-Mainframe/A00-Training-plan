CREATE TABLE KEI_LPWK_EDA_TENKAI
(
    契約番号                       CHAR(9) NOT NULL,
    連番                           NUMBER(3,0) NOT NULL,
    端末番号                       VARCHAR2(16) NOT NULL,
    月数                           NUMBER(3,0),
    リース料                       NUMBER(13,0),
    消費税等額                     NUMBER(13,0),
    合計支払額                     NUMBER(14,0),
    損害賠償金                     NUMBER(17,0),
    取引先名                       VARCHAR2(60),
    契約金額                       NUMBER(13,0),
    購入金額合計                   NUMBER(13,0),
    前渡金利息                     NUMBER(13,0),
    計算方法_規定損失金            CHAR(2),
    CONSTRAINT SYS_C0025471 PRIMARY KEY (契約番号, 連番, 端末番号) USING INDEX
)
/
