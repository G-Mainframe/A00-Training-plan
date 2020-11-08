CREATE TABLE KOK_HOUMON
(
    顧客コード                     CHAR(6) NOT NULL,
    面談日                         CHAR(8) NOT NULL,
    午前午後                       CHAR(1) NOT NULL,
    取引見込み区分                 CHAR(1),
    工作方針区分                   CHAR(1),
    訪問目的区分                   CHAR(1),
    先方担当者１                   VARCHAR2(14),
    役職担当１                     VARCHAR2(14),
    先方担当者２                   VARCHAR2(14),
    役職担当２                     VARCHAR2(14),
    先方担当者３                   VARCHAR2(14),
    役職担当３                     VARCHAR2(14),
    当社面談者１                   VARCHAR2(14),
    当社面談者２                   VARCHAR2(14),
    当社面談者３                   VARCHAR2(14),
    面談内容                       VARCHAR2(2000),
    自由メモ                       VARCHAR2(100),
    訪問者名                       VARCHAR2(20),
    登録日                         CHAR(8),
    登録時刻                       CHAR(6),
    登録担当者コード               CHAR(4),
    更新日                         CHAR(8),
    更新時刻                       CHAR(6),
    更新担当者コード               CHAR(4),
    CONSTRAINT SYS_C0025895 PRIMARY KEY (顧客コード, 面談日, 午前午後) USING INDEX
)
/
