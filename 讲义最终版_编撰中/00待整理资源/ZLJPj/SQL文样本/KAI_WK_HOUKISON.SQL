CREATE TABLE KAI_WK_HOUKISON
(
    NO                             NUMBER(3,0) NOT NULL,
    実質未回収元本                 NUMBER(13,0) NOT NULL,
    未徴収TAX                      NUMBER(13,0) NOT NULL,
    未徴収保険料                   NUMBER(13,0) NOT NULL,
    合計                           NUMBER(13,0) NOT NULL,
    減額法１１０                   NUMBER(13,0) NOT NULL,
    減額法１０５                   NUMBER(13,0) NOT NULL,
    実質元本残１０５               NUMBER(13,0) NOT NULL,
    残リース料                     NUMBER(13,0) NOT NULL,
    未償却残高                     NUMBER(13,0) NOT NULL,
    契約番号                       CHAR(9) NOT NULL,
    保険価格１１０                 NUMBER(13,0) NOT NULL,
    物件NO                         CHAR(3) NOT NULL,
    実質利回り                     NUMBER(10,8) NOT NULL,
    割賦FLG                        CHAR(1) NOT NULL,
    法定定率未償却残高             NUMBER(13,0) NOT NULL,
    CONSTRAINT PK_WK_HOUKISON PRIMARY KEY (契約番号, 物件NO) USING INDEX
)
/
