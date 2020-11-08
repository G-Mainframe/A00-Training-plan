CREATE TABLE MAN_WK_SEIKYU
(
    端末番号                       VARCHAR2(16) NOT NULL,
    請求先コード                   CHAR(8) NOT NULL,
    取引先名漢字                   VARCHAR2(60),
    取引先名カナ                   VARCHAR2(30),
    請求先部門名                   VARCHAR2(40),
    CONSTRAINT P_MAN_WK_SEIKYU PRIMARY KEY (端末番号, 請求先コード) USING INDEX
)
/
