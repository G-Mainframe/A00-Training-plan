CREATE TABLE KAI_SAIMEI
(
    契約番号                       CHAR(9) NOT NULL,
    物件NO                         CHAR(3) NOT NULL,
    ＳＦＣ解約処理                 CHAR(1) NOT NULL,
    規損金消費税率                 NUMBER(3,1) NOT NULL,
    残価額                         NUMBER(13,0) NOT NULL,
    個別リース料                   NUMBER(13,0) NOT NULL,
    購入金額                       NUMBER(13,0) NOT NULL,
    数量                           NUMBER(4,0) NOT NULL,
    資産処分コード                 CHAR(1) NOT NULL,
    規定損失金額                   NUMBER(13,0) NOT NULL,
    売却金額                       NUMBER(13,0) NOT NULL,
    売却先名カナ                   CHAR(30) NOT NULL,
    引取費用                       NUMBER(13,0) NOT NULL,
    売却金額入金予定日             CHAR(8) NOT NULL,
    売却金額入金先コード           CHAR(8) NOT NULL,
    登録日                         CHAR(8) NOT NULL,
    登録時刻                       CHAR(6) NOT NULL,
    登録担当者コード               CHAR(4) NOT NULL,
    更新日                         CHAR(8) NOT NULL,
    更新時刻                       CHAR(6) NOT NULL,
    更新担当者コード               CHAR(4) NOT NULL,
    CONSTRAINT PK_KAI_SAIMEI PRIMARY KEY (契約番号, 物件NO) USING INDEX
)
/
