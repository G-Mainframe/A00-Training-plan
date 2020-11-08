CREATE TABLE MAN_WK_KALPIS_KAISHI
(
    契約番号                       CHAR(9) NOT NULL,
    物件ＮＯ                       CHAR(3) NOT NULL,
    リース終了日                   CHAR(8) NOT NULL,
    再リース開始日                 CHAR(8) NOT NULL,
    CONSTRAINT P_MAN_WK_KALPIS_KAISHI PRIMARY KEY (契約番号, 物件ＮＯ) USING INDEX
)
/
