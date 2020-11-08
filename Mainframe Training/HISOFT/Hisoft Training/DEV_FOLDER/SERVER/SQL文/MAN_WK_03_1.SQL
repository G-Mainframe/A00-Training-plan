CREATE TABLE MAN_WK_03_1
(
    端末番号                       VARCHAR2(16) NOT NULL,
    契約番号                       CHAR(9) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    計算フラグ                     NUMBER(1,0) NOT NULL,
    CONSTRAINT P_MAN_WK_03_1 PRIMARY KEY (端末番号, 契約番号, 物件ＮＯ) USING INDEX
)
/
