CREATE TABLE MAN_WK_APL_SEIKYU
(
    キー                           CHAR(16) NOT NULL,
    契約番号                       CHAR(9) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    請求日                         CHAR(8) NOT NULL,
    再リース料                     NUMBER(13,0) NOT NULL,
    再リース料＿消費税額           NUMBER(13,0) NOT NULL,
    売却金額                       NUMBER(13,0) NOT NULL,
    売却金額＿消費税額             NUMBER(13,0) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT P_MAN_WK_APL_SEIKYU PRIMARY KEY (キー, 契約番号, 物件ＮＯ) USING INDEX
)
/
