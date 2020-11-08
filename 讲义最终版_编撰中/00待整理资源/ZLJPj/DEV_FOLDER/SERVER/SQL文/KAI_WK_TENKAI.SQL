CREATE TABLE KAI_WK_TENKAI
(
    契約番号                       CHAR(9) NOT NULL,
    展開番号                       NUMBER(3,0) NOT NULL,
    リース料                       NUMBER(13,0) NOT NULL,
    回数                           NUMBER(13,0) NOT NULL,
    消費税等額                     NUMBER(13,0) NOT NULL,
    合計                           NUMBER(13,0) NOT NULL,
    CONSTRAINT PK__WK_TENKAI PRIMARY KEY (契約番号, 展開番号) USING INDEX
)
/
