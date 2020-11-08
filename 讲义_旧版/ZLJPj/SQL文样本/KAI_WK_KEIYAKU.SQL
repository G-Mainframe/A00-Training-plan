CREATE TABLE KAI_WK_KEIYAKU
(
    契約番号                       CHAR(9) NOT NULL,
    展開連番                       NUMBER(3,0) NOT NULL,
    契約先名                       CHAR(60) NOT NULL,
    解約日年                       CHAR(4) NOT NULL,
    解約日月                       CHAR(2) NOT NULL,
    解約日日                       CHAR(2) NOT NULL,
    契約金額                       NUMBER(13,0) NOT NULL,
    リース料                       NUMBER(13,0) NOT NULL,
    支払回数                       NUMBER(3,0) NOT NULL,
    消費税等                       NUMBER(13,0) NOT NULL,
    合計                           NUMBER(13,0) NOT NULL,
    CONSTRAINT P_WK_KEIYAKU PRIMARY KEY (契約番号, 展開連番) USING INDEX
)
/
