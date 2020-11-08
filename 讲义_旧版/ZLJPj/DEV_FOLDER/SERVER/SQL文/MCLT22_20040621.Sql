DROP   TABLE  MCLT22   ;
CREATE TABLE  MCLT22  (
       識別                               CHAR(7)           NOT NULL,
       種別                               CHAR(1)           NOT NULL,
       ダミー００１                       CHAR(7)           NOT NULL,
       保険単価円                         NUMBER(3,0)       NOT NULL,
       ダミー００２                       CHAR(1)           NOT NULL,
       ユーザーコード１                   CHAR(8)           NOT NULL,
       ダミー００３                       CHAR(1)           NOT NULL,
       ユーザーコード２                   CHAR(8)           NOT NULL,
       ダミー００４                       CHAR(1)           NOT NULL,
       ユーザーコード３                   CHAR(8)           NOT NULL,
       ダミー００５                       CHAR(1)           NOT NULL,
       ユーザーコード４                   CHAR(8)           NOT NULL,
       ダミー００６                       CHAR(1)           NOT NULL,
       ユーザーコード５                   CHAR(8)           NOT NULL,
       ダミー００７                       CHAR(1)           NOT NULL,
       適用年月                           CHAR(5)           NOT NULL,
       再リース出力区分                   CHAR(1)           NOT NULL,
CONSTRAINT  PK_MCLT22  PRIMARY KEY (
       識別,
       種別));
