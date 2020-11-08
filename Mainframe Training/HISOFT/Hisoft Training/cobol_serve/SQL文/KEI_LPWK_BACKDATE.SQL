CREATE TABLE KEI_LPWK_BACKDATE
(
    契約番号                       CHAR(9) NOT NULL,
    事業所コード                   CHAR(4),
    取引先名                       VARCHAR2(60),
    ユーザーコード                 CHAR(8),
    検収日                         CHAR(8),
    リース期間                     NUMBER(3,0),
    勘定処理コード                 CHAR(2),
    契約金額                       NUMBER(13,0),
    購入金額合計                   NUMBER(13,0),
    仕入消費税合計                 NUMBER(13,0),
    前受リース料                   NUMBER(13,0),
    充当_相殺区分                  CHAR(1),
    計算方式                       CHAR(1),
    請求サイクル                   NUMBER(2,0),
    第１回リース料入金日           CHAR(8),
    第１回リース料                 NUMBER(13,0),
    第２回リース料入金日           CHAR(8),
    第２回リース料                 NUMBER(13,0),
    ＢＥＧＩＮ回数                 CHAR(1),
    粗利益                         NUMBER(13,0),
    処理日                         CHAR(8),
    CONSTRAINT SYS_C0025460 PRIMARY KEY (契約番号) USING INDEX
)
/
