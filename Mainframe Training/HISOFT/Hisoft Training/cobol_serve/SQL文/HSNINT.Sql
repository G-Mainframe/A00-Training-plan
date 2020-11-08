DROP   TABLE  HSNINT   ;
CREATE TABLE  HSNINT  (
       契約番号                           CHAR(9)           NOT NULL,
       展開年月                           CHAR(6)           NOT NULL,
       支払回数                           CHAR(4)           NOT NULL,
       実リース料                         NUMBER(13,0)      NOT NULL,
       利息                               NUMBER(13,0)      NOT NULL,
       元本内入れ                         NUMBER(13,0)      NOT NULL,
       元本残                             NUMBER(13,0)      NOT NULL,
       債権残                             NUMBER(13,0)      NOT NULL,
       諸費用                             NUMBER(13,0)      NOT NULL,
       計算パターン                       CHAR(1)           NOT NULL,
       計上パターン                       CHAR(1)           NOT NULL,
       経過月数                           CHAR(3)           NOT NULL,
       リース利用１２                     NUMBER(13,0)      NOT NULL,
       リース利用３                       NUMBER(13,0)      NOT NULL,
       利息１２                           NUMBER(13,0)      NOT NULL,
       利息３                             NUMBER(13,0)      NOT NULL,
       費用１２                           NUMBER(13,0)      NOT NULL,
       費用３                             NUMBER(13,0)      NOT NULL,
CONSTRAINT  PK_HSNINT  PRIMARY KEY (
       契約番号,
       展開年月));
