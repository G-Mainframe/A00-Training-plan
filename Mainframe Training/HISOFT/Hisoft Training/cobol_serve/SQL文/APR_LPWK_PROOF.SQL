CREATE TABLE APR_LPWK_PROOF
(
    端末番号                       VARCHAR2(16) NOT NULL,
    契約番号                       CHAR(9) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    設置場所名                     VARCHAR2(20),
    アポロ商品コード               CHAR(4),
    物件名                         VARCHAR2(30),
    解約後リース料                 NUMBER(13,0),
    CONSTRAINT SYS_C0022459 PRIMARY KEY (端末番号, 契約番号, 物件ＮＯ) USING INDEX
)
/
