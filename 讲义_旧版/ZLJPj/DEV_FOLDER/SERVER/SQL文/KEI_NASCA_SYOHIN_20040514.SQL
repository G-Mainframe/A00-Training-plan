CREATE TABLE KEI_NASCA_SYOHIN
(
    機械番号                       VARCHAR2(10) NOT NULL,
    物件名_カナ                    VARCHAR2(20) NOT NULL,
    資産コード                     CHAR(7) NOT NULL,
    CONSTRAINT SYS_C0025658 PRIMARY KEY (機械番号) USING INDEX
)
/
