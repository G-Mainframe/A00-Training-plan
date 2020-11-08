CREATE TABLE KAI_WK_KEIYAKU2
(
    契約番号                       CHAR(9) NOT NULL,
    契約先名                       CHAR(60) NOT NULL,
    解約日年                       CHAR(4) NOT NULL,
    解約日月                       CHAR(2) NOT NULL,
    解約日日                       CHAR(2) NOT NULL,
    契約金額                       NUMBER(13,0) NOT NULL,
    リース料                       NUMBER(13,0) NOT NULL,
    消費税等１                     NUMBER(13,0) NOT NULL,
    合計１                         NUMBER(13,0) NOT NULL,
    前払リース料                   NUMBER(13,0) NOT NULL,
    前払リース料残高               NUMBER(13,0) NOT NULL,
    消費税等２                     NUMBER(13,0) NOT NULL,
    合計２                         NUMBER(13,0) NOT NULL,
    旧消費税率                     NUMBER(3,1) NOT NULL,
    新消費税率                     NUMBER(3,1) NOT NULL,
    解約前払リース料               NUMBER(13,0) NOT NULL,
    同預り消費税等                 NUMBER(13,0) NOT NULL,
    解約後前払リース料             NUMBER(13,0) NOT NULL,
    返却前払リース料               NUMBER(13,0) NOT NULL,
    CONSTRAINT P_WK_KEIYAKU2 PRIMARY KEY (契約番号) USING INDEX
)
/
