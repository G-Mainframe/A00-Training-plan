DROP   TABLE  HSNINS   ;
CREATE TABLE  HSNINS  (
       契約番号                           CHAR(9)           NOT NULL,
       初実リース料                       NUMBER(13,0)      NOT NULL,
       初回利息                           NUMBER(13,0)      NOT NULL,
       初元本内                           NUMBER(13,0)      NOT NULL,
       初元本残                           NUMBER(13,0)      NOT NULL,
       初債権残                           NUMBER(13,0)      NOT NULL,
       初回諸費用                         NUMBER(13,0)      NOT NULL,
CONSTRAINT  PK_HSNINS  PRIMARY KEY (
       契約番号,
       初実リース料));
