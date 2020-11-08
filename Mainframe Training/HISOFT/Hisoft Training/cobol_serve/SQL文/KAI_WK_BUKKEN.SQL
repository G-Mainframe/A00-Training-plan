CREATE TABLE KAI_WK_BUKKEN
(
    契約番号                       CHAR(9) NOT NULL,
    物件番号                       CHAR(3) NOT NULL,
    設置場所名                     CHAR(40),
    物件名                         CHAR(40),
    物件処分方法                   CHAR(50) NOT NULL,
    リース料                       NUMBER(13,0) NOT NULL,
    リース料消費税                 NUMBER(13,0) NOT NULL,
    前払リース料                   NUMBER(13,0) NOT NULL,
    前払消費税                     NUMBER(13,0) NOT NULL,
    物件金額                       NUMBER(13,0) NOT NULL,
    物件消費税                     NUMBER(13,0) NOT NULL,
    特約                           VARCHAR2(600) NOT NULL,
    連番                           NUMBER(3,0) NOT NULL,
    直転区分                       CHAR(1) NOT NULL,
    CONSTRAINT P_KAI_BUKKEN PRIMARY KEY (契約番号, 物件番号, 連番) USING INDEX
)
/
